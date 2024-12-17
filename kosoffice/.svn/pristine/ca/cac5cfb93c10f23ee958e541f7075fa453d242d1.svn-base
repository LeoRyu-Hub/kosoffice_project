package com.koffice.manager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koffice.manager.dao.managerDao;
import com.koffice.vo.manager.managerInfoVO;
import com.koffice.vo.paymentmethod.paymInfoVO;

@Service
public class managerService {
	
	@Autowired
	managerDao dao;
	
	public List<managerInfoVO> selectManagerList(managerInfoVO vo) throws Exception{
		return dao.selectManagerList(vo);
	}
	
	public int selectTotalManagerPageCnt(managerInfoVO vo) throws Exception{
		return dao.selectTotalManagerPageCnt(vo);
	}
	
	public int insertManager(managerInfoVO vo) throws Exception{
		return dao.insertManager(vo);
	}
	public int updateManager(managerInfoVO vo) throws Exception{
		return dao.updateManager(vo);
	}
	
	public managerInfoVO selectManagerDetail(managerInfoVO vo) throws Exception{
		return dao.selectManagerDetail(vo);
	}

}
