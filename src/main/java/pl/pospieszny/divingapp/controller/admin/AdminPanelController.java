package pl.pospieszny.divingapp.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.pospieszny.divingapp.entity.Diver;
import pl.pospieszny.divingapp.service.DiveService;
import pl.pospieszny.divingapp.service.DiverService;
import pl.pospieszny.divingapp.service.LocationService;
import pl.pospieszny.divingapp.utils.PasswordUtil;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/admin")
public class AdminPanelController {

    private final DiveService diveService;
    private final DiverService diverService;
    private final LocationService locationService;

    public AdminPanelController(DiveService diveService, DiverService diverService, LocationService locationService) {
        this.diveService = diveService;
        this.diverService = diverService;
        this.locationService = locationService;
    }

    @GetMapping("")
    public String adminPanel(Model model) {
        model.addAttribute("allDives",diveService.countAllDives());
        model.addAttribute("totalUnderwaterTime",diveService.getTotalUnderwaterTime());
        model.addAttribute("allDivers",diverService.countAllDivers());
        model.addAttribute("allLocations",locationService.countAllLocations());
        return "web/admin";
    }

    @GetMapping("/changePassword/{id}")
    public String changePassword(@PathVariable Long id, Model model) {
        model.addAttribute("diver",diverService.get(id).get());
        return "adminView/changePassword";
    }

    @PostMapping("/updatePassword")
    public String edit(HttpServletRequest request) {
        Diver diver = (Diver) request.getSession().getAttribute("user");
        String oldPassword = request.getParameter("oldPassword");
        String password = request.getParameter("password");
        String password2 = request.getParameter("password2");
        if(oldPassword.isBlank() || password.isBlank() || password2.isBlank()) {
            request.setAttribute("wrong",true);
            return "adminView/changePassword";
        } else if(password.equals(password2) && PasswordUtil.checkPassword(oldPassword,diver.getPassword())) {
            diver.setPassword(password);
            diverService.update(diver);
            return "redirect:/admin";
        } else {
            request.setAttribute("wrong",true);
            return "adminView/changePassword";
        }
    }

    @GetMapping("/details/update/{id}")
    public String editUserDetailsForm(@PathVariable Long id, Model model) {
        model.addAttribute("diver",diverService.get(id));
        return "adminView/updateAdminDetails";
    }

    @PostMapping("/details/update")
    public String editUserDetails(HttpServletRequest request) {
        Diver diver = (Diver) request.getSession().getAttribute("user");
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        diver.setName(name);
        diver.setSurname(surname);
        diverService.update(diver);
        return "redirect:/admin";
    }
}
