package org.seoil.example.DAO;

import java.util.List;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.seoil.example.VO.UserVO;;
@Repository
public class UserDAOImpl implements UserDAO {
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<UserVO> getUserList() throws Exception {
		return sqlSession.selectList("org.seoil.controller.userMapper.getUserList");
	}

	@Override
	public UserVO getUserInfo(String uid) throws Exception {
		return sqlSession.selectOne("org.seoil.controller.userMapper.getUserInfo", uid);
	}

	@Override
	public int insertUser(UserVO userVO) throws Exception {
		return sqlSession.insert("org.seoil.controller.userMapper.insertUser", userVO);
	}
	
	@Override
	public int insertreal1(UserVO userVO) throws Exception {
		return sqlSession.insert("org.seoil.controller.userMapper.insertreal1", userVO);
	}
	
	@Override
	public int insertreal2(UserVO userVO) throws Exception {
		return sqlSession.insert("org.seoil.controller.userMapper.insertreal2", userVO);
	}
	@Override
	public int insertreal3(UserVO userVO) throws Exception {
		return sqlSession.insert("org.seoil.controller.userMapper.insertreal3", userVO);
	}
	@Override
	public int insertreal4(UserVO userVO) throws Exception {
		return sqlSession.insert("org.seoil.controller.userMapper.insertreal4", userVO);
	}
	@Override
	public int insertreal5(UserVO userVO) throws Exception {
		return sqlSession.insert("org.seoil.controller.userMapper.insertreal5", userVO);
	}
	@Override
	public int insertreal6(UserVO userVO) throws Exception {
		return sqlSession.insert("org.seoil.controller.userMapper.insertreal6", userVO);
	}

	@Override
	public int updateUser(UserVO userVO) throws Exception {
		return sqlSession.update("org.seoil.controller.userMapper.updateUser", userVO);
	}

	@Override
	public int deleteUser(String uid) throws Exception {
		return sqlSession.delete("org.seoil.controller.userMapper.deleteUser", uid);
	}
	
	 @Override
	    public boolean loginCheck(UserVO vo) {
	        String name = sqlSession.selectOne("org.seoil.controller.userMapper.loginCheck", vo);
	        return (name == null) ? false : true;
	    }
	 @Override
	    public boolean idCheck(UserVO vo) {
	        String uid = sqlSession.selectOne("org.seoil.controller.userMapper.idCheck", vo);
	        return (uid == null) ? false : true;
	    }
	
	 
	 @Override
	    public UserVO viewMember(UserVO vo) {
	        return sqlSession.selectOne("org.seoil.controller.userMapper.viewMember", vo);
	    }
	
}
