package spring.firstproject.board;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import spring.firstproject.member.MemberDto;

import java.util.List;

@Slf4j
@Controller
public class BoardController {

    BoardService boardService;

    @Autowired
    public BoardController(BoardService boardService){
        this.boardService=boardService;
    }

//게시글 리스트 BoardList
    @RequestMapping("/boardlist")
    public String BoardListController(@SessionAttribute(name = "member", required = false) MemberDto member, Model model, PagingDto pagingDto){
        List<BoardListDto> boardList = boardService.findAllBoardList(pagingDto);

        model.addAttribute("boardlist",boardList);
        model.addAttribute("pagingDto", pagingDto);


        if(member != null){
            model.addAttribute("member",member);
        }

        return "boardlist";
    }
//게시글 리스트 BoardList



//글 쓰기 페이지 Board
    @GetMapping("/board")
    public String redirectBoard(@SessionAttribute(name = "member", required = false) MemberDto member,@ModelAttribute BoardDto boardDto,Model model){

        if(member == null){
            return "login";
        }

        model.addAttribute("member",member);
        return "board";
    }

    @PostMapping("/board")
    public String BoardController(@SessionAttribute(name = "member", required = false) MemberDto member, Model model, @Validated @ModelAttribute BoardDto boardDto, BindingResult bindingResult){

        if(bindingResult.hasErrors()){   //validate
            return "board";
        }

        if(member != null){
            model.addAttribute("member", member);
        }

        boardService.InsertBoard(boardDto);
        return "redirect:boardlist";
    }
//글 쓰기 페이지 Board



//게시글 상세 DetailPage
    @GetMapping("/boardlist/detailpage")
    public String DetailPageController(@SessionAttribute(name = "member", required = false) MemberDto member, Model model,@RequestParam int uid){
        model.addAttribute("detailpage", boardService.detailPage(uid));

        if(member != null){
            model.addAttribute("member",member);
        }
        return "detailpage";
    }
//게시글 상세 DetailPage



//글 삭제 DeleteContent
    @GetMapping("deletecontent")
    public String DeletePage(Model model, @ModelAttribute DetailPageDto detailPageDto){
        model.addAttribute("deletecontent", boardService.deletecontent(detailPageDto));
        return "redirect:boardlist";
    }
//글 삭제 DeleteContent



//글 수정 UpdateContent

    @GetMapping("/boardlist/updatecontent")
    public String updateBoard(Model model, @ModelAttribute DetailPageDto detailPageDto, @RequestParam int uid){
        model.addAttribute("detailpage", boardService.detailPage(uid));

        return "updatecontent";
    }

    @PostMapping("/boardlist/updatecontent")
    public String updatecontent(Model model, @ModelAttribute DetailPageDto detailPageDto, RedirectAttributes redirectAttributes){
        boardService.updateContent(detailPageDto);
        model.addAttribute("updatecontent", boardService.updateContent(detailPageDto));


        redirectAttributes.addAttribute("uid",detailPageDto.getUid());
        return "redirect:/boardlist/detailpage";
    }


//글 수정 UpdateContent
}
