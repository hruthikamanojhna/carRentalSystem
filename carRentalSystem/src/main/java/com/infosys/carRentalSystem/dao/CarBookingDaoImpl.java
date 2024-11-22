package com.infosys.carRentalSystem.dao;

import com.infosys.carRentalSystem.bean.CarBooking;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
@Repository
public class CarBookingDaoImpl implements CarBookingDao {
	@Autowired
	private CarBookingRepository repository;
    //private List<CarBooking> bookingList = new ArrayList<>();

    @Override
    public void save(CarBooking carBooking) {
        repository.save(carBooking);
    }
    
    @Override
    public String generateBookingId() {
    	long id=0L;
    	String val =repository.getLastId();
    	if(val==null)
    		id=1000001L;
    	else {
    		id = Long.parseLong(val.substring(2));
    		id++;
    	}
    	String newId ="BK"+id;
    	return newId;
    }

    @Override
    public CarBooking findById(String id) {
        return repository.findById(id).get();
    }

 
    @Override
    public List<CarBooking> findAll() {
        return repository.findAll();
    }
}
