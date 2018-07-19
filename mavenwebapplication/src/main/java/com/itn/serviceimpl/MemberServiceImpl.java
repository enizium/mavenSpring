
package com.itn.serviceimpl;

import com.itn.DAO.MemberDAO;
import com.itn.model.Member;
import com.itn.service.MemberService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDAO;

	@Override
	public void addMember(Member member) {

		// perform member processing task

		// insert member into database using MemberDAO
		memberDAO.insert(member);

	}

	@Override
	public List<Member> getAllMember() {
		return memberDAO.selectAll();
	}

	@Override
	public List<Member> getMemberById(int id) {

		return memberDAO.selectById(id);

	}

	@Override
	public void updateMember(Member member) {
		memberDAO.updateMember(member);																// Tools | Templates.
	}

	@Override
	public void deleteMember(Member member) {
		memberDAO.deleteMember(member);																// Tools | Templates.
	}

}
