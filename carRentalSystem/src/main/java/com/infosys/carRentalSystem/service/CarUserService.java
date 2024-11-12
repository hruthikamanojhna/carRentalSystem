package com.infosys.carRentalSystem.service;

import com.infosys.carRentalSystem.bean.CarUser;
import com.infosys.carRentalSystem.dao.CarUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CarUserService implements UserDetailsService {
    @Autowired
    private CarUserRepository repository;

    private String role;
    private String userName;  // Instance variable for username
    private String email;     // Instance variable for email

    // Save method for creating or updating CarUser entries in the repository
    public void save(CarUser carUser) {
        repository.save(carUser);
    }

    // Load user details by username, implementing Spring Security's UserDetailsService interface
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        CarUser carUser = repository.findById(username).get(); // Directly get without Optional

        // Set class-level fields to store information for later use
        role = carUser.getRole();
        userName = carUser.getUsername();
        email = carUser.getEmail();

        return carUser;
    }

    // Getter for role
    public String getRole() {
        return role;
    }

    // Getter for userName
    public String getUserName() {
        return userName;
    }

    // Getter for email
    public String getEmail() {
        return email;
    }
}
