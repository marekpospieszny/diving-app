package pl.pospieszny.divingapp.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.pospieszny.divingapp.entity.Diver;
import pl.pospieszny.divingapp.service.DiveService;
import pl.pospieszny.divingapp.service.DiverService;
import pl.pospieszny.divingapp.service.LocationService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
}
