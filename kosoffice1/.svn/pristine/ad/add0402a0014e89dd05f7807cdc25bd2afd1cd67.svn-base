package com.koffice.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.koffice.order.dao.orderDao;
import com.koffice.vo.menu.menuInfoVO;
import com.koffice.vo.order.orderInfoVO;
import com.koffice.vo.order.orderMenuInfoVO;

@Service
public class orderService {
	
	@Autowired
	orderDao dao;
	
	public List<orderInfoVO> selectOrderList(orderInfoVO vo) throws Exception{
		return dao.selectOrderList(vo);
	}
	
	public int selectTotalOrderPageCnt(orderInfoVO vo) throws Exception{
		return dao.selectTotalOrderPageCnt(vo);
	}
	
	public List<orderMenuInfoVO> selecetOrderMenuList(@ModelAttribute orderMenuInfoVO vo) throws Exception{
		return dao.selecetOrderMenuList(vo);
	}

}
