package com.ITS120L.Project.controller;
import com.ITS120L.Project.model.Event;
import com.ITS120L.Project.model.Feedback;
import com.ITS120L.Project.model.User;
import com.ITS120L.Project.service.CohereService;
import com.ITS120L.Project.service.IEventService;
import com.ITS120L.Project.service.IFeedbackService;
import com.ITS120L.Project.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.List;

@Controller
public class MyController {
    @Autowired
    private IUserService userService;

    @Autowired
    private IEventService eventService;

    @Autowired
    IFeedbackService feedbackService;

    @Autowired
    private CohereService cohereService;

    @GetMapping("/")
    public String home() {
        return "/index";
    }

    // ====================================
    // Home/Index
    // ====================================

    @GetMapping("/index")
    public String indexEvents(Model model){
        var events= (List<Event>) eventService.findAll();
        model.addAttribute("events", events);
        return "index";
    }


    // ====================================
    // Schedule
    // ====================================

    @GetMapping("/schedule")
    public String showEvents(Model model){
        var events= (List<Event>) eventService.findAll();
        model.addAttribute("events", events);
        return "schedule";
    }

    // ====================================
    // User Management Part
    // ====================================

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
        return "/index";
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

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/index";
    }

    // ====================================
    // User Controls - Create Event
    // ====================================

    @PostMapping("/event-registration")
    public String addEvent(@ModelAttribute Event event, HttpSession session, Model model){
        User loggedInUser = (User) session.getAttribute("loggedInUser");
        if (loggedInUser != null) {
            event.setUser(loggedInUser);
            eventService.addEvent(event);
            var events= (List<Event>) eventService.findAll();
            model.addAttribute("events", events);
            return "/schedule";
        } else {
            return "#";
        }
    }

    @GetMapping("/event-registration")
    public String showAddEventForm(HttpSession session, Model model) {
        User loggedInUser = (User) session.getAttribute("loggedInUser");
        if (loggedInUser != null) {
            model.addAttribute("event", new Event());
            return "event-registration";
        } else {
            return "redirect:/login";
        }
    }

    // ====================================
    // User Controls - Submit Feedback/Survey for Event
    // ====================================

    @GetMapping("/survey")
    public String showFeedback(HttpSession session, Model model) {
        User loggedInUser = (User) session.getAttribute("loggedInUser");
        if (loggedInUser != null) {
            var feedbacks = (List<Feedback>) feedbackService.findAll();
            model.addAttribute("feedbacks", feedbacks);
            return "survey";
        } else {
            return "redirect:/login";
        }
    }

    @PostMapping("/submitSurvey")
    public String submitSurvey(
            @ModelAttribute Feedback survey,
            @RequestParam("eventId") Long eventId,
            HttpSession session,
            RedirectAttributes redirectAttributes) {
        User loggedInUser = (User) session.getAttribute("loggedInUser");
        if (loggedInUser != null) {
            Event selectedEvent = eventService.findEventById(eventId);
            survey.setEvent(selectedEvent);
            survey.setUser(loggedInUser);
            feedbackService.addFeedback(survey);
            return "redirect:/survey";
        } else {
            return "redirect:/login";
        }
    }

    // ====================================
    // Admin Controls - AI Sentiment Analysis using Cohere
    // ====================================

    @GetMapping("/analytics")
    public String showForm(HttpSession session) {
        User loggedInUser = (User) session.getAttribute("loggedInUser");
        if (loggedInUser != null && "admin".equals(loggedInUser.getUserType())) {
            return "analytics";
        } else {
            return "redirect:/login";
        }
    }

    @PostMapping("/analytics")
    public String generateText(@RequestParam String prompt, Model model) {
        String result = cohereService.generateText(prompt);
        model.addAttribute("result", result);
        return "analytics";
    }
    // List of Feedbacks per Event
    @PostMapping("/selectEvent")
    public String selectEvent(
            @RequestParam("eventId") Long eventId,
            Model model) {
        List<Event> events = eventService.findAll();
        model.addAttribute("events", events);
        List<Feedback> feedbacks = feedbackService.findFeedbackById(eventId);
        model.addAttribute("feedbacks", feedbacks);
        model.addAttribute("selectedEventId", eventId);

        return "analytics";
    }

    // ====================================
    // Admin Controls - Event Management
    // ====================================

    @GetMapping("/manage")
    public String manageEvents(HttpSession session) {
        User loggedInUser = (User) session.getAttribute("loggedInUser");
        if (loggedInUser != null && "admin".equals(loggedInUser.getUserType())) {
            return "manage-event";
        } else {
            return "redirect:/login";
        }
    }

    @GetMapping("/{eventId}")
    public String manageEvent(@PathVariable long eventId, Model model) {
        Event event = eventService.getEvent(eventId);
        if (event != null) {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String formattedStartDate = dateFormat.format(event.getStartDate());
            String formattedEndDate = dateFormat.format(event.getEndDate());
            model.addAttribute("startDate", formattedStartDate);
            model.addAttribute("endDate", formattedEndDate);
            model.addAttribute("event", event);
            return "edit-event";
        } else {
            return "manage";
        }
    }


    @PostMapping("/update-event/{eventId}")
    public String updateEvent(@PathVariable long eventId, @ModelAttribute Event updatedEvent) {
        Event event = eventService.updateEvent(eventId, updatedEvent);
        if (event != null) {
            return "redirect:/manage";
        } else {
            return "redirect:/events/error";
        }
    }

    @PostMapping("/delete-event/{eventId}")
    public String deleteEvent(@PathVariable long eventId, @ModelAttribute Event updatedEvent) {
        Event event = eventService.deleteEvent(eventId);
        return "redirect:/manage";
    }

    // ====================================
    // Access/Fetch Events and Feedback in MYSQL DB
    // ====================================

    @ModelAttribute ("events")
    public List<Event> populateEvents() {
        return eventService.findAll();
    }

    @ModelAttribute ("feedbacks")
    public List<Feedback> populateFeedbacks() {
        return feedbackService.findAll();
    }
}
