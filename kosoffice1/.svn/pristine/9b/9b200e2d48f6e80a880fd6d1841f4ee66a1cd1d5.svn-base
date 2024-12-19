package com.koffice.schedule.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koffice.schedule.dao.scheduleDao;
import com.koffice.vo.sales.salesInfoVO;

@Service
public class scheduleService {
	
	@Autowired
	scheduleDao dao;
	
	public salesInfoVO selectOrder(salesInfoVO vo) throws Exception {
		return dao.selectOrder(vo);
	}
	
	public int insertOrder(salesInfoVO vo) throws Exception{
		return dao.insertOrder(vo);
	}

}
