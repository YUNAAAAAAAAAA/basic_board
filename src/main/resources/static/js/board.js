const lastCheck = () => {
    let form = document.querySelector('#form');
    let title = document.querySelector('#title').value;
    let content = document.querySelector('.ck-content').innerHTML;
    let writer = document.querySelector('#writer').value;
    var reg = /\s/g;

        if(reg.test(title)||title==""){                          //제목 title
            alert("제목을 입력해주세요.");
            return false;
        }

        if(reg.test(content)||content==""){                            //내용 content
            alert("내용을 입력해주세요.");
            return false;
        }

        if(reg.test(writer)||writer==""){                            //작성자 writer
            alert("작성자를 입력해주세요.");
            return false;
        }

}