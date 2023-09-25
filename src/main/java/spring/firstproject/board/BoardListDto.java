package spring.firstproject.board;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class BoardListDto {

    private int uid;
    private String title;
    private String writer;
    private LocalDateTime regdate;

}
