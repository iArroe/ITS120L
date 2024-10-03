package com.ITS120L.Project.controller;
import com.ITS120L.Project.model.Event;
import com.ITS120L.Project.model.Feedback;
import com.ITS120L.Project.model.User;
import com.ITS120L.Project.service.IEventService;
import com.ITS120L.Project.service.IFeedbackService;
import com.ITS120L.Project.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class MyController {
    @Autowired
    private IUserService userService;

    @Autowired
    private IEventService eventService;

    @Autowired
    IFeedbackService feedbackService;

    @GetMapping("/events")
    public String showEvents(Model model){
        var events= (List<Event>) eventService.findAll();
        model.addAttribute("events", events);
        return "showEvents";
    }

    @GetMapping("/users")
    public String showUsers(Model model){
        var users= (List<User>) userService.findAll();
        model.addAttribute("users",users);
        return "showUsers";
    }

    @GetMapping("/feedbacks")
    public String showFeedback(Model model){
        var feedbacks= (List<Feedback>) feedbackService.findAll();
        model.addAttribute("feedbacks",feedbacks);
        return "showFeedbacks";
    }

    @GetMapping("/register")
    public String registerUser(Model model){
        model.addAttribute("add user",new User());
        return "register";
    }

    @PostMapping("/register")
    public String addCountrySubmit(@ModelAttribute User user, Model model) {
        model.addAttribute("user", user);
        userService.addUser(user);
        var users= (List<User>) userService.findAll();
        model.addAttribute("users",users);
        return "showUsers";
    }
}
