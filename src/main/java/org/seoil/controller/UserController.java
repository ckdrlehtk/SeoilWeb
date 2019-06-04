package org.seoil.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.seoil.example.VO.UserVO;
import org.seoil.service.UserService;;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	@Inject
	private UserService userService;

	@RequestMapping(value = "/getUserList", method = RequestMethod.GET)
	public String getUserList(Model model) throws Exception {
		logger.info("getUserList()....");
		model.addAttribute("userList", userService.getUserList());
		return "user/userList";
	}

	@RequestMapping(value = "/insertUser", method = RequestMethod.POST)
	public String insertUser(@ModelAttribute("userVO") UserVO userVO, RedirectAttributes rttr) throws Exception {
		userService.insertUser(userVO);
		userService.insertreal1(userVO);
		userService.insertreal2(userVO);
		userService.insertreal3(userVO);
		userService.insertreal4(userVO);
		userService.insertreal5(userVO);
		userService.insertreal6(userVO);

		return "loginForm";
	}
	

	
	@RequestMapping(value = "/loginCheck.do")
	    public ModelAndView loginCheck(@ModelAttribute UserVO vo, HttpSession session){
	        boolean result = userService.loginCheck(vo, session);
	        ModelAndView mav = new ModelAndView();
	        if (result == true) { // 로그인 성공
	            mav.setViewName("home");
	            mav.addObject("msg", "success");
	        } else {    // 로그인 실패
	            mav.setViewName("loginForm");
	            mav.addObject("msg", "failure");
	        }
	        return mav;
	    }

	@RequestMapping(value = "/idCheck.do")
    public ModelAndView idCheck(@ModelAttribute UserVO vo, HttpSession session){
        boolean result = userService.idCheck(vo, session);
        ModelAndView mav = new ModelAndView();
        if (result == true) { // 중복아이디가존재
            mav.setViewName("/signupForm");
            mav.addObject("msg2", "same");
        } else {    // 만들수있는아이디
            mav.setViewName("/signupForm");
            mav.addObject("msg2", "notsame");
        }
        return mav;
    }
}
