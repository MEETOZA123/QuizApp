package com.example.demo.controller;

import com.example.demo.entity.User;
import com.example.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/signup")
    public String signupForm() {
        return "signup"; // Returns the signup.jsp page
    }

    @PostMapping("/signup")
    public String signupSubmit(@ModelAttribute User user) {
        userService.registerUser(user);
        return "login"; 
    }

    @GetMapping("/login")
    public String loginForm() {
        return "login"; // Returns the login.jsp page
    }

    @PostMapping("/login")
    public String loginSubmit(@ModelAttribute User user, Model model) {
        boolean isAuthenticated = userService.authenticateUser(user.getUsername(), user.getPassword());
        if (isAuthenticated) {
            return "intro";
        } else {
            // If authentication fails, pass an error message to the model
            model.addAttribute("errorMessage", "Invalid username or password!");
            return "login"; // Return to login page with error message
        }
    }
}
