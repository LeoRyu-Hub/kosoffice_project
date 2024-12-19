package com.koffice.order.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.koffice.vo.order.orderInfoVO;
import com.koffice.vo.order.orderMenuInfoVO;

@Repository
public interface orderDao {
	
	public List<orderInfoVO> selectOrderList(orderInfoVO vo) throws Exception;
	public int selectTotalOrderPageCnt(orderInfoVO vo) throws Exception;
	public List<orderMenuInfoVO> selecetOrderMenuList(@ModelAttribute orderMenuInfoVO vo) throws Exception;

}
