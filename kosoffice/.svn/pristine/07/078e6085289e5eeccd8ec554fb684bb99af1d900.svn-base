package com.koffice.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.koffice.main.dao.mainDao;
import com.koffice.vo.date.ScheduleVO;
import com.koffice.vo.date.dateInfoVO;
import com.koffice.vo.manager.managerInfoVO;
import com.koffice.vo.order.orderInfoVO;

@Service
public class mainService {
	
	@Autowired
	mainDao dao;
	
	public managerInfoVO selectManager(managerInfoVO vo) throws Exception{
		return dao.selectManager(vo);
	}
	
	public int getYesterdayOrder(@ModelAttribute orderInfoVO vo) throws Exception{
		return dao.getYesterdayOrder(vo);
	}
	
	public int getTodayOrder(@ModelAttribute orderInfoVO vo) throws Exception{
		return dao.getTodayOrder(vo);
	}
	
	public int getYesterdaySales(@ModelAttribute orderInfoVO vo) throws Exception{
		return dao.getYesterdaySales(vo);
	}
	
	public int getTodaySales(@ModelAttribute orderInfoVO vo) throws Exception{
		return dao.getTodaySales(vo);
	}
	
	public List<managerInfoVO> getChartInfo(@ModelAttribute managerInfoVO vo) throws Exception{
		return dao.getChartInfo(vo);
	}
	
	public List<ScheduleVO> selectDateList(@ModelAttribute dateInfoVO vo) throws Exception{
		return dao.selectDateList(vo);
	}

}
