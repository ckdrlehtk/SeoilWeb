package org.seoil.service;

import java.util.List;
import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.seoil.example.DAO.UserDAO;
import org.seoil.example.VO.UserVO;

@Service
public class UserServiceImpl implements UserService {
	private static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	@Inject
	private UserDAO userDAO;

	@Override
	public List<UserVO> getUserList() throws Exception {
		return userDAO.getUserList();
	}

	@Override
	public UserVO getUserInfo(String uid) throws Exception {
		return userDAO.getUserInfo(uid);
	}

	@Override
	public void insertUser(UserVO userVO) throws Exception {
		userDAO.insertUser(userVO);
	}
	
	@Override
	public void insertreal1(UserVO userVO) throws Exception {
		userDAO.insertreal1(userVO);
	}
	
	@Override
	public void insertreal2(UserVO userVO) throws Exception {
		userDAO.insertreal2(userVO);
	}
	
	@Override
	public void insertreal3(UserVO userVO) throws Exception {
		userDAO.insertreal3(userVO);
	}
	
	@Override
	public void insertreal4(UserVO userVO) throws Exception {
		userDAO.insertreal4(userVO);
	}
	
	@Override
	public void insertreal5(UserVO userVO) throws Exception {
		userDAO.insertreal5(userVO);
	}
	
	@Override
	public void insertreal6(UserVO userVO) throws Exception {
		userDAO.insertreal6(userVO);
	}

	@Override
	public void updateUser(UserVO userVO) throws Exception {
		userDAO.updateUser(userVO);
	}

	@Override
	public void deleteUser(String uid) throws Exception {
		userDAO.deleteUser(uid);
	}
}
