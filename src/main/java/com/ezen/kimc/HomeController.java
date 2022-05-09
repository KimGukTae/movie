package com.ezen.kimc;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ezen.kimc.MemberDTO;
import com.ezen.kimc.MemberInter;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/index2")
	public String ko() {
		return "loginbody";
	}
	
	@RequestMapping(value = "/index")
	public String ko1() {
		return "main";
	}
	
	@RequestMapping(value = "/loginform")// 로그인 가입페이지로가기
	public String ko2() {
		return "loginform"; 
	}
	
	@RequestMapping(value = "/membersave")
	public String ko3(HttpServletRequest request,Model mo) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String admin = request.getParameter("admin");
		MemberInter mdao = sqlSession.getMapper(MemberInter.class);
		if(admin.equals("관리자")) {
			mdao.memberinsert(id,pw,admin);
			return "index";
		}
		else if(admin.equals("관객")) {
			mdao.memberinsert(id,pw,admin);
			return "index";
		}
		return "index";
	}
	
	@RequestMapping(value = "/memberout")
	public String ko5(HttpServletRequest request,Model mo,HttpServletResponse response,RedirectAttributes res) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String admin = request.getParameter("admin");
		MemberInter mdao = sqlSession.getMapper(MemberInter.class);
		ArrayList<MemberDTO> list = mdao.memberout();
		mo.addAttribute("list", list);
		return "memberout";
	}
	
	
	@RequestMapping(value = "/loginsave")
	public ModelAndView ko6(HttpServletRequest request,Model mo,HttpServletResponse response,RedirectAttributes res) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		MemberInter mdao = sqlSession.getMapper(MemberInter.class);
		MemberDTO member = mdao.login(id,pw);
		ModelAndView mav = new ModelAndView();
		if(member !=null) {
			HttpSession hs = request.getSession();
			hs.setAttribute("member", member);
			hs.setAttribute("islogon", true);
			
			mav.setViewName("redirect:index");
		}
		else {
			res.addAttribute("result", "loginfail");
			mav.setViewName("redirect:index");
		}
		return mav;
	}
	
	@RequestMapping(value = "/ticketing") 
	public String ko6(HttpServletRequest request,Model mo) {
		String id = request.getParameter("id");
		if(id != null) {
			MemberInter mdao = sqlSession.getMapper(MemberInter.class);
			ArrayList<MemberDTO> list = mdao.ticketing(id);
			mo.addAttribute("list", list);
			return "ticketingsave";
		}
		return "";
	}
	
	
}
