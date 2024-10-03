package com.ITS120L.Project.service;
import com.ITS120L.Project.model.User;
import com.ITS120L.Project.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserService implements IUserService {
    @Autowired
    private UserRepository repository;

    @Override
    public List<User> findAll() {
        return (List<User>) repository.findAll();
    }

    @Override
    public User addUser(User user) { return repository.save(user);
    }
}

