package spring.firstproject.member;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

    MemberMapper memberMapper;

    @Autowired
    public MemberDao(MemberMapper memberMapper){
        this.memberMapper=memberMapper;
    }

//회원가입 JoinMember


    public int joinMember(MemberDto memberDto){
        return memberMapper.joinMember(memberDto);
    }                                              //회원가입

    public int nicknameDuplication(MemberDto nickname){
        return memberMapper.nicknameDuplication(nickname);
    }                                                      //nickname 중복확인

    public int emailDuplication(MemberDto email){
        return memberMapper.emailDuplication(email);
    }                                                //email 중복확인

//회원가입 JoinMember

//로그인 login
    public MemberDto login(MemberDto memberDto){
        return memberMapper.login(memberDto);
    }
//로그인 login

}
