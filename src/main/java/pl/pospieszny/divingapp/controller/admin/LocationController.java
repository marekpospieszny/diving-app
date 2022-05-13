package pl.pospieszny.divingapp.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.pospieszny.divingapp.entity.Location;
import pl.pospieszny.divingapp.service.LocationService;

import javax.validation.Valid;

@Controller
@RequestMapping("/admin/locations")
public class LocationController {

    private final LocationService locationService;

    public LocationController(LocationService locationService) {
        this.locationService = locationService;
    }

    @GetMapping("/list")
    public String getAllLocations(Model model) {
        model.addAttribute("locations", locationService.getAllActiveLocations());
        return "locations/list";
    }

    @GetMapping("/add")
    public String openAddForm(Model model) {
        model.addAttribute("location", new Location());
        return "locations/addForm";
    }

    @PostMapping("/add")
    public String addLocation(@Valid Location location, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "locations/addForm";
        }
        locationService.add(location);
        return "redirect:/admin/locations/list";
    }

    @GetMapping("/edit/{id}")
    public String openEditForm(@PathVariable Long id, Model model) {
        model.addAttribute("location", locationService.get(id));
        return "locations/editForm";
    }

    @PostMapping("/update")
    public String editLocation(@Valid Location location, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "locations/editForm";
        }
        locationService.update(location);
        return "redirect:/admin/locations/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteLocation(@PathVariable Long id) {
//        locationService.delete(id);
        locationService.deactivate(id);
        return "redirect:/admin/locations/list";
    }

    @GetMapping("/details/{id}")
    public String locationDetails(@PathVariable Long id, Model model) {
        model.addAttribute("location", locationService.get(id).get());
        return "locations/details";
    }

}
