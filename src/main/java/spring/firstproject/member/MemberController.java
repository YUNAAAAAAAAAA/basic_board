package spring.firstproject.member;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Slf4j
@Controller
public class MemberController {

    MemberService memberService;

    @Autowired
    public MemberController(MemberService memberService){
        this.memberService=memberService;
    }



//로그인 LoginMember
    @GetMapping("/login")
    public String LoginMember(){

        return "login";
    }

    @PostMapping("/login")
    public String LoginMember2(@ModelAttribute MemberDto memberDto, BindingResult bindingResult,Model model, HttpServletRequest request){

        if(bindingResult.hasErrors()){
            return "login";
        }
        MemberDto member = memberService.login(memberDto);

        if(member==null){                         //로그인 실패
            //bindingResult에 오류 담기
            return "redirect:login";//로그인 페이지로 반환
        }

        //Session 생성하기
        HttpSession session = request.getSession(true);
        session.setAttribute("member",member);

        model.addAttribute("member",member);
        return "redirect:boardlist";
    }
//로그인 LoginMember


//로그아웃 Logout

    @GetMapping("/logout")
    public String logout(HttpServletRequest request){
        HttpSession session = request.getSession(false);
        if(session != null){
            session.invalidate();
        }
        return "redirect:/";
    }

//로그아웃 Logout


//회원가입 JoinMember
    @GetMapping("/join")
    public String redirectJoin(@ModelAttribute MemberDto memberDto){

        return "join";
    }

    @PostMapping("/join")
    public String JoinController(@Validated @ModelAttribute MemberDto memberDto, BindingResult bindingResult, Model model){

        if(!memberDto.getPw().equals(memberDto.getPwcheck())){
            bindingResult.rejectValue("pwcheck", "pwerror");
        }
        //validation
        if(bindingResult.hasErrors()){
            return "join";
        }

        memberService.joinMember(memberDto);
        return "redirect:login";
    }

    //nickname 중복확인 fetch
    @ResponseBody
    @PostMapping("/nickcheck")
    public int nickCheck(@ModelAttribute MemberDto memberDto){

        int cnt = memberService.nicknameDuplication(memberDto);
        return cnt;
    }

    //email 중복확인 fetch
    @ResponseBody
    @PostMapping("/emailcheck")
    public int emailCheck(@RequestBody MemberDto memberDto){

        int cnt2 = memberService.emailDuplication(memberDto);
        return cnt2;
    }

//회원가입 JoinMember






}
