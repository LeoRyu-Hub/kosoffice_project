package com.koffice.manager.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.koffice.vo.manager.managerInfoVO;

@Repository
public interface managerDao {
	
	public List<managerInfoVO> selectManagerList(managerInfoVO vo) throws Exception;
	
	public int selectTotalManagerPageCnt(managerInfoVO vo) throws Exception;
	
	public int insertManager(managerInfoVO vo) throws Exception;
	public int updateManager(managerInfoVO vo) throws Exception;
	public managerInfoVO selectManagerDetail(managerInfoVO vo) throws Exception;

}
