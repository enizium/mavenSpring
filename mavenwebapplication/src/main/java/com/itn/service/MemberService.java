
package com.itn.service;

import com.itn.model.Member;
import java.util.List;

public interface MemberService {
    public void addMember(Member member);
    
    public List<Member> getAllMember();
    
    public List<Member> getMemberById(int id);
    
    public void updateMember(Member member);
    
    public void deleteMember(Member member);
    
    
    
    
}
