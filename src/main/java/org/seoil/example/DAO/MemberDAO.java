package org.seoil.example.DAO;

import org.seoil.example.VO.MemberVO;

public interface MemberDAO {
	public String getTime();

	public void insertMeber(MemberVO memberVo);
	
	public MemberVO readMember (String userId) throws Exception;
	
	public MemberVO readWithPW(String userId,String userPw) throws Exception;
}
