package kr.ac.kopo.member.service;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.member.dao.MemberDAO;
import kr.ac.kopo.member.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO dao;
	
	@Override
	public MemberVO login(MemberVO member) throws Exception {
		MemberVO logVO = dao.login(member);
		return logVO;
	}
	
	@Override
	public MemberVO checkMember(String id) throws Exception{
		MemberVO checkMem = dao.checkMember(id);
		return checkMem;
	}

	@Override
	public void signUp(MemberVO member) throws Exception {
		dao.signUp(member);
	}

	@Override
	public void updateMember(MemberVO member) {
		dao.update(member);
	}

	@Override
	public void deleteMember(MemberVO member) {
		dao.deleteMember(member);
	}

}
