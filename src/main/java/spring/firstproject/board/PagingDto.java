package spring.firstproject.board;

import lombok.Data;

@Data
public class PagingDto {

    private int page = 1;         //현재 페이지
    private int pageNum = 15;     //한 페이지당 게시글 수
    private int offset;           //(page-1)*pageNum, 시작글번호

    private int startPage;        //한 페이지에 보여줄 시작페이지
    private int lastPage;         //한 페이지에 보여줄 끝페이지
    private int endPage;          //끝페이지
    private int totalPost;         //전체 게시물 수
}
