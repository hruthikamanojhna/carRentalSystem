package com.infosys.carRentalSystem.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

import org.springframework.stereotype.Service;
@Service
public class CustomerService {

    public boolean validateCustomerLicenceDate(String licenceDate) {
        // Define the date format
        DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        // Parse the input date string to LocalDate
        LocalDate expiryDate = LocalDate.parse(licenceDate, dateFormat);

        // Get today's date
        LocalDate today = LocalDate.now();

        // Calculate the number of days between today and the expiry date
        final long days = ChronoUnit.DAYS.between(today, expiryDate);

        // Return true if the expiry date is more than 90 days away
        if (days > 30) {
            return true;
        } else {
            return false;
        }
    }
}