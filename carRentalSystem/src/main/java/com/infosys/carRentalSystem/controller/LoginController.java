package com.infosys.carRentalSystem.controller;

import com.infosys.carRentalSystem.bean.CarUser;
import com.infosys.carRentalSystem.service.CarUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

    @Autowired
    private BCryptPasswordEncoder bCrypt;

    @Autowired
    private CarUserService service;

    // Login page
    @GetMapping("/loginpage")
    public ModelAndView showLoginPage() {
        return new ModelAndView("loginPage");
    }

    // Login error page
    @GetMapping("/loginerror")
    public ModelAndView showLoginErrorPage() {
        return new ModelAndView("loginErrorPage");
    }

    // Redirect to appropriate index page based on user role
    @GetMapping("/index")
    public ModelAndView showIndexPage() {
        String role = service.getRole();
        String page = "loginPage"; // Default to loginPage if role is null or not recognized

        if ("Admin".equalsIgnoreCase(role)) {
            page = "index1";
        } else if ("Customer".equalsIgnoreCase(role)) {
            page = "index2";
        }

        return new ModelAndView(page);
    }

    // Register new user page
    @GetMapping("/register")
    public ModelAndView newUserEntryPage() {
        ModelAndView mv = new ModelAndView("newUserEntry");
        CarUser carUser = new CarUser();
        mv.addObject("userRecord", carUser);
        return mv;
    }

    // Save new user and redirect to login page
    @PostMapping("/register")
    public ModelAndView saveNewUser(@ModelAttribute("userRecord") CarUser carUser) {
        CarUser newUser = new CarUser();
        String encodedPassword = bCrypt.encode(carUser.getPassword());
        newUser.setUsername(carUser.getUsername());
        newUser.setRole(carUser.getRole());
        newUser.setEmail(carUser.getEmail());
        newUser.setPassword(encodedPassword);
        service.save(newUser);
        return new ModelAndView("redirect:/loginpage"); // Redirect to login page
    }
}
