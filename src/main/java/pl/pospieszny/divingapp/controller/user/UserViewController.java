package pl.pospieszny.divingapp.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.pospieszny.divingapp.entity.Dive;
import pl.pospieszny.divingapp.entity.Diver;
import pl.pospieszny.divingapp.service.DiveService;
import pl.pospieszny.divingapp.service.DiverService;
import pl.pospieszny.divingapp.service.LocationService;
import pl.pospieszny.divingapp.utils.PasswordUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
@RequestMapping("/app")
public class UserViewController {

    private final DiverService diverService;
    private final DiveService diveService;
    private final LocationService locationService;

    public UserViewController(DiverService diverService, DiveService diveService, LocationService locationService) {
        this.diverService = diverService;
        this.diveService = diveService;
        this.locationService = locationService;
    }

    @GetMapping("/")
    public String userHomepage(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        Diver diver = (Diver) session.getAttribute("user");
        model.addAttribute("diver", diver);
        model.addAttribute("allDives", diveService.countDivesByDiverId(diver.getId()));
        model.addAttribute("underwaterTime", diveService.getTotalUnderwaterTimeByDiverId(diver.getId()));
        model.addAttribute("maxDepth", diveService.getMaxDepthReachedByDiverId(diver.getId()));
        model.addAttribute("avgRating", diveService.getAvgDivesRatingByDiverId(diver.getId()));
        return "web/user";
    }

    @GetMapping("/details/{id}")
    public String details(@PathVariable Long id, Model model) {
        model.addAttribute("diver", diverService.get(id).get());
        return "usersView/details";
    }

    @GetMapping("/details/update/{id}")
    public String editUserDetailsForm(@PathVariable Long id, Model model) {
        model.addAttribute("diver", diverService.get(id));
        return "usersView/updateUserDetails";
    }

    @PostMapping("/details/update")
    public String editUserDetails(HttpServletRequest request, Model model) {
        Diver diver = (Diver) request.getSession().getAttribute("user");
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        if (name.isBlank() || surname.isBlank()) {
            model.addAttribute("diver", diverService.get(diver.getId()));
            request.setAttribute("blank", true);
            return "usersView/updateUserDetails";
        }
        diver.setName(name);
        diver.setSurname(surname);
        diverService.update(diver);
        return "redirect:/app/";
    }

    @GetMapping("/changePassword/{id}")
    public String changePassword(@PathVariable Long id, Model model) {
        model.addAttribute("diver", diverService.get(id).get());
        return "usersView/changePassword";
    }

    @PostMapping("/updatePassword")
    public String edit(HttpServletRequest request) {
        Diver diver = (Diver) request.getSession().getAttribute("user");
        String oldPassword = request.getParameter("oldPassword");
        String password = request.getParameter("password");
        String password2 = request.getParameter("password2");
        if (oldPassword.isBlank() || password.isBlank() || password2.isBlank()) {
            request.setAttribute("wrong", true);
            return "usersView/changePassword";
        } else if (password.equals(password2) && PasswordUtil.checkPassword(oldPassword, diver.getPassword())) {
            diver.setPassword(password);
            diverService.update(diver);
            return "redirect:/app/";
        } else {
            request.setAttribute("wrong", true);
            return "usersView/changePassword";
        }
    }

    @GetMapping("/divelist/{id}")
    public String diveList(@PathVariable Long id, Model model) {
        model.addAttribute("dives", diveService.getByDiverId(id));
        model.addAttribute("diver", diverService.get(id).get());
        return "usersView/diveList";
    }

    @GetMapping("/locations")
    public String locations(Model model) {
        model.addAttribute("locations", locationService.getAllActiveLocations());
        return "usersView/locationsList";
    }

    @GetMapping("/add/dive/{id}")
    public String addForm(@PathVariable Long id, Model model) {
        model.addAttribute("divers", diverService.getAllDiversExcludingIndicatedId(id));
        model.addAttribute("locations", locationService.getAllActiveLocations());
        model.addAttribute("diver", diverService.get(id).get());
        model.addAttribute("dive", new Dive());
        return "usersView/addForm";
    }

    @PostMapping("/add/dive/{id}")
    public String addDive(@Valid Dive dive, BindingResult result, Model model, @PathVariable Long id) {
        if (result.hasErrors()) {
            model.addAttribute("divers", diverService.getAllDiversExcludingIndicatedId(id));
            model.addAttribute("locations", locationService.getAllActiveLocations());
            model.addAttribute("diver", diverService.get(id).get());
            return "usersView/addForm";
        }
        diveService.add(dive);
        return "redirect:/app/divelist/" + id;
    }

    @GetMapping("/locations/details/{id}")
    public String locationDetails(@PathVariable Long id, Model model) {
        model.addAttribute("location", locationService.get(id).get());
        return "usersView/locationDetails";
    }

    @GetMapping("/dive/details/{id}")
    public String getDiveDetails(@PathVariable Long id, Model model) {
        model.addAttribute("dive", diveService.get(id).get());
        return "usersView/diveDetails";
    }

    @GetMapping("/dive/delete/{id}")
    public String deleteDive(@PathVariable Long id, HttpServletRequest request) {
        Diver currentUser = (Diver) request.getSession().getAttribute("user");
        diveService.delete(id);
        return "redirect:/app/divelist/" + currentUser.getId();
    }

    @GetMapping("/dive/edit/{id}")
    public String diveEditForm(@PathVariable Long id, Model model, HttpServletRequest request) {
        Diver currentUser = (Diver) request.getSession().getAttribute("user");
        model.addAttribute("divers", diverService.getAllDiversExcludingIndicatedId(currentUser.getId()));
        model.addAttribute("locations", locationService.getAllLocations());
        model.addAttribute("diver", diveService.get(id).get().getDiver());
        model.addAttribute("dive", diveService.get(id));
        return "usersView/editForm";
    }

    @PostMapping("/dive/update/{id}")
    public String diveUpdate(@Valid Dive dive, BindingResult result, Model model, @PathVariable Long id, HttpServletRequest request) {
        if (result.hasErrors()) {
            model.addAttribute("divers", diverService.getAllDiversExcludingIndicatedId(id));
            model.addAttribute("locations", locationService.getAllLocations());
            model.addAttribute("diver", diverService.get(id).get());
            return "usersView/editForm";
        }
        Diver currentUser = (Diver) request.getSession().getAttribute("user");
        diveService.update(dive);
        return "redirect:/app/divelist/" + currentUser.getId();
    }
}