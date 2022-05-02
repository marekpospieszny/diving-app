package pl.pospieszny.divingapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import pl.pospieszny.divingapp.entity.Diver;
import pl.pospieszny.divingapp.service.DiverService;
import pl.pospieszny.divingapp.utils.PasswordUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class AuthorizationController {

    private final DiverService diverService;

    public AuthorizationController(DiverService diverService) {
        this.diverService = diverService;
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
        if(diver != null && diver.getEmail().equals(email) && PasswordUtil.checkPassword(password, diver.getPassword())) {
            session.setAttribute("diver",diver);
            if(diver.isAdmin()) {
                return "redirect:/admin";
            } else {
                return "redirect:/app";
            }
        } else {
            request.setAttribute("wrong",true);
            return "web/login";
        }
    }

    @GetMapping("/register")
    public String register() {
        return "web/register";
    }
}
