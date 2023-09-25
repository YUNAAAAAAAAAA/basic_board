package spring.firstproject.member;

import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;


@Data
public class MemberDto {

    @NotEmpty(message = "이메일을 입력해주세요.")
    private String email;

    @NotEmpty
    private String checknum;


    @Size(min = 8, max = 12, message = "8~12자 이내로 작성해주세요.")
    private String pw;

    @NotEmpty(message = "비밀번호를 한번 더 입력해주세요.")
    private String pwcheck;


    @Size(min = 2, max = 10, message = "2~10자 이내로 작성해주세요.")
    private String nickname;

}
