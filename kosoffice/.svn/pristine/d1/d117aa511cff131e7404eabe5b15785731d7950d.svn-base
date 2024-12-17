package com.koffice.sales.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.koffice.sales.dao.salesDao;
import com.koffice.vo.sales.salesInfoVO;

@Service
public class salesService {
	
	@Autowired
	salesDao dao;
	
	public List<salesInfoVO> selectSalesList(salesInfoVO vo) throws Exception{
		return dao.selectSalesList(vo);
	}
	
	public int selectTotalSalesPageCnt(salesInfoVO vo) throws Exception{
		return dao.selectTotalSalesPageCnt(vo);
	}
	
	public List<salesInfoVO> getTotalList(@ModelAttribute salesInfoVO vo) throws Exception{
		return dao.getTotalList(vo);
	}

}
