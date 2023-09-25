package spring.firstproject.board;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardMapper {

//게시글 리스트 BoardList
    List<BoardListDto> findAllBoardList(PagingDto pagingDto);

    int totalPost();
//게시글 리스트 BoardList



//글 쓰기 페이지 Board
    int insertBoard(BoardDto boardDto);
//글 쓰기 페이지 Board



//게시글 상세 DetailPage
    DetailPageDto detailPage(DetailPageDto detailPageDto);
//게시글 상세 DetailPage



//글 삭제 DeleteContent
    int deleteContent(DetailPageDto detailPageDto);
//글 삭제 DeleteContent



//글 수정 UpdateContent
    int updateContent(DetailPageDto detailPageDto);
//글 수정 UpdateContent
}
