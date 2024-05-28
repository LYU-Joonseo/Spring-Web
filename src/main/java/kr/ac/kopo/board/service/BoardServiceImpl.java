package kr.ac.kopo.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.board.dao.BoardDAO;
import kr.ac.kopo.board.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO boardDao;
	
	@Override
	public List<BoardVO> selectAll() throws Exception {
		List<BoardVO> list = boardDao.selectAll();
		return list;
	}

	@Override
	public BoardVO selectByNo(int no) throws Exception {
		BoardVO board = boardDao.selectByNo(no);
		return board;
	}

	@Override
	public void addBoard(BoardVO board) throws Exception{
		boardDao.insert(board);
	}
	
	@Override
	public void updateView(int no) throws Exception{
		boardDao.upViewCnt(no);
	}

	@Override
	public List<BoardVO> selectMy(String id) throws Exception {
		List<BoardVO> list = boardDao.selectMy(id);
		return list;
	}
}
