package com.marshmellow.example;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import org.seoil.example.DAO.MemberDAO;
import org.seoil.example.VO.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/*.xml" })
public class MemberDAOTest {
	@Inject
	private MemberDAO dao;

	@Test
	public void testTime() throws Exception {
		System.out.println("현재 시간 : " + dao.getTime());
	}

	@Test
	public void testInsertMember() throws Exception {
		MemberVO vo = new MemberVO();
		vo.setUserId("marshmello01");
		vo.setUserPw("marshmello01");
		vo.setUserName("마시멜로01");
		vo.setEmail("marshmello01@tistory.com");
		dao.insertMeber(vo);
	}

}
