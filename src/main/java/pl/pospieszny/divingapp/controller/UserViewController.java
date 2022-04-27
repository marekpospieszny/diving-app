package pl.pospieszny.divingapp.controller;

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

    @GetMapping("")
    public String userHomepage(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        Diver diver = (Diver) session.getAttribute("diver");
        model.addAttribute("diver",diver);
        return "users/mainView";
    }

    @GetMapping("/details/{id}")
    public String details(@PathVariable Long id, Model model) {
        model.addAttribute("diver",diverService.get(id).get());
        return "users/details";
    }

    @GetMapping("/changePassword/{id}")
    public String editForm(@PathVariable Long id, Model model) {
        model.addAttribute("diver",diverService.get(id).get());
        return "users/changePassword";
    }

    @PostMapping("/update")
    public String edit(@Valid Diver diver, BindingResult result, Model model) {
        if(result.hasErrors()) {
            return "changePassword";
        }
        diverService.update(diver);
        return "redirect:/app";
    }

    @GetMapping("/divelist/{id}")
    public String diveList(@PathVariable Long id, Model model) {
        model.addAttribute("dives",diveService.getByDiverId(id));
        model.addAttribute("diver",diverService.get(id).get());
        return "users/diveList";
    }

    @GetMapping("/locations")
    public String locations(Model model) {
        model.addAttribute("locations",locationService.getAllLocations());
        return "users/locationsList";
    }

    @GetMapping("/add/dive/{id}")
    public String addForm(@PathVariable Long id, Model model) {
        model.addAttribute("divers",diverService.getAllDiversExcludingIndicatedId(id));
        model.addAttribute("locations",locationService.getAllLocations());
        model.addAttribute("diver",diverService.get(id).get());
        model.addAttribute("dive",new Dive());
        return "users/addForm";
    }

    @PostMapping("/add/dive/{id}")
    public String addDive(@Valid Dive dive, BindingResult result, Model model, @PathVariable Long id) {
        if(result.hasErrors()) {
            model.addAttribute("divers",diverService.getAllDivers());
            model.addAttribute("locations",locationService.getAllLocations());
            model.addAttribute("diver",diverService.get(id).get());
            return "users/addForm";
        }
        diveService.add(dive);
        return "redirect:/app/";
    }

    @GetMapping("/locations/details/{id}")
    public String locationDetails(@PathVariable Long id, Model model) {
        model.addAttribute("location",locationService.get(id).get());
        return "users/locationDetails";
    }

    
}
