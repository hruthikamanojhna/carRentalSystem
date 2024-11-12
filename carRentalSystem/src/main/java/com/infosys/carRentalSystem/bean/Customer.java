package com.infosys.carRentalSystem.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Customer {

    @Id
    private String username;
    private String email;
    private String firstName;
    private String lastName;
    private String address;
    private String mobile;
    private String license;
    private boolean status;

    // Default constructor (needed for JPA)
    public Customer() {
    	super();
    }

    // Constructor with username and email
    public Customer(String username, String email) {
    	super();
        this.username = username;
        this.email = email;
        this.status = true; // default to active
    }

    // Constructor with all fields except status
    public Customer(String username, String email, String firstName, String lastName, String address, String mobile, String license) {
    	super();
        this.username = username;
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        this.address = address;
        this.mobile = mobile;
        this.license = license;
        this.status = true; // default to active
    }

    // Full constructor including status
    public Customer(String username, String email, String firstName, String lastName, String address, String mobile, String license, boolean status) {
        super();
    	this.username = username;
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        this.address = address;
        this.mobile = mobile;
        this.license = license;
        this.status = status;
    }

    // Getters and setters for each field
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getLicense() {
        return license;
    }

    public void setLicense(String license) {
        this.license = license;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", address='" + address + '\'' +
                ", mobile='" + mobile + '\'' +
                ", license='" + license + '\'' +
                ", status=" + status +
                '}';
    }
}
