package com.callor.car.dao;

import java.util.List;

import com.callor.car.models.CarDto;

public interface CarDao {
	
	public List<CarDto> selectAll();
	
	public CarDto findById(String seq);
	
	public int insert(CarDto carDto);
	
	public int update(CarDto carDto);
}
