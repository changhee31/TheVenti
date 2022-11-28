function fn_sendMember(){
        var id=$("#id").val();
        var pw=$("#pw").val();
		var name=$("#name").val();
        var email=$("#email").val();
		var birth=$("#birth").val();
        var tel=$("#tel").val();
        let idCheck = /^[a-zA-Z0-9]{8,12}$/;
        let pwCheck =  /^(?=.*[a-zA-Z])((?=.*\d)(?=.*\W)).{8,16}$/;
        let nameCheck = /^[가-힣]{2,15}$/;
        let birthCheck=/^[0-9]{8}$/;
        let telCheck=/^[0-9]{11}$/;
        let emailCheck = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
        if(!idCheck.test($("#id").val())){
            alert("ID 형식이 맞지 않습니다.");
            return false;
        }else if(!pwCheck.test($("#pw").val())){
            alert("PW 형식이 맞지 않습니다.");
            return false;
        }else if($("#pw").val() != $("#repw").val()){
            alert("비밀번호가 다릅니다");
            return false;
        }else if(!nameCheck.test($("#name").val())){
            alert("이름 형식이 맞지 않습니다.");
            return false;
        }else if(!emailCheck.test($("#email").val())){
            alert("이메일 형식이 맞지 않습니다.");
        }
        else if(!birthCheck.test($("#birth").val())){
            alert("생일 형식이 맞지 않습니다.");
            return false;
        }else if(!telCheck.test($("#tel").val())){
            alert("전화번호 형식이 맞지 않습니다.");
            return false;
        }else if($("#checked_id").val() != 'y' || $("#checked_id").val() == ""){
            alert("아이디 중복체크를 해주세요.")
            }else {
			if(confirm("회원가입을 진행하시겠습니까?")){
				document.getElementById("id").disabled=false;
				alert("회원가입이 완료되었습니다.");
				$("#frmMember").submit();
			}

        }
    }

function idDuplicate(){
    	var id=$("#id").val();
    	console.log(id);
    	$.ajax({
    		url : "${contextPath}/venti/idDupli.do",
    		method : "post",
    		data:{id:id},
    		success:function(data){
    			if(data == "0"){		
    				alert('사용 불가능한 아이디입니다.');
    			}else if(data == "1"){
    				let idCheck = /^[a-zA-Z0-9]{8,12}$/;
    				if(idCheck.test($("#id").val())){
    					alert("사용가능한 아이디입니다.");
        				document.getElementById("id").disabled=true;
        				$("input[name=checked_id]").val('y');
    				}else{
    					alert("형식이 맞지 않습니다.");	
    				}
    			}
    		}
    	})}

$(function () {
/*경고창 유효성검사*/
    /*아이디 유효성검사*/
    let idCheck = /^[a-zA-Z0-9]{8,12}$/;
    $('#id').keyup(function() {
        if(!idCheck.test($("#id").val())){
            $(".iderror").show();
            $(".idcorrect").hide();
        }else if(idCheck.test($("#id").val())){
            $(".idcorrect").show();
            $(".iderror").hide();
        }
    });
    /*아이디 유효성검사*/
    /*비밀번호 유효성검사*/
    let pwCheck =  /^(?=.*[a-zA-Z])((?=.*\d)(?=.*\W)).{8,16}$/;
    $('#pw').keyup(function() {
        if(!pwCheck.test($("#pw").val())){
            $(".pwerror").show();
            $(".pwcorrect").hide();
        }else if(pwCheck.test($("#pw").val())){
            $(".pwcorrect").show();
            $(".pwerror").hide();
        }
        var pwd1 = $("#pw").val();
        var pwd2 = $("#repw").val();
    if ( pwd1 != '' && pwd2 == '' ) {
        null;
    } else if (pwd1 != "" || pwd2 != "") {
        if (pwd1 == pwd2) {
            $(".repwcorrect").show();
            $(".repwerror").hide();
        } else {
            $(".repwerror").show();
            $(".repwcorrect").hide();
        }
    }
    });
    /*비밀번호 유효성검사*/

    /*비밀번호 일치검사*/
    $('#repw').keyup(function() {
        var pwd1 = $("#pw").val();
        var pwd2 = $("#repw").val();
    if ( pwd1 != '' && pwd2 == '' ) {
        null;
    } else if (pwd1 != "" || pwd2 != "") {
        if (pwd1 == pwd2) {
            $(".repwcorrect").show();
            $(".repwerror").hide();
        } else {
            $(".repwerror").show();
            $(".repwcorrect").hide();
        }
    }
    });
    /*비밀번호 일치검사*/

    /*이름 유효성검사*/
    let nameCheck = /^[가-힣]{2,15}$/;
    $('#name').keyup(function() {
        if(!nameCheck.test($("#name").val())){
            $(".nameerror").show();
            $(".namecorrect").hide();
        }else if(nameCheck.test($("#name").val())){
            $(".namecorrect").show();
            $(".nameerror").hide();
        }
    });
    /*이름 유효성검사*/

    /*이메일 유효성검사*/
    let emailCheck = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
    $('#email').keyup(function() {
        if(!emailCheck.test($("#email").val())){
            $(".emailerror").show();
            $(".emailcorrect").hide();
        }else if(emailCheck.test($("#email").val())){
            $(".emailcorrect").show();
            $(".emailerror").hide();
        }
    });
    /*이메일 유효성검사*/

    /*생년월일 유효성검사*/
    let birthCheck=/^[0-9]{8}$/;
    $('#birth').keyup(function() {
        if(!birthCheck.test($("#birth").val())){
            $(".birtherror").show();
            $(".birthcorrect").hide();
        }else if(birthCheck.test($("#birth").val())){
            $(".birthcorrect").show();
            $(".birtherror").hide();
        }
    });
    /*생년월일 유효성검사*/

    /*전화번호 유효성검사*/
    let telCheck=/^[0-9]{11}$/;
    $('#tel').keyup(function() {
        if(!telCheck.test($("#tel").val())){
            $(".telerror").show();
            $(".telcorrect").hide();
        }else if(telCheck.test($("#tel").val())){
            $(".telcorrect").show();
            $(".telerror").hide();
        }
    });
    /*전화번호 유효성검사*/
/*경고창 유효성검사*/
});