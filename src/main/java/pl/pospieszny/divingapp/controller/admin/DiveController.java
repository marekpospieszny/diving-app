package pl.pospieszny.divingapp.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.pospieszny.divingapp.entity.Dive;
import pl.pospieszny.divingapp.service.DiveService;
import pl.pospieszny.divingapp.service.DiverService;
import pl.pospieszny.divingapp.service.LocationService;

import javax.validation.Valid;

@Controller
@RequestMapping("/admin/dives")
public class DiveController {

    private final DiveService diveService;
    private final DiverService diverService;
    private final LocationService locationService;

    public DiveController(DiveService diveService, DiverService diverService, LocationService locationService) {
        this.diveService = diveService;
        this.diverService = diverService;
        this.locationService = locationService;
    }

    @GetMapping("/list")
    public String showAllDives(Model model) {
        model.addAttribute("dives", diveService.getAllDives());
        return "dives/list";
    }

    @GetMapping("/add")
    public String addDiveForm(Model model) {
        model.addAttribute("divers", diverService.getAllActiveDivers());
        model.addAttribute("locations", locationService.getAllLocations());
        model.addAttribute("dive", new Dive());
        return "dives/addForm";
    }

    @PostMapping("/add")
    public String addDive(@Valid Dive dive, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("divers", diverService.getAllActiveDivers());
            model.addAttribute("locations", locationService.getAllLocations());
            model.addAttribute("error", dive.getDate());
            return "dives/addForm";
        }
        diveService.add(dive);
        return "redirect:/admin/dives/list";
    }

    @GetMapping("/edit/{id}")
    public String openEditForm(@PathVariable Long id, Model model) {
        model.addAttribute("divers", diverService.getAllActiveDivers());
        model.addAttribute("locations", locationService.getAllLocations());
        model.addAttribute("dive", diveService.get(id));
        return "dives/editForm";
    }

    @PostMapping("/update")
    public String editDive(@Valid Dive dive, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("divers", diverService.getAllActiveDivers());
            model.addAttribute("locations", locationService.getAllLocations());
            return "dives/editForm";
        }
        diveService.update(dive);
        return "redirect:/admin/dives/list";
    }

    @GetMapping("/details/{id}")
    public String getDiveDetails(@PathVariable Long id, Model model) {
        model.addAttribute("divers", diverService.getAllActiveDivers());
        model.addAttribute("locations", locationService.getAllLocations());
        model.addAttribute("dive", diveService.get(id).get());
        return "dives/details";
    }

    @GetMapping("/delete/{id}")
    public String deleteDive(@PathVariable Long id) {
        diveService.delete(id);
        return "redirect:/admin/dives/list";
    }

}
