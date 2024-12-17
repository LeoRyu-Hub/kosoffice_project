package com.koffice.main.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.koffice.vo.date.dateInfoVO;
import com.koffice.vo.manager.managerInfoVO;
import com.koffice.vo.order.orderInfoVO;

@Repository
public interface mainDao {
	
	public managerInfoVO selectManager(managerInfoVO vo) throws Exception;
	public int getYesterdayOrder(@ModelAttribute orderInfoVO vo) throws Exception;
	public int getTodayOrder(@ModelAttribute orderInfoVO vo) throws Exception;
	public int getYesterdaySales(@ModelAttribute orderInfoVO vo) throws Exception;
	public int getTodaySales(@ModelAttribute orderInfoVO vo) throws Exception;
	public List<managerInfoVO> getChartInfo(@ModelAttribute managerInfoVO vo) throws Exception;
	public dateInfoVO selectDateList(@ModelAttribute dateInfoVO vo) throws Exception;
	
}

