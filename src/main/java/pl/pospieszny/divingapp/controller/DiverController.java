package pl.pospieszny.divingapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.pospieszny.divingapp.entity.Diver;
import pl.pospieszny.divingapp.service.DiverService;

import java.util.List;

@Controller
@RequestMapping("/diver")
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
}
