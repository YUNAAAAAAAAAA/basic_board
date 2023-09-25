package spring.firstproject.board;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class BoardServiceTest {

    BoardService boardService;

    @Autowired
    public BoardServiceTest(BoardService boardService) {
        this.boardService = boardService;
    }

    @Test
    void 테스트() {
        boardService.detailPage(1);
    }

}