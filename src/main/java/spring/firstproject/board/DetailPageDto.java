package spring.firstproject.board;

import lombok.Data;

@Data
public class DetailPageDto {

    private int uid;
    private String title;
    private String content;
    private String writer;
}
