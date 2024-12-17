package com.koffice.schedule.dao;

import org.springframework.stereotype.Repository;

import com.koffice.vo.sales.salesInfoVO;

@Repository
public interface scheduleDao {
	
	public salesInfoVO selectOrder(salesInfoVO vo) throws Exception;
	
	public int insertOrder(salesInfoVO vo) throws Exception;

}
