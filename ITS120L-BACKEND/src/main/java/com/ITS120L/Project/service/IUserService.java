package com.ITS120L.Project.service;

import com.ITS120L.Project.model.User;

import java.util.List;

public interface IUserService {
    User addUser(User user);
    List<User> findAll();
}
