package com.infosys.carRentalSystem.dao;

import com.infosys.carRentalSystem.bean.CarBooking;
import java.util.List;

public interface CarBookingDao {
    public void save(CarBooking carBooking);
    public String generateBookingId();
    public List<CarBooking> findAll();
    public CarBooking findById(String id);
    //void update(CarBooking carBooking);
    //void deleteById(Long bookingId);
    //List<CarBooking> findByUsername(String username);
    
}
