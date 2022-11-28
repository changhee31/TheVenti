<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style type="text/css">
	#btn_modify {
	display : none;
	}
</style>
<script src="${contextPath}/js/jquery-3.6.0.min.js"></script>
<script src="${contextPath}/js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="${contextPath}/css/normalize.css">
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/viewArticle.css">
<script src="${contextPath}/js/common.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function backToList(obj) {
		obj.action="${contextPath}/venti/eventP.do?howtoS=writeDate";
		obj.submit();
	}
	function fn_enable(obj) {
		document.getElementById("id_title").disabled=false;
		document.getElementById("id_content").disabled=false;
		let imgName=document.getElementById("id_imageFileName");
		if(imgName != null) {
			imgName.disabled=false;
		}
		document.getElementById("btn_modify").style.display="block";
		document.getElementById("all_btn").style.display="none";
	}

	
	function like() {
		var id=$("#userid").val();
		var boardno=$("#boardno").val();
		console.log(id,boardno);
		$.ajax({
			url : "${contextPath}/venti/likeArticle.do",
			method : "post",
			data : {boardno : boardno,id : id},
			success:function(data){
				if(data == 1){
					alert('추천되었습니다.');
				}else if(data == 0){
					alert('추천취소 되었습니다.');
				}else {
					alert('오류발생.');
				}
			}
		})};
	
	function report() {
		var id=$("#userid").val();
		var boardno=$("#boardno").val();
		console.log(id,boardno);
		$.ajax({
			url : "${contextPath}/venti/reportArticle.do",
			method : "post",
			data : {boardno : boardno,id : id},
			success:function(data){
				if(data == 1){
					alert('신고되었습니다.');
				}else if(data == 0){
					alert('중복신고 하실 수 없습니다.');
				}else {
					alert('오류발생.');
				}
			}
		})};
		
	function fn_remove_article(url, articleNo) {
		let newForm=document.createElement("form");
		newForm.setAttribute("method","post");
		newForm.setAttribute("action",url);
		let articleNoInput=document.createElement("input");
		articleNoInput.setAttribute("type","hidden");
		articleNoInput.setAttribute("name","boardno");
		articleNoInput.setAttribute("value",boardno);
		newForm.appendChild(articleNoInput);
		document.body.appendChild(newForm);
		$('#userID').attr("disabled", false);
		newForm.submit();
	}
	//제이쿼리로 이미지 파일 첨부시 미리보기 기능 구현
	function readURL(input) {
		if(input.files && input.files[0]) {
			let reader=new FileReader();
			reader.onload=function (event) {
				$('#preview').attr('src',event.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
</head>
<body>
<div id="wrapper">
        <header>
            <nav class="main-menu">
                <a href="${contextPath}/"><img class="logo" src="${contextPath}/image/logo.png"></a>
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
                            <li><a href="${contextPath}/venti/eventP.do?howtoS=writeDate">이벤트</a></li>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">고객의 소리</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="top-menu">
                     <c:choose>
						<c:when test="${loginId == null}">
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
        <h2>게시글</h2>
        <form class="writeForm" name="articleForm" action="${contextPath}/venti/modArticle.do" method="post" enctype="multipart/form-data"> 
            <table>
            		 <tr class="writeTR">
	                     <td class="writeTRTitle"><h2>제목</h2><img src="${contextPath}/image/the_venti-logo.png" class="titleImg"></td>
	                     <td colspan="2"><input type="text" size="50" name="title" class="titleInput" placeholder="제목을 입력해주세요." value="${article.title}"  id="id_title" disabled></td>
	                 </tr>
	                 <tr class="writeNotice">
	                     <td colspan="3"><h4 class="paddingL">작성자</h4><p>${article.id}</p><h4>글번호</h4><p>${article.boardno}</p><h4>조회수</h4><p>${article.count}</p><h4>작성일</h4><p>${article.writeDate}</p>
	                     <input type="hidden" name="boardno" id="boardno" value="${article.boardno}">
	                     <input type="hidden" name="userid" id="userid" value="${article.id}">
	                     </td>
	                 </tr>
                <tr class="textForm">
                    <td colspan="3" >
                        <textarea rows="20" cols="50" maxlength="4000" name="contents" placeholder="내용을 입력해주세요." id="id_content" disabled>${article.contents}</textarea>
                    </td>
                </tr>
                <c:if test="${not empty article.imageFileName}">
	               <tr class="imageFile">
						<td>이미지</td>
						<td>
							<input type="hidden" name="originalFileName" value="${article.imageFileName}">
							<img src="${contextPath}/download.do?boardno=${article.boardno}&imageFileName=${article.imageFileName}" id="preview">
						</td>

					<td>
						<input colspan="2" type="file" name="imageFileName" id="id_imageFileName" disabled onchange="readURL(this)"> 
					</td>
				</tr>
                </c:if>
                </table>
                
                <div class="likebtn">
                	<input type="button" value="추천하기" onclick="like()"> 
                </div>
                <div class="reportbtn">
                	<input type="button" value="산고하기" onclick="report()"> 
                </div>
                
                <div class="btnbigwrap" align="center">
                	<c:if test="${loginId == null}">
	                	<div class="btnwrap">
	                		<input type="button" value="목록보기" onclick="backToList(this.form)">
	                	</div>
                	
                	</c:if>
                	<c:if test="${article.id == loginId || loginId == 'admin'}">
                        <div class="btnwrap" id="all_btn">                	  
                            <input type="button" value="목록보기" onclick="backToList(this.form)">
                            <input type="button" value="수정하기" onclick="fn_enable(this.form)">
                            <input type="button" value="삭제하기" onclick="fn_remove_article('${contextPath}/venti/removeArticle.do',${article.boardno})">
                        </div>
                        <div class="btnwrap" id="btn_modify">
                            <input type="button" value="목록보기" onclick="backToList(this.form)">
                            <input type="button" value="수정반영하기" onclick="fn_modify_article(articleForm)" > 
                            <input type="button" value="취소" onclick="backToList(articleForm)">
                        </div>
                    </c:if>
               </div>
            
        </form>
    </div>

    <footer>
        <div class="topFooter">
            <div class="footerWrap">
                <div class="tfContainer">
                    <div class="footerLogo"><img src="${contextPath}/image/30927906_L2cwaujW_20221104113944-removebg-preview.png"></div>
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
                        <a href="https://www.youtube.com/channel/UCOOsAnrpEx4rWHEBg7xa8qQ"><img src="${contextPath}/image/유튜브2-removebg-preview.png"></a>
                        <a href="https://www.instagram.com/theventi_official/"><img src="${contextPath}/image/인스타그램1-removebg-preview.png"></a>
                        <a href="https://www.facebook.com/theventikr"><img src="${contextPath}/image/Facebook-Logo-PNG-Photos-removebg-preview.png"></a>
                        <a href="https://blog.naver.com/theventilove"><img src="${contextPath}/image/네이버블로그-removebg-preview.png"></a>
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