package org.seoil.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.seoil.example.VO.UserVO;;

public interface UserService {
	public List<UserVO> getUserList() throws Exception;

	public UserVO getUserInfo(String uid) throws Exception;

	public void insertUser(UserVO userVO) throws Exception;

	public void updateUser(UserVO userVO) throws Exception;

	public void deleteUser(String uid) throws Exception;

	public void insertreal1(UserVO userVO) throws Exception;
	public void insertreal2(UserVO userVO) throws Exception;
	public void insertreal3(UserVO userVO) throws Exception;
	public void insertreal4(UserVO userVO) throws Exception;
	public void insertreal5(UserVO userVO) throws Exception;
	public void insertreal6(UserVO userVO) throws Exception;
	
	public boolean loginCheck(UserVO vo, HttpSession session);
	public boolean idCheck(UserVO vo, HttpSession session);

    public UserVO viewMember(UserVO vo);

}
