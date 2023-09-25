package spring.firstproject.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDao {

    BoardMapper boardMapper;

    @Autowired
    public BoardDao(BoardMapper boardMapper){
        this.boardMapper=boardMapper;
    }

//게시글 리스트 BoardList
    public List<BoardListDto> findAllBoardList(PagingDto pagingDto){
        return boardMapper.findAllBoardList(pagingDto);
    }

    public int totalPost(){
        return boardMapper.totalPost();
    }
//게시글 리스트 BoardList



//글 쓰기 페이지 Board
    public int InsertBoard(BoardDto boardDto){
        return boardMapper.insertBoard(boardDto);
    }
//글 쓰기 페이지 Board



//게시글 상세 DetailPage
    public DetailPageDto detailPage(DetailPageDto detailPageDto){
        return boardMapper.detailPage(detailPageDto);
    }
//게시글 상세 DetailPage



//글 삭제 DeleteContent
    public int deleteContent(DetailPageDto detailPageDto){
        return boardMapper.deleteContent(detailPageDto);
    }
//글 삭제 DeleteContent



//글 수정 UpdateContent
    public int updateContent(DetailPageDto detailPageDto){
        return boardMapper.updateContent(detailPageDto);
    }
//글 수정 UpdateContent
}
