package com.koffice.paymentmethod.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koffice.paymentmethod.dao.paymentmethodDao;
import com.koffice.vo.paymentmethod.paymInfoVO;

@Service
public class paymentmethodService {
	
	@Autowired
	paymentmethodDao dao;
	
	public List<paymInfoVO> selectPaymList(paymInfoVO vo) throws Exception{
		return dao.selectPaymList(vo);
	}
	
	public int selectTotalPaymPageCnt(paymInfoVO vo) throws Exception{
		return dao.selectTotalPaymPageCnt(vo);
	}
	
	public int insertPaym(paymInfoVO vo) throws Exception{
		return dao.insertPaym(vo);
	}
	public int updatePaym(paymInfoVO vo) throws Exception{
		return dao.updatePaym(vo);
	}

}
