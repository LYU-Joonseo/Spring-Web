package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.kopo.board.service.BoardService;
import kr.ac.kopo.board.vo.BoardVO;
import kr.ac.kopo.member.vo.MemberVO;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/board")
	public String selectBoard(HttpServletRequest request) throws Exception {

		List<BoardVO> list = boardService.selectAll();
//		for(BoardVO board : list) {
//			System.out.println(board);
//		}
		request.setAttribute("list", list);
		
		return "board/list";		// "WEB-INF/views/" + board/list + ".jsp"
	}
	
	@GetMapping("/board/detail")
	public String selectByNo(@RequestParam("no") int no, HttpServletRequest request) throws Exception{
		BoardVO board = boardService.selectByNo(no);
		request.setAttribute("board", board);
//		model.addAttribute("board", board);		<= request가 아닌 모델 객체불렀을때 사용
		
		return "board/detail";
	}
	
	@GetMapping("/board/{no}")
	public String selectByNo2(@PathVariable("no") int no, HttpServletRequest request) throws Exception {
		boardService.updateView(no);
		BoardVO board = boardService.selectByNo(no);
		request.setAttribute("board", board);
//		model.addAttribute("board", board);		<= request가 아닌 모델 객체불렀을때 사용
		
		return "board/detail";
	}
	
	@GetMapping("/board/write")
	public void writeForm(Model model, HttpSession session){
		MemberVO logVO = (MemberVO)session.getAttribute("logVO");
		
		BoardVO board = new BoardVO();
		board.setWriter(logVO.getId());
		model.addAttribute("boardVO", board);
	}
	
	@PostMapping("/board/write")
	public String write(@Valid BoardVO board, BindingResult result) throws Exception{

		if(result.hasErrors()) {
			return "board/write";
		}
		boardService.addBoard(board);
		return "redirect:/board";
	}
	
	@GetMapping("/mypage/list")
	public String selectMy(HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("logVO");
		List<BoardVO> list = boardService.selectMy(member.getId());
		request.setAttribute("list", list);
		return "member/list";
	}
}