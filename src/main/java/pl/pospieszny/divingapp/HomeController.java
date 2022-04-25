package pl.pospieszny.divingapp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home() {
        return "web/home";
    }

    @GetMapping("/admin")
    public String adminPanel() {
        return "web/admin";
    }

    @GetMapping("/login")
    public String login() {
        return "web/login";
    }

    @GetMapping("/register")
    public String register() {
        return "web/register";
    }
}
