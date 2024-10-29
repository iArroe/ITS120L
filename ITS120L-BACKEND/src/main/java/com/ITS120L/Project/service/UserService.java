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

    @Override
    public User findByEmailAndPassword(String email, String password) {
        User user = repository.findByEmail(email); // Get user by email
        if (user != null) {
            System.out.println("User found: " + user.toString());
            if (user.getPassword().equals(password)) { // Compare passwords directly
                return user; // Return user if password matches
            } else {
                System.out.println("Password does not match.");
            }
        } else {
            System.out.println("User not found with email: " + email);
        }
        return null; // Return null if user not found or password does not match
    }

}

