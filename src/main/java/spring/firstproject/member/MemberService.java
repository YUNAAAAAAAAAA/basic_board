package spring.firstproject.member;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

    MemberDao memberDao;

    @Autowired
    public MemberService(MemberDao memberDao){
        this.memberDao=memberDao;
    }

//회원가입 JoinMember

    public int joinMember(MemberDto memberDto){
        return memberDao.joinMember(memberDto);
    }                                                         //회원가입

    public int nicknameDuplication(MemberDto nickname){
        return memberDao.nicknameDuplication(nickname);
    }                                                        //nickname 중복확인

    public int emailDuplication(MemberDto email){
        return memberDao.emailDuplication(email);
    }                                                        //email 중복확인
//회원가입 JoinMember



//로그인 loginMember
    public  MemberDto login(MemberDto memberDto){
        return memberDao.login(memberDto);
    }
//로그인 loginMember
}
