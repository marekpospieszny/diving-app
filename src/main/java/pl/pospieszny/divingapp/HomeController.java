package pl.pospieszny.divingapp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.pospieszny.divingapp.entity.Diver;
import pl.pospieszny.divingapp.service.DiverService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Optional;

@Controller
public class HomeController {

    private final DiverService diverService;

    public HomeController(DiverService diverService) {
        this.diverService = diverService;
    }

    @RequestMapping("/")
    public String home() {
        return "web/home";
    }

    @GetMapping("/admin")
    public String adminPanel() {
        return "web/admin";
    }

    @GetMapping("/login")
    public String loginPage() {
        return "web/login";
    }

    @PostMapping("/login")
    public String login(HttpServletRequest request) {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Diver diver = diverService.getByEmail(email);
        HttpSession session = request.getSession();
        if(diver != null) {
            if (diver.getEmail().equals(email) && diver.getPassword().equals(password)) {
                session.setAttribute("diver",diver);
                return "redirect:/app";
            } else {
                return "redirect:/login";
            }
        }
        return "redirect:/login";
    }

    @GetMapping("/register")
    public String register() {
        return "web/register";
    }

}
