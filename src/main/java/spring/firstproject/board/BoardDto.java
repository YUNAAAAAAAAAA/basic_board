package spring.firstproject.board;

import lombok.Data;

import javax.validation.constraints.NotEmpty;

@Data
public class BoardDto {

    @NotEmpty(message = "제목을 입력해주세요.")
    private String title;

    @NotEmpty(message = "내용을 입력해주세요.")
    private String content;

    @NotEmpty(message = "작성자를 입력해주세요.")
    private String writer;
}
