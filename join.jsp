<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/join.css">
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/jquery-ui.min.js"></script> 
    <script src="js/common.js"></script>
    <script src="js/join.js"></script>
    <script type="text/javascript">
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
    	})};
    </script>
</head>
<body>
    <div id="wrapper">
        <header>
            <nav class="main-menu">
                <a href="${contextPath}/"><img class="logo" src="image/logo.png"></a>
                <ul class="bot-menu">
                    <li class="smenu"><a href="#">BRAND</a>
                        <ul class="ssmenu">
                            <li><a href="#">MGC 소개</a></li>
                            <li><a href="#">MGC 연혁</a></li>
                            <li><a href="#">BI</a></li>
                        </ul>
                    </li>
                    <li class="smenu"><a href="#">MENU</a>
                        <ul class="ssmenu">
                            <li><a href="#">음료</a></li>
                            <li><a href="#">푸드</a></li>
                        </ul>
                    </li>
                    <li class="smenu"><a href="#">STORE</a>
                        <ul class="ssmenu">
                            <li><a href="#">제휴</a></li>
                            <li><a href="#">매장찾기</a></li>
                        </ul>
                    </li>
                    <li class="smenu"><a href="#">FRANCHISE</a>
                        <ul class="ssmenu">
                            <li><a href="#">가맹절차</a></li>
                            <li><a href="#">개설비용</a></li>
                            <li><a href="#">인테리어</a></li>
                            <li><a href="#">창업문의</a></li>
                        </ul>
                    </li>
                    <li class="smenu"><a href="#">COMMUNITY</a>
                        <ul class="ssmenu">
                            <li><a href="${contextPath}/eventP.jsp">이벤트</a></li>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">고객의 소리</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="top-menu">
                   <li class="nonlogin"><a href="${contextPath}/login.jsp">로그인</a></li>
	               <li class="nonlogin"><a href="${contextPath}/join.jsp">회원가입</a></li>
                </ul>
            </nav>
        </header>
        <div class="sub-bg"></div>
    </div>

    <div class="joinWrapper">
        <h1>회원가입</h1>
        <form id="frmMember" class="joinForm" action="/TheVenti/venti/addMember.do" method="post">
            <p class="idP commonp">아이디</p>
            <input type="text" name="id" id="id" class="idInput bigInput" placeholder="영어와 숫자를 포함한 8~12자리를 입력해주세요." required>
            <small class="iderror">아이디 형식이 맞지 않습니다!</small>
            <small class="idcorrect">아이디 형식이 올바릅니다!</small>
            <input type="button" onclick="idDuplicate()" class="duplicate" value="아이디 중복확인하기">
            <input type="hidden" id="checked_id" name="checked_id" value="">
            <p class="pwP commonp">비밀번호</p>
            <input type="password" name="pw" id="pw" class="pwInput bigInput" placeholder="영어,숫자,특수문자를 포함한 8~16자리를 입력해주세요." required>
            <small class="pwerror">비밀번호 형식이 맞지 않습니다!</small>
            <small class="pwcorrect">비밀번호 형식이 올바릅니다!</small>
            <p class="repwP commonp">비밀번호 확인</p>
            <input type="password" name="repw" id="repw" class="repwInput bigInput" placeholder="비밀번호와 동일하게 입력해주세요." required>
            <small class="repwerror">비밀번호가 일치하지 않습니다!</small>
            <small class="repwcorrect">비밀번호가 일치합니다!</small>
            <p class="nameP commonp">이름</p>
            <input type="text" name="name" id="name" class="nameInput bigInput" placeholder="이름을 입력해주세요." required>
            <small class="nameerror">이름 형식이 맞지 않습니다!</small>
            <small class="namecorrect">이름 형식이 올바릅니다!</small>
            <p class="emailP commonp">이메일</p>
            <input type="text" name="email" id="email" class="emailInput bigInput" placeholder="이메일을 입력해주세요 EX)TheVenti@naver.com" required>
            <small class="emailerror">이메일 형식이 맞지 않습니다!</small>
            <small class="emailcorrect">이메일 형식이 올바릅니다!</small>
            <p class="birthP commonp">생년월일</p>
            <input type="text" name="birth" id="birth" placeholder="-를 빼고 입력해주세요. EX)19990126" class="birthInput bigInput" required>
            <small class="birtherror">생년월일 형식이 맞지 않습니다!</small>
            <small class="birthcorrect">생년월일 형식이 올바릅니다!</small>
            <p class="telP commonp">휴대전화</p>
            <input type="text" name="tel" id="tel" placeholder="-를 빼고 입력해주세요. EX)01011112222" class="telInput bigInput" required>
            <small class="telerror">전화번호 형식이 맞지 않습니다!</small>
            <small class="telcorrect">전화번호 형식이 올바릅니다!</small>
            <input type="button" value="가입하기" onclick="fn_sendMember()" class="submitbtn">
            <input type="hidden" name="command" value="addMember">
            <a href="index.html" class="backTo">돌아가기</a>
        </form>
    </div>

    <footer>
        <div class="topFooter">
            <div class="footerWrap">
                <div class="tfContainer">
                    <div class="footerLogo"><img src="image/30927906_L2cwaujW_20221104113944-removebg-preview.png"></div>
                    <div class="footerContent">
                        <ul class="footerUL">
                            <li><a href="#">더벤티 소개</a></li>
                            <li><a href="#">제휴/제안</a></li>
                            <li><a href="#">고객상담</a></li>
                            <li><a href="#">개인정보 처리방침</a></li>
                            <li><a href="#">이용약관</a></li>
                        </ul>
                    </div>
                    <div class="FooterSNS">
                        <a href="https://www.youtube.com/channel/UCOOsAnrpEx4rWHEBg7xa8qQ"><img src="image/유튜브2-removebg-preview.png"></a>
                        <a href="https://www.instagram.com/theventi_official/"><img src="image/인스타그램1-removebg-preview.png"></a>
                        <a href="https://www.facebook.com/theventikr"><img src="image/Facebook-Logo-PNG-Photos-removebg-preview.png"></a>
                        <a href="https://blog.naver.com/theventilove"><img src="image/네이버블로그-removebg-preview.png"></a>
                    </div>
                </div>
            </div>  
            <div class="botFooter">
                <div class="botFWrap">
                    <div class="bfcontainer">
                        <div class="BFR">
                            <p class="telC1">가맹문의</p>
                            <p class="tel1">1661-4553</p>
                            <p class="telC2">고객센터</p>
                            <p class="tel2">1644-0513</p>
                        </div>
                        <div class="BFL">
                            <p class="theVentiBusan">더벤티코리아 부산</p>
                            <p class="tvb-add">부산광역시 해운대구 센텀서로 30, 2507호(KNN타워)</p>
                            <p class="theVentiSeoul">더벤티코리아 서울 </p>
                            <p class="tvs-add">서울특별시 구로구 디지털로33길 27 408~414호</p>
                            <p class="BFL-content">(주)에스앤씨세인 사업자번호 : 534-88-00122 대표이사 : 박수암 강삼남 최준경</p>
                            <p class="copyRight">Copyright © THEVENTI. All right Reserved. Created By Masstige.</p>
                        </div>
                    </div>
                </div>        
            </div>
        </div>
    </footer>
</body>
</html>