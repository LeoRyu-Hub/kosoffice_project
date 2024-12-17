package com.koffice.sales.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.koffice.vo.sales.salesInfoVO;

@Repository
public interface salesDao {
	
	public List<salesInfoVO> selectSalesList(salesInfoVO vo) throws Exception;
	
	public int selectTotalSalesPageCnt(salesInfoVO vo) throws Exception;
	public List<salesInfoVO> getTotalList(@ModelAttribute salesInfoVO vo) throws Exception;
}
