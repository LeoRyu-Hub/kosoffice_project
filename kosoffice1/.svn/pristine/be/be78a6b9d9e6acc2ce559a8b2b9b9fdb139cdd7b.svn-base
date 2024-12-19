package com.koffice.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koffice.member.dao.memberDao;
import com.koffice.vo.member.memberInfoVO;
import com.koffice.vo.member.pointInfoVO;

@Service
public class memberService {
	
	@Autowired
	memberDao dao;
	
	public List<memberInfoVO> selectMemberList(memberInfoVO vo) throws Exception{
		return dao.selectMemberList(vo);
	}
	
	public int selectTotalMemberPageCnt(memberInfoVO vo) throws Exception{
		return dao.selectTotalMemberPageCnt(vo);
	}
	
	public List<pointInfoVO> selectPointList(pointInfoVO vo) throws Exception{
		return dao.selectPointList(vo);
	}
	
	public int selectTotalPointPageCnt(pointInfoVO vo) throws Exception{
		return dao.selectTotalPointPageCnt(vo);
	}
	
	public int updateMember(memberInfoVO vo) throws Exception{
		return dao.updateMember(vo);
	}

}
