 
package com.itn.DAO;

import com.itn.model.Member;
import java.util.List;

public interface MemberDAO {
    
    public void insert(Member member);
    
    public List<Member> selectAll();
    
    public List<Member> selectById(int id);
    
    public void updateMember(Member member);
    
    public void deleteMember(Member member);
    
}
