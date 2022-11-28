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
<title>The Venti 로그인</title>
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/common.css">
<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/jquery-ui.min.js"></script> 
<script src="js/common.js"></script>
<link rel="stylesheet" href="css/login.css">
<script src="js/login.js"></script>
<script>
function login(){
	var id=$("#id_val").val();
	var pass=$("#pw_val").val();
	
	$.ajax({
		url : "${contextPath}/venti/login.do",
		method : "post",
		data:{id:id, pw:pass},
		success:function(data){
			if(data == "0"){
				alert('아이디 또는 비밀번호가 틀립니다.');
				nextPage="/index.jsp";
			}else if(data == "1"){
				alert("로그인 되었습니다.");
				location.href="${contextPath}/index.jsp";
			}
		}
	});
}
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
    
    <div class="loginForm">
        <form class="login" name="login_form" action="${contextPath}/venti/login.do" method="post">
            <div class="loginM">
                <h2 class="messeage">The Venti에 오신것을 환영합니다.</p>
            </div>
            <input type="text" id="id_val" name="id" placeholder="아이디"><br>
            <input type="password" id="pw_val" name="pw" placeholder="비밀번호"><br><br>
            <input type="button" value="로그인" onclick="login()" class="loginbtn">
            <p class="loginContent1">* 타 사이트와 비밀번호를 동일하게 사용할 경우 도용의 위험이 있으므로, 정기적인 비밀번호 변경을 해주시길 바랍니다</p>
            <p class="loginContent2">* The Venti의 공식 홈페이지는 Internet Explorer 9.0 이상, Chrome, Firefox, Safari 브라우저에 최적화 되어있습니다.</p>
            <a href="join.html" class="joinBTN">회원가입</a>
            <a href="#" class="findIdBTN">ID 찾기</a>
            <a href="#" class="findPwBTN">PW 찾기</a>
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

