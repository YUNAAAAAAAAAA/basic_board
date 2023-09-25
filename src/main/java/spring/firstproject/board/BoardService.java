package spring.firstproject.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardService {

    BoardDao boardDao;

    @Autowired
    public BoardService(BoardDao boardDao){
        this.boardDao=boardDao;
    }

//게시글 리스트 BoardList
    public List<BoardListDto> findAllBoardList(PagingDto pagingDto){

        pagingDto.setOffset((pagingDto.getPage()-1)*pagingDto.getPageNum());
        pagingDto.setLastPage((int)Math.ceil((double) pagingDto.getPage()/10)*10);
        pagingDto.setStartPage(pagingDto.getLastPage()-10+1);
        pagingDto.setEndPage((int)Math.ceil((double) boardDao.totalPost()/pagingDto.getPageNum()));

        return boardDao.findAllBoardList(pagingDto);
    }

    public int totalPost(){
        return boardDao.totalPost();
    }
//게시글 리스트 BoardList



//글 쓰기 페이지 Board
    public int InsertBoard(BoardDto boardDto){
        return boardDao.InsertBoard(boardDto);
    }
//글 쓰기 페이지 Board



//게시글 상세 DetailPage
    public DetailPageDto detailPage(int uid){
        DetailPageDto detailPageDto = new DetailPageDto();
        detailPageDto.setUid(uid);
        return boardDao.detailPage(detailPageDto);
    }
//게시글 상세 DetailPage



//글 삭제 DeleteContent
    public int deletecontent(DetailPageDto detailPageDto){
        return boardDao.deleteContent(detailPageDto);
    }
//글 삭제 DeleteContent



//글 수정 UpdateContent
    public int updateContent(DetailPageDto detailPageDto){
        return boardDao.updateContent(detailPageDto);
    }
//글 수정 UpdateContent
}
