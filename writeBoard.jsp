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
    <link rel="stylesheet" href="css/writeBoard.css">
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/jquery-ui.min.js"></script> 
    <script src="js/common.js"></script>
    <script src="js/writeBoard.js"></script>
    <script type="text/javascript">
    function readURL(input) {
		if(input.files && input.files[0]) {
			let reader=new FileReader();
			reader.onload=function (event) {
				$('#preview').attr('src',event.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
    function sendfn(){
    	let articleForm=document.articleForm;
		let title=articleForm.title.value;
		let contents=articleForm.contents.value;
		if(title.length == 0 || title == ""){
			alert("제목은 필수입니다. 입력해주세요");
		}else if(contents.length == 0 || contents == ""){
			alert("내용은 필수입니다. 입력해주세요");
		}else{
    	$('#userID').attr("disabled", false);
    	articleForm.submit();
		}	
    }
    
    function listView(obj){
		obj.action="${contextPath}/venti/eventP.do";
		obj.submit();
	}
    </script>
    <style>
    
    </style>
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
                    <c:choose>
						<c:when test="${loginId}">
							<li class="nonlogin"><a href="${contextPath}/login.jsp">로그인</a></li>
	                    	<li class="nonlogin"><a href="${contextPath}/join.jsp">회원가입</a></li>
						</c:when>
	                	<c:otherwise>
	                		<li><a href="${contextPath}/venti/logOut.do">로그아웃</a></li>
	                		<li><a href="${contextPath}/myPage.jsp">마이페이지</a></li>
	                	</c:otherwise>
               		</c:choose>
                </ul>
            </nav>
        </header>
        <div class="sub-bg"></div>
    </div>

    <div class="writeWrap">
        <h2>새 글 쓰기</h2>
        <form class="writeForm" name="articleForm" action="${contextPath}/venti/addArticle.do" method="post" enctype="multipart/form-data"> 
            <table>
                <tr class="writeTR">
                    <td class="writeTRTitle"><h2>제목</h2><img src="image/the_venti-logo.png" class="titleImg"></td>
                    <td><input type="text" size="50" name="title" id="title" class="titleInput" placeholder="제목을 입력해주세요."></td>
                    <td>작성자<input type="text" id="userID" name="id" value="${loginId}" disabled></td>
                </tr>
                <tr class="writeNotice">
                    <td colspan="3">※음란물, 차별, 비하, 혐오 및 초상권, 저작권 침해 게시물은 민, 형사상의 책임을 질 수 있습니다. <input type="button" class="copyRightbtn" value="[게시물 활용 안내]">  <input type="button" class="copyRightbtn2" value="[저작권법 안내]"></td>
                </tr>
                <tr class="textForm">
                    <td colspan="3" >
                        <textarea rows="10" cols="50" maxlength="4000" name="contents" placeholder="글을 작성해주세요." id="contents"></textarea>
                    </td>
                </tr>
                <tr class="imageFile">
                    <td class="borderR">이미지파일 첨부</td>
                    <td class="imageInput"><input type="file" name="imageFileName" onchange="readURL(this)"></td>
                    <td class="imageInput"><img id="preview" src="#"></td>
                </tr>
                <tr class="btnwrap">
                    <td colspan="3">
                        <input type="button" value="글쓰기" onclick="sendfn()">
                        <input type="button" value="목록보기" onclick="listView(this.form)">
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <!-- 팝업1 -->
    <div id="pop_info_1" class="pop_wrap">
        <div class="pop_inner">
            <p class="infoTitle">게시물 활용 안내</p>
            <p class="dsc">이용자가 게시한 게시물의 저작권은 게시한 이용자에게 귀속됩니다. 단, 회사는 서비스의 운영, 전시, 전송, 배포, 홍보의 목적으로 회원의 별도의 허락 없이 무상으로 저작권법에 규정하는 범위 내에서 이용자가 등록한 게시물을 사용 할 수 있습니다.(세부조항 ‘이용약관’ 제 13조 와 동일)</p>
            <input type="button" class="btn_close1" value="닫기">
        </div>
    </div>

    <!-- 팝업2 -->
    <div id="pop_info_2" class="pop_wrap">
        <div class="pop_inner">
            <h3 class="infoTitle">저작권법 안내</h3>
            <p class="dsc">이용자가 불법복제물을 게재, 유통하면 이에 대한 경고 및 불법복제물의 삭제 또는 전송 중단 조치를 할 수 있으며, 경고를 받은 이용자에게 사용 정지를 할 수 있습니다.(관련 법률: 저작권법 제133조 의 제1항 및 제2항)</p>
            <button type="button" class="btn_close2">닫기</button>
        </div>
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