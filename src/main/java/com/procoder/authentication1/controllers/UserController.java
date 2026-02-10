package com.procoder.authentication1.controllers;

import com.procoder.authentication1.models.Item;
import com.procoder.authentication1.models.User;
import com.procoder.authentication1.services.ItemService;
import com.procoder.authentication1.services.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import java.util.List;
import java.util.Optional;

@Controller
public class UserController {

    private final UserService userService;
    private final ItemService itemService;
    @Autowired
    public UserController(UserService userService, ItemService itemService) {
        this.userService = userService;
        this.itemService = itemService;
    }

    @GetMapping({"/","/home"})
    public String loginPage(){
        return "login";
    }
    @PostMapping("/auth/login")
    public String login(@RequestParam String username, @RequestParam String password, @RequestParam String role, Model model){
        Optional<User> u=userService.authenticate(username,password,role);
        List<Item> items=itemService.getItems();
        if(u.isPresent()){
            model.addAttribute("username",u.get().getUsername());
            model.addAttribute("role",u.get().getRole());
            model.addAttribute("items",items);
            return "welcome";
        }
        model.addAttribute("error","Invalid Credentials");
        return "login";
    }



}

