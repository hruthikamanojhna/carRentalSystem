package com.infosys.carRentalSystem.dao;

import com.infosys.carRentalSystem.bean.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CustomerDaoImpl implements CustomerDao {

    @Autowired
    private CustomerRepository customerRepository;  // Injecting the repository

    // Save customer
    @Override
    public void save(Customer customer) {
        customerRepository.save(customer);  // Save customer to the database
    }

    // Find all customers
    @Override
    public List<Customer> findAll() {
        return customerRepository.findAll();  // Retrieve all customers
    }

    // Find customer by ID
    @Override
    public Customer findById(String id) {
        return customerRepository.findById(id).get();  // Find customer by ID
    }

    // Delete customer by ID
    @Override
    public void deleteCustomerById(String id) {
        customerRepository.deleteById(id);  // Delete customer by ID
    }
}
