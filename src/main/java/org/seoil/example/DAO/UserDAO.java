package org.seoil.example.DAO;

import java.util.List;
import org.seoil.example.VO.UserVO;;

public interface UserDAO {
	public List<UserVO> getUserList() throws Exception;

	public UserVO getUserInfo(String uid) throws Exception;

	public int insertUser(UserVO userVO) throws Exception;
	public int insertreal1(UserVO userVO) throws Exception;
	public int insertreal2(UserVO userVO) throws Exception;
	public int insertreal3(UserVO userVO) throws Exception;
	public int insertreal4(UserVO userVO) throws Exception;
	public int insertreal5(UserVO userVO) throws Exception;
	public int insertreal6(UserVO userVO) throws Exception;
	public int updateUser(UserVO userVO) throws Exception;

	public int deleteUser(String uid) throws Exception;
    public boolean loginCheck(UserVO vo);
    public boolean idCheck(UserVO vo);
	public UserVO viewMember(UserVO vo);
  


}
