package com.infosys.carRentalSystem.dao;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.infosys.carRentalSystem.bean.CarBooking;
public interface CarBookingRepository extends JpaRepository<CarBooking,String>{
	@Query("select max(bookingId) from CarBooking")
	public String getLastId();
}