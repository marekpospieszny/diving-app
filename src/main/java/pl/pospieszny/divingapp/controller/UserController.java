package pl.pospieszny.divingapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.pospieszny.divingapp.entity.User;
import pl.pospieszny.divingapp.service.UserService;

import javax.validation.Valid;

@Controller
@RequestMapping("/app/users")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/list")
    public String showAllUsers(Model model) {
        model.addAttribute("users",userService.getAllUsers());
        return "users/list";
    }

    @GetMapping("/add")
    public String addForm(Model model) {
        model.addAttribute("user",new User());
        return "users/addForm";
    }

    @PostMapping("/add")
    public String addUser(@Valid User user, BindingResult result, Model model) {
        if(result.hasErrors()) {
            return "users/addForm";
        }
        userService.add(user);
        return "redirect:/app/users/list";
    }

    @GetMapping("/edit/{id}")
    public String editForm(@PathVariable Long id, Model model) {
        model.addAttribute("user",userService.get(id));
        return "users/editForm";
    }

    @PostMapping("/edit")
    public String editUser(@Valid User user, BindingResult result, Model model) {
        if(result.hasErrors()) {
            return "users/editForm";
        }
        userService.update(user);
        return "redirect:/app/users/list";
    }

    @GetMapping("/details/{id}")
    public String details(@PathVariable Long id, Model model) {
        model.addAttribute("user",userService.get(id));
        return "users/details";
    }

    @GetMapping("/delete/{id}")
    public String deleteUser(@PathVariable Long id) {
        userService.delete(id);
        return "redirect:/app/users/list";
    }

}
