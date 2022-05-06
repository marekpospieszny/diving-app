package pl.pospieszny.divingapp.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.pospieszny.divingapp.entity.Diver;
import pl.pospieszny.divingapp.entity.Message;
import pl.pospieszny.divingapp.service.DiverService;
import pl.pospieszny.divingapp.service.MessageService;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("/app/messages")
public class MessageController {

    private final MessageService messageService;
    private final DiverService diverService;

    public MessageController(MessageService messageService, DiverService diverService) {
        this.messageService = messageService;
        this.diverService = diverService;
    }

    @GetMapping("")
    public String messageCenter(Model model, HttpServletRequest request) {
        Diver user = (Diver) request.getSession().getAttribute("user");
        model.addAttribute("messages",messageService.getByUserId(user.getId()));
        return "messages/center";
    }

    @GetMapping("/new")
    public String newMessage(Model model, HttpServletRequest request) {
        Diver user = (Diver) request.getSession().getAttribute("user");
        model.addAttribute("newMessage",new Message());
        model.addAttribute("receivers",diverService.getAllDiversExcludingIndicatedId(user.getId()));
        return "messages/new";
    }

    @PostMapping("/new")
    public String sendMessage(@Valid Message message, BindingResult result, Model model, HttpServletRequest request) {
        if(result.hasErrors()) {
            Diver user = (Diver) request.getSession().getAttribute("user");
            model.addAttribute("receivers",diverService.getAllDiversExcludingIndicatedId(user.getId()));
            return "messages/new";
        }
        messageService.add(message);
        return "redirect:/app/messages";
    }

}
