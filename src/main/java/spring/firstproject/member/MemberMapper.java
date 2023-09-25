package spring.firstproject.member;

import lombok.RequiredArgsConstructor;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

    int joinMember(MemberDto memberDto);        //회원가입

    int nicknameDuplication(MemberDto nickname);   //nickname중복확인

    int emailDuplication(MemberDto email);          //email중복확인

    MemberDto login(MemberDto memberDto);          //login로그인


}
