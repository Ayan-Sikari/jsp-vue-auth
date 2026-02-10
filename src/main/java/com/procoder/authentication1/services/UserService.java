package com.procoder.authentication1.services;

import com.procoder.authentication1.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.procoder.authentication1.repositories.UserRepository;

import java.util.Optional;

@Service
public class UserService {
    private final UserRepository userRepository;
    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public Optional<User> authenticate(String mail,String password,String role){
        return userRepository.getUserByMailAndPasswordAndRole(mail,password,role);
    }

    public Optional<User> getById(Integer userId){
        return userRepository.getUserById(userId);
    }
}
