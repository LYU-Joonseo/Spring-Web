package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;

//기존의 사용하던 컨트롤러 세션방식
@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@GetMapping("/login")
	public String loginForm() {
		return "member/login";
	}
	
	@PostMapping("/login")
	public String login(MemberVO member, HttpServletRequest request) throws Exception{
		MemberVO log = service.login(member);
		if(log != null) {
			HttpSession session = request.getSession();
			session.setAttribute("logVO", log);
			return "redirect:/";
		}else {
			return "member/login";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@GetMapping("/signUp")
	public String singUpForm(Model model) {
		MemberVO member = new MemberVO();
		model.addAttribute("memberVO", member);
		return "member/signUp";
	}
	
	@PostMapping("/signUp")
	public String signUp(@Valid MemberVO member, BindingResult result) throws Exception{
		MemberVO checkMember = service.checkMember(member.getId());
		if(result.hasErrors()) {			
			return "member/signUp";
		}else {
			if(checkMember == null) {
				service.signUp(member);
				return "redirect:/";
			}else {
				return "member/signUp";				
			}
		}
	}
	
	@GetMapping("/myPage")
	public String myPageForm() {
		return "member/myPage";
	}
	
	@GetMapping("/mypage/modify")
	public String modifyForm(Model model, HttpSession session) {
		MemberVO log = (MemberVO)session.getAttribute("logVO");
		
		MemberVO member = new MemberVO();
		member.setId(log.getId());
		model.addAttribute("memberVO", member);
		return "member/modify";
	}
	
	@PostMapping("/mypage/modify")
	public String modify(@Valid MemberVO member, BindingResult result) throws Exception{
		if(result.hasErrors()) {			
			return "member/modify";
		}else {
			service.updateMember(member);
			return "redirect:/";
		}
	}
	
	@GetMapping("/member/deleteMember")
	public String deleteMember() {
		return "member/deleteMember";
	}
	
	@GetMapping("/delete")
	public String delete(HttpSession session) {
		MemberVO member = (MemberVO)session.getAttribute("logVO");
		service.deleteMember(member);
		session.invalidate();
		return "redirect:/";
	}
}
