package com.itn.controller;

import com.itn.model.Member;
import com.itn.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
//@RequestMapping("/Admin/Memeber")
public class MemberController {

    @Autowired
    MemberService memberService;

    @RequestMapping(value = "/Admin/Member/Add", method = RequestMethod.GET)
    public String addMember() {
        return "addmember";
    }

    @RequestMapping(value = "/Admin/Member/Add", method = RequestMethod.POST)
    public String saveMember(@RequestParam("name") String name,
            @RequestParam("phone") long phone,
            @RequestParam("address") String address) {
        Member member = new Member(name, phone, address);
        System.out.println(member.getAddress());

        memberService.addMember(member);
        //using service method insertMember 
        return "redirect:/Admin/Member/Display";
    }
    
   @GetMapping("/Admin/Member/Display")
   public String showMember(Model model) {
	   model.addAttribute("memberdata", memberService.getAllMember());
	   return "displaymember";
   }
   
   @GetMapping("/Admin/Member/Edit/{id}")
   public String editMember(@PathVariable("id") int id, Model model) {
	   model.addAttribute("modeldata", memberService.getMemberById(id));
	   
	   return "editmember";
   }
   
   @PostMapping("/Admin/Member/Update")
   public String updateMember(@ModelAttribute("member") Member member) {
	
	   memberService.updateMember(member);
	   return "redirect:/Admin/Member/Display";
   }
   
   @GetMapping("/Admin/Member/Delete/{id}")
	public String delteMember(@PathVariable("id") int id) {
	   Member member =new Member();
	   member.setId(id);
	   memberService.deleteMember(member);
 
	   return "redirect:/Admin/Member/Display";
   }
		
   
}
