package com.infosys.carRentalSystem.controller;

import com.infosys.carRentalSystem.bean.Car;
import com.infosys.carRentalSystem.bean.CarBooking;
import com.infosys.carRentalSystem.bean.CarUser;
import com.infosys.carRentalSystem.bean.Customer;
import com.infosys.carRentalSystem.bean.CarVariant;
import com.infosys.carRentalSystem.dao.CarBookingDao;
import com.infosys.carRentalSystem.dao.CarDao;
import com.infosys.carRentalSystem.dao.CarUserRepository;
import com.infosys.carRentalSystem.dao.CarVariantDao;
import com.infosys.carRentalSystem.dao.CustomerDao;
import com.infosys.carRentalSystem.exception.CustomerLicenceException;
import com.infosys.carRentalSystem.exception.CustomerStatusException;
import com.infosys.carRentalSystem.service.CarUserService;
import com.infosys.carRentalSystem.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class CarRentController {
    @Autowired
    private CarVariantDao carVariantDao;

    @Autowired
    private CarDao carDao;
    
    @Autowired
    private CustomerDao customerDao;
    
    @Autowired
    private CarUserRepository repository;

    @Autowired
    private CarUserService carUserService;
    
    @Autowired
    private CustomerService custService;
    
    @Autowired
    private CarBookingDao carBookingDao;

    @GetMapping("/variantAdd")
    public ModelAndView showVariantEntryPage() {
        String newId = carVariantDao.generateVariantId();
        CarVariant carVariant = new CarVariant(newId);
        ModelAndView mv =  new ModelAndView("variantEntryPage");
        mv.addObject("variantRecord", carVariant);
        return mv;
    }
    @PostMapping("/variantAdd")
    public ModelAndView saveVariant(@ModelAttribute("variantRecord") CarVariant carVariant) {
        carVariantDao.save(carVariant);
        return new ModelAndView("redirect:/index");
    }

    @GetMapping("/variantReport")
    public ModelAndView showVariantReportPage() {
        List<CarVariant> variantList = carVariantDao.findAll();
        variantList.forEach(v-> System.out.println(v));
        ModelAndView mv = new ModelAndView("variantReportPage");
        mv.addObject("variantList", variantList);
        return mv;
    }
    @GetMapping("/variantDeletion/{id}")
    public ModelAndView deleteVariant(@PathVariable String id) {
        carVariantDao.deleteVariantById(id);
        return new ModelAndView("redirect:/variantReport");
    }

    @GetMapping("/carAdd")
    public ModelAndView showCarEntryPage() {
        Car car = new Car();
        List<String> variantIdList = carVariantDao.getAllVariantIds();
        ModelAndView mv = new ModelAndView("carEntryPage");
        mv.addObject("carRecord", car);
        mv.addObject("variantIdList", variantIdList);
        return mv;
    }

    @PostMapping("/carAdd")
    public ModelAndView saveCar(@ModelAttribute("carRecord") Car car) {
        carDao.save(car);
        return new ModelAndView("redirect:/index");
    }

    @GetMapping("/carReport")
    public ModelAndView showCarReportPage() {
        String role = carUserService.getRole();
        String page="";
        if(role.equalsIgnoreCase("Admin"))
            page = "carReportPageAdmin";
        else if(role.equalsIgnoreCase("Customer"))
            page = "carReportPageCustomer";

        List<Car> carList = carDao.findAll();
        List<CarVariant> variantList = carVariantDao.findAll();

        Map<String, CarVariant> variantMap = new HashMap<>();
        variantList.forEach(variant -> {
            variantMap.put(variant.getVariantId(), variant);
        });

        ModelAndView mv = new ModelAndView(page);

        mv.addObject("carList", carList);
        mv.addObject("variantMap", variantMap);

        return mv;
    }
    
    @GetMapping("/customerCarReport")
    public ModelAndView showCustomerCarReportPage() {
        // Get the username of the logged-in customer
        String username = carUserService.getUserName();
        String role=carUserService.getRole();
        if(role.equalsIgnoreCase("Customer")) {
        // Check customer status
        boolean status = customerDao.getCustomerStatusByUsername(username);
        if (!status) {
            throw new CustomerStatusException();
        }

        // Check license validity
        String licenceExpiryDate = customerDao.getLicenceExpiryDate(username);
        if (!custService.validateCustomerLicenceDate(licenceExpiryDate)) {
            throw new CustomerLicenceException();
        }
        }

        // Fetch available cars and car variants
        List<Car> carList = carDao.getAvailableCars();
        List<CarVariant> variantList = carVariantDao.findAll();
        
        // Create a mapping of variantId to CarVariant
        Map<String, CarVariant> variantMap = new HashMap<>();
        for (CarVariant cv : variantList) {
            variantMap.put(cv.getVariantId(), cv);
        }

        // Prepare the ModelAndView object
        ModelAndView mv = new ModelAndView("carReportPageCustomer");
        mv.addObject("carList", carList);
        mv.addObject("variantMap", variantMap);

        return mv;
    }


    @GetMapping("/carDelete/{id}")
    public ModelAndView deleteCar(@PathVariable String id) {
        carVariantDao.deleteVariantById(id);
        return new ModelAndView("redirect:/carReport");
    }

    @GetMapping("/carUpdate/{id}")
    public ModelAndView updateCar(@PathVariable String id) {
        Car car = carDao.findById(id);
        ModelAndView mv = new ModelAndView("carUpdatePage");
        mv.addObject("carRecord", car);
        return mv;
    }
    
    @PostMapping("/carUpdate")
    public ModelAndView updateCarRecord(@ModelAttribute("carRecord") Car car) {
        // Update the car in the database
        carDao.save(car);
        // Redirect to the car report page
        return new ModelAndView("redirect:/carReport");
    }

    @GetMapping("/customerAdd")
    public ModelAndView showCustomerEntryPage() {
        String username = carUserService.getUserName();  // Get the username of the logged-in user
        String email = carUserService.getEmail();  // Get the email of the logged-in user

        // Initialize a new Customer object with username and email
        Customer customer = new Customer(username, email);  // Only passing username and email for now

        ModelAndView mv = new ModelAndView("customerEntryPage");
        mv.addObject("customerRecord", customer);  // Add customer to the model
        return mv;
    }

    // Handle form submission for adding a new customer
    @PostMapping("/customerAdd")
    public ModelAndView saveCustomer(@ModelAttribute("customerRecord") Customer customer) {
        customerDao.save(customer);  // Save customer to the database
        return new ModelAndView("redirect:/index");
    }

    // Show the customer report page
    @GetMapping("/customerReport")
    public ModelAndView showCustomerReportPage() {
        List<Customer> customerList = customerDao.findAll();// Fetch all customers from DB
        ModelAndView mv = new ModelAndView("customerReportPageAdmin");
        mv.addObject("customerList", customerList);  // Add list of customers to the model
        return mv;
    }
    @GetMapping("/singleCustomerReport")
    public ModelAndView showSingleCustomerReportPage() {
    	String username = carUserService.getUserName();
    	Customer customer = customerDao.findById(username);
    	ModelAndView mv = new ModelAndView("singleCustomerReportPage");
    	mv.addObject("customer",customer);
    	return mv;
    }
    @GetMapping("/customerUpdate/{id}")
    public ModelAndView showCustomerUpdatePage(@PathVariable String id) {
    	String role=carUserService.getRole();
    	String page="";
    	if(role.equalsIgnoreCase("Admin"))
    		page="customerUpdatePageAdmin";
    	else if(role.equalsIgnoreCase("Customer"))
    		page="customerUpdatePageCustomer";
    	Customer customer=customerDao.findById(id);
    	ModelAndView mv = new ModelAndView(page);
    	mv.addObject("customerRecord",customer);
    	return mv;
    }
    @PostMapping("/customerUpdate")
    public ModelAndView updateCustomer(@ModelAttribute("customerRecord") Customer customer) {
    	String role=carUserService.getRole();
    	String page="";
    	if(role.equalsIgnoreCase("Admin"))
    		page="redirect:/customerReport";
    	else if (role.equalsIgnoreCase("Customer"))
    		page="redirect:/singleCustomerReport";
    	customerDao.save(customer);
    	return new ModelAndView(page);
    }
    @GetMapping("/customerDelete/{id}")
    public ModelAndView deleteCustomer(@PathVariable String id) {
    	customerDao.deleteCustomerById(id);
    	repository.deleteById(id);
    	return new ModelAndView("redirect:/customerReport");
    }
    
    @ExceptionHandler(CustomerStatusException.class)
    public ModelAndView handleCustomerStatusException(CustomerStatusException exception) {
        // Custom error message
        String message = "Sorry Dear Customer, you need to complete your last booking and payment procedures.";

        // Prepare the ModelAndView object
        ModelAndView mv = new ModelAndView("carBookingErrorPage");
        mv.addObject("errorMessage", message);

        return mv;
    }

    @ExceptionHandler(CustomerLicenceException.class)
    public ModelAndView handleCustomerLicenceException(CustomerLicenceException exception) {
        // Custom error message
        String message = "Sorry Dear Customer, you need to renew your licence.";

        // Prepare the ModelAndView object
        ModelAndView mv = new ModelAndView("carBookingErrorPage");
        mv.addObject("errorMessage", message);

        return mv;
    }

    @GetMapping("/newBooking")
    public ModelAndView showNewBookingPage() {
        try {
            // Get the username of the logged-in user
            String username = carUserService.getUserName();

            // Check customer status
            boolean status = customerDao.getCustomerStatusByUsername(username);
            if (!status) {
                throw new CustomerStatusException();
            }

            // Check license validity
            String licenceExpiryDate = customerDao.getLicenceExpiryDate(username);
            if (!custService.validateCustomerLicenceDate(licenceExpiryDate)) {
                throw new CustomerLicenceException();
            }

            // Fetch available cars and car variants
            List<Car> carList = carDao.getAvailableCars();
            List<CarVariant> variantList = carVariantDao.findAll();

            // Create a mapping of variantId to CarVariant
            Map<String, CarVariant> variantMap = new HashMap<>();
            for (CarVariant cv : variantList) {
                variantMap.put(cv.getVariantId(), cv);
            }

            // Initialize a new CarBooking object
            CarBooking carBooking = new CarBooking();
            carBooking.setUsername(username);

            // Prepare and return ModelAndView
            ModelAndView mv = new ModelAndView("newBookingPage");
            mv.addObject("carList", carList);
            mv.addObject("variantMap", variantMap);
            mv.addObject("carBooking", carBooking);
            return mv;

        } catch (CustomerStatusException e) {
            // Redirect to the error page for customer status issues
            ModelAndView mv = new ModelAndView("carBookingErrorPage");
            mv.addObject("errorMessage", "Your account status is inactive. Please contact support.");
            return mv;
        } catch (CustomerLicenceException e) {
            // Redirect to the error page for license validity issues
            ModelAndView mv = new ModelAndView("carBookingErrorPage");
            mv.addObject("errorMessage", "Your driving license is expired or invalid. Please update your details.");
            return mv;
        }
    }

    @PostMapping("/newBooking")
    public ModelAndView saveNewBooking(@ModelAttribute("carBooking") CarBooking carBooking) {
        try {
            // Set default status as false (Pending)
            carBooking.setStatus(false);

            // Save the booking details
            carBookingDao.save(carBooking);

            // Redirect to the booking report page upon successful save
            return new ModelAndView("redirect:/bookingReport");

        } catch (Exception e) {
            // Redirect to the error page in case of unexpected issues
            ModelAndView mv = new ModelAndView("carBookingErrorPage");
            mv.addObject("errorMessage", "Failed to save the booking. Please try again.");
            return mv;
        }
    }
    
    

}
