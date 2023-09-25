//Controller 가기 전 Last Check
let duplication = false;

const nicknameInput = document.querySelector('#nickname');
nicknameInput.addEventListener('input', () => {
    duplication = false;
});

const lastCheck = () => {
    let form = document.querySelector('#form');
    let email = document.querySelector('#email').value;
    let checknum = document.querySelector('#checknum').value;
    let pw = document.querySelector('#pw').value;
    let pwcheck = document.querySelector('#pwcheck').value;
    let nickname = document.querySelector('#nickname').value;
    var reg = /\s/g;


        if(!validator.isEmail(email)){                                 //이메일 email
             alert("이메일을 입력하고 인증해주세요.");
             form.email.focus();
             return false;
        }

        if(reg.test(checknum)||checknum==""){                          //인증번호 checknum
            alert("인증번호를 입력해주세요.");
            form.checknum.focus();
            return false;
        }

        if(validator.isEmpty(pw)||validator.matches(pw,reg)){         //비밀번호 pw
            alert("띄어쓰기없는 비밀번호를 입력해주세요.");
            form.pw.focus();
            return false;
        }else if(pw.length<=7||pw.length>=13){
            alert("비밀번호(8~12자리)를 입력해주세요.");
            form.pw.focus();
            return false;
        }

        if(pwcheck != pw){                                              //비밀번호확인 pwcheck
             alert("비밀번호가 일치하지 않습니다.")
             form.pwcheck.focus();
             return false;
        }

        if(reg.test(nickname)||nickname==""){                            //닉네임 nickname
             alert("공백 없이 별명을 입력하고(2~10글자) 중복확인을 해주세요.");
             form.nickname.focus();
             return false;
        }else if(nickname.length<=1||nickname.length>=11){
            alert("공백 없이 별명을 입력하고(2~10글자) 중복확인을 해주세요.");
            form.nickname.focus();
            return false;
        }


        if(!duplication){
            alert("별명 중복검사를 해주세요.")
            return false;
        }
}

//------------------------------------------------------------------------------------

//nickname중복확인
const checkNickname = async()=>{
    let nickerror = document.querySelector('#nickerror');
    let nickname = document.querySelector('#nickname');

    if(nickname.value){
          const cnt = await fetch('http://localhost:8080/nickcheck',{
            method: 'POST',
            headers: {
                       'Content-Type': 'application/x-www-form-urlencoded'
                    },
            body: "nickname="+ nickname.value
             }).then(res => res.text());

            if(cnt >= 1){
                nickerror.innerHTML = '사용중인 별명입니다.';
                nickerror.style.color = 'red';
                duplication = false;
            }else if(cnt == 0){
            	nickerror.innerHTML = '사용가능한 별명입니다.';
            	nickerror.style.color = 'blue';
            	duplication = true;
            }
    }

}
//--------------------------------------------------------------------------------------
//pw, pw확인
const checkSignUpForm = () =>{
    let pwInput = document.querySelector('#pw').value;
    let pwcheckInput = document.querySelector('#pwcheck').value;
    let sameP = document.querySelector('#same');
    let nonesameP = document.querySelector('#nonesame');

    if(pwInput==pwcheckInput){
        nonesameP.style.display = 'none';
        sameP.style.display = 'block';
    }else{
        sameP.style.display = 'none';
        nonesameP.style.display = 'block';
        return false;
    }

}
//--------------------------------------------------------------------------------

//email중복확인
const checkEmail = async()=>{

    let checknum = document.querySelector('#checknum'); //email인증번호
    let emailmsg = document.querySelector('#emailmsg');
    let email = document.querySelector('#email');

    if(email.value){
        let obj = {email : email.value}

            const cnt2 = await fetch('http://localhost:8080/emailcheck',{
                method: 'POST',
                headers: {
                           'Content-Type': 'application/json'
                },
                body: JSON.stringify(obj)
            }).then(res => res.text());

            if(cnt2 == 1){
                emailmsg.innerHTML = '사용중인 이메일 입니다.';
                emailmsg.style.color = 'red';
            }else if(cnt2 == 0){
                emailmsg.innerHTML = '사용가능한 이메일 입니다.';
                emailmsg.style.color = 'blue';
                checknum.style.display = 'block';
            }
    }

}

//-------------------------------------------------------------------------------------

