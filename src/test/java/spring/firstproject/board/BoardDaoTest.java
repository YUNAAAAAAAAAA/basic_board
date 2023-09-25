package spring.firstproject.board;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class BoardDaoTest {

    BoardDao boardDao;

    @Autowired
    public BoardDaoTest(BoardDao boardDao) {
        this.boardDao = boardDao;
    }

    @Test
    void test() {
        DetailPageDto detailPageDto = new DetailPageDto();
        detailPageDto.setUid(1);
        detailPageDto.setTitle("TT");
        detailPageDto.setWriter("tester");
        detailPageDto.setContent("GG");


        DetailPageDto result = boardDao.updateContent(detailPageDto);
        Assertions.assertThat(result.getUid()).isEqualTo(detailPageDto.getUid());

    }
}