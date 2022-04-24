package pl.pospieszny.divingapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.pospieszny.divingapp.entity.Diver;
import pl.pospieszny.divingapp.service.DiverService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/admin/divers")
public class DiverController {

    private final DiverService diverService;

    public DiverController(DiverService diverService) {
        this.diverService = diverService;
    }

    @GetMapping("/list")
    public String showAllDivers(Model model) {
        List<Diver> divers = diverService.getAllDivers();
        model.addAttribute("divers",divers);
        return "divers/list";
    }

    @GetMapping("/add")
    public String openAddForm(Model model) {
        model.addAttribute("diver",new Diver());
        return "divers/addForm";
    }

    @PostMapping("/add")
    public String addDiver(@Valid Diver diver, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "divers/addForm";
        }
        diverService.add(diver);
        return "redirect:/admin/divers/list";
    }

    @GetMapping("/edit/{id}")
    public String openEditForm(@PathVariable Long id, Model model) {
        model.addAttribute("diver",diverService.get(id));
        return "divers/editForm";
    }

    @PostMapping("/update")
    public String editDiver(@Valid Diver diver, BindingResult result, Model model) {
        if(result.hasErrors()) {
            return "divers/editForm";
        }
        diverService.update(diver);
        return "redirect:/admin/divers/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteDiver(@PathVariable Long id) {
        diverService.delete(id);
        return "redirect:/admin/divers/list";
    }

    @GetMapping("/details/{id}")
    public String getDiverDetails(@PathVariable Long id, Model model) {
        model.addAttribute("diver",diverService.get(id).get());
        return "divers/details";
    }

}
