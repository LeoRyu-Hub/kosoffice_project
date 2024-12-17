package com.koffice.member.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.koffice.vo.member.memberInfoVO;
import com.koffice.vo.member.pointInfoVO;

@Repository	
public interface memberDao {
	
	public List<memberInfoVO> selectMemberList(memberInfoVO vo) throws Exception;
	public int selectTotalMemberPageCnt(memberInfoVO vo) throws Exception;
	public List<pointInfoVO> selectPointList(pointInfoVO vo) throws Exception;
	public int selectTotalPointPageCnt(pointInfoVO vo) throws Exception;
	public int updateMember(memberInfoVO vo) throws Exception;

}
