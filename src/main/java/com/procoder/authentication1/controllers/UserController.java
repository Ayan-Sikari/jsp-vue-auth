package com.procoder.authentication1.controllers;

import com.procoder.authentication1.models.User;
import com.procoder.authentication1.services.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import java.util.Optional;

@Controller
public class UserController {

    private final UserService userService;
    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping({"/","/home"})
    public String loginPage(){
        return "login";
    }
    @PostMapping("/auth/login")
    public String login(@RequestParam String username, @RequestParam String password, @RequestParam String role, Model model){
        Optional<User> u=userService.authenticate(username,password,role);
        if(u.isPresent()){
            model.addAttribute("username",u.get().getUsername());
            model.addAttribute("role",u.get().getRole());
            return "welcome";
        }
        model.addAttribute("error","Invalid Credentials");
        return "login";
    }



}

