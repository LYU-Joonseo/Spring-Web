package kr.ac.kopo.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.member.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public MemberVO login(MemberVO member) throws Exception{
		MemberVO log = session.selectOne("dao.MemberDAO.login", member);
		return log;
	}

	@Override
	public MemberVO checkMember(String id) {
		MemberVO check = session.selectOne("dao.MemberDAO.ckMember", id);
		return check;
	}

	@Override
	public void signUp(MemberVO member) {
		session.insert("dao.MemberDAO.insertMember", member);
	}

	@Override
	public void update(MemberVO member) {
		session.update("dao.MemberDAO.updateMember", member);
	}

	@Override
	public void deleteMember(MemberVO member) {
		session.delete("dao.MemberDAO.delete", member);
	}
}
