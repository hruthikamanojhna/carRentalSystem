package com.infosys.carRentalSystem.dao;
import com.infosys.carRentalSystem.bean.Customer;
import java.util.List;

public interface CustomerDao {
    
    // Save customer data
    public void save(Customer customer);

    // Find all customers
    public List<Customer> findAll();

    // Find customer by ID
    public Customer findById(String id);

    // Find customers by last name
    //List<Customer> findCustomersByLastName(String lastName);

    // Delete customer by ID
    public void deleteCustomerById(String id);
    public Boolean getCustomerStatusByUsername(String username);
    public String getLicenceExpiryDate(String username);
}
