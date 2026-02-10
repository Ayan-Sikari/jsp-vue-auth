package com.procoder.authentication1.models;

import org.springframework.stereotype.Component;


@Component
public class User {
    private long id;
    private String username;
    private String mail;
    private String password;
    private String role;

    public User(long id, String username, String mail, String password, String role) {
        this.id = id;
        this.username = username;
        this.mail = mail;
        this.password = password;
        this.role = role;
    }
    public User() {

    }

    public long getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getMail() {
        return mail;
    }

    public String getPassword() {
        return password;
    }

    public String getRole() {
        return role;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRole(String role) {
        this.role = role;
    }

}
