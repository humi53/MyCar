package com.callor.car.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.car.dao.CarDao;
import com.callor.car.models.CarDto;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class HomeController {
	
	private final CarDao carDao;	
	
	public HomeController(CarDao carDao) {
		this.carDao = carDao;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		List<CarDto> carList = carDao.selectAll();
		model.addAttribute("CARLIST", carList);
		return "home";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String home(CarDto carDto, Model model) {
		log.debug(carDto.toString());
		
//        String sTime = now.format(timeformatter);
        Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat today = new SimpleDateFormat("YYYY-MM-dd");
		SimpleDateFormat time = new SimpleDateFormat("HH:mm:ss");
		
		// 날짜 type 의 데이터를 String.format type 의 문자열로 변환하기
		String todayString = today.format(date);
		String timeString = time.format(date);
		
//		carDto.setTl_sdate(sDate);
//		carDto.setTl_stime(sTime);
//		carDto.setTl_edate(null);
//		carDto.setTl_etime(null);
//		int result = carDao.insert(carDto);
		return "redirect:/";
	}
	
}
