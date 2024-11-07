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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MyController {
    @Autowired
    private IUserService userService;

    @Autowired
    private IEventService eventService;

    @Autowired
    IFeedbackService feedbackService;

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/index")
    public String indexEvents(Model model){
        var events= (List<Event>) eventService.findAll();
        model.addAttribute("events", events);
        return "index";
    }

    @GetMapping("/schedule")
    public String showEvents(Model model){
        var events= (List<Event>) eventService.findAll();
        model.addAttribute("events", events);
        return "schedule";
    }

    @PostMapping("/registerEvent")
    public String addEvent(@ModelAttribute Event event, Model model){
        model.addAttribute("event", event);
        eventService.addEvent(event);
        return "registerEvent";
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

    @PostMapping("/login")
    public String login(@ModelAttribute("email") String email,
                        @ModelAttribute("password") String password,
                        HttpSession session,
                        RedirectAttributes redirectAttributes,
                        Model model) {
        User user = userService.findByEmailAndPassword(email, password);
        if (user != null) {
            session.setAttribute("loggedInUser", user);
            return "redirect:/index";
        } else {
            model.addAttribute("errorMessage", "Invalid email or password");
            model.addAttribute("loginFailed", true);
            return "login";
        }
    }


    @GetMapping("/login")
    public String showLoginPage(Model model) {
        model.addAttribute("user", new User());
        return "login";
    }

    //Logout
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/index";
    }

    //Verify User for Adding Event
    @PostMapping("/addEvent")
    public String addEvent(@ModelAttribute Event event, HttpSession session, Model model){
        User loggedInUser = (User) session.getAttribute("loggedInUser");
        if (loggedInUser != null) {
            event.setUser(loggedInUser);
            eventService.addEvent(event);
            var events= (List<Event>) eventService.findAll();
            model.addAttribute("events", events);
            return "addEvent";
        } else {
            return "redirect:";
        }
    }

    @GetMapping("/addEvent")
    public String showAddEventForm(HttpSession session, Model model) {
        User loggedInUser = (User) session.getAttribute("loggedInUser");
        if (loggedInUser != null) {
            model.addAttribute("event", new Event());
            return "addEvent";
        } else {
            return "redirect:/login";
        }
    }

    //get list of events to show in index.ftlh or wherever needed
    @ModelAttribute ("events")
    public List<Event> populateEvents() {
        return eventService.findAll();
    }
}
