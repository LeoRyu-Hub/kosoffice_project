package com.koffice.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koffice.main.service.mainService;
import com.koffice.util.SessionUtil;
import com.koffice.vo.date.ScheduleVO;
import com.koffice.vo.date.dateInfoVO;
import com.koffice.vo.manager.managerInfoVO;
import com.koffice.vo.order.orderInfoVO;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class mainController {
	
	@Autowired
	mainService service;
	
	@RequestMapping("/main")
	public String main() throws Exception {
		return "/backoffice_main";
	}
	
	@RequestMapping("/loginpage")
	public String loginPage() throws Exception {
		return "/manager_loginPage";
	}
	
	@RequestMapping("/login")
	@ResponseBody
	public boolean login(@ModelAttribute managerInfoVO vo,
			HttpServletRequest request) throws Exception{
		
		managerInfoVO managervo = service.selectManager(vo);
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		if(encoder.matches(vo.getManagerPwd(),managervo.getManagerPwd())) {
			managervo.setManagerPwd("");
			SessionUtil.set(request,"MANAGER",managervo);
			return true;
		}else {
			return false;
		}	
	}
	
	@RequestMapping("/yesterdayOrder/search")
	@ResponseBody
	public int getyesterdayOrder(@ModelAttribute orderInfoVO vo) throws Exception{
		
		int cnt=0;
		
		cnt = service.getYesterdayOrder(vo);
		
		return cnt;
	}
	
	@RequestMapping("/todayOrder/search")
	@ResponseBody
	public int getTodayOrder(@ModelAttribute orderInfoVO vo) throws Exception{
		
		int cnt=0;
		
		cnt = service.getTodayOrder(vo);
		
		return cnt;
	}
	
	@RequestMapping("/yesterdaySales/search")
	@ResponseBody
	public int getYesterdaySales(@ModelAttribute orderInfoVO vo) throws Exception{
		
		int cnt=0;
		
		cnt = service.getYesterdaySales(vo);
		
		return cnt;
	}
	
	@RequestMapping("/todaySales/search")
	@ResponseBody
	public int getTodaySales(@ModelAttribute orderInfoVO vo) throws Exception{
		
		int cnt=0;
		
		cnt = service.getTodaySales(vo);
		
		return cnt;
	}
	
	@RequestMapping("/chartSales/search")
	@ResponseBody
	public List<managerInfoVO> getChartInfo(@ModelAttribute managerInfoVO vo) throws Exception{
		
		List<managerInfoVO> list = service.getChartInfo(vo);
		
		return list;
	}
	
	/*
	@RequestMapping("/getCalendarDate")
	@ResponseBody
	public List<ScheduleVO> getDate(@ModelAttribute dateInfoVO vo) throws Exception{
		
		List<ScheduleVO> list = service.selectDateList(vo);
		
		return list;
	}
	*/
	
	@RequestMapping("/getCalendarDate")
	@ResponseBody
	public dateInfoVO getDate(@ModelAttribute dateInfoVO vo) throws Exception{
		
		//스케줄(제목, 세부내역, 순번) 리스트
		List<ScheduleVO> list2 = service.selectSchList(vo);
		vo.setSchlist(list2);
		
		// 날짜 리스트
		List<ScheduleVO> list1 = service.selectDateList(vo);
		vo.setDaylist(list1);
		
		return vo;
	}
	
	@RequestMapping("/sch/add")
	@ResponseBody
	public boolean addSch(@ModelAttribute ScheduleVO vo) throws Exception{
		
		int cnt = 0;
		
		cnt = service.insertSch(vo);
		
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
	
	@RequestMapping("/sch/delete")
	@ResponseBody
	public boolean deleteSch(@ModelAttribute ScheduleVO vo) throws Exception{
		
		int cnt = 0;
		
		cnt = service.deleteSch(vo);
		
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
	
}
