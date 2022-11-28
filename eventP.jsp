<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<c:set var="endP" value="${result}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${contextPath}/css/normalize.css">
    <link rel="stylesheet" href="${contextPath}/css/common.css">
    <link rel="stylesheet" href="${contextPath}/css/eventPWrap.css">
    <script src="${contextPath}/js/jquery-3.6.0.min.js"></script>
    <script src="${contextPath}/js/jquery-ui.min.js"></script> 
    <script src="${contextPath}/js/common.js"></script>
    <script src="${contextPath}/js/eventP.js"></script>
    <script>
    $("a").click(function() {
        toggleClass(".active-color");
    });
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
                            <li><a href="${contextPath}/eventP.jsp">이벤트</a></li>
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

    <div class="eventPWrap">
        <div class="EtopWrap">
            <h1>이벤트 게시판</h1>
            <div class="eventBtnWrap">
                <div class="newBtn btnwrap">
                	<a href="${contextPath}/venti/eventP.do?howtoS=writeDate">최신순</a>
                </div>
                <div class="viewnewBtn btnwrap">
                	<a href="${contextPath}/venti/eventP.do?howtoS=count">조회순</a>

                </div>
                <div class="likeBtn btnwrap">
                	<a href="${contextPath}/venti/eventP.do?howtoS=recommend">추천순</a>
                </div>
            </div>
        </div>
        <table>
            <tr>
                <th width="10%">글번호</th><th width="10%">작성자</th><th width="44%">제목</th><th width="20%">작성일</th><th width="8%">조회</th><th width="8%">추천</th>
            </tr>
            <c:choose>
					<c:when test="${empty articleList}">
						<tr>
							<td align="center" colspan="4">등록된 글이 없습니다.</td>
						</tr>
					</c:when>
				<c:when test="${!empty articleList}">
					<c:forEach var="article" items="${articleList}" varStatus="articleNum">
						<tr class="tableTD">
							 <td>${article.boardno}</td>
							 <td>${article.id}</td>
							 <td><a href="${contextPath}/venti/viewArticle.do?boardno=${article.boardno}">${article.title}</a>
							 <td>${article.writeDate}</td>
							 <td>${article.count}</td>
							 <td>${article.recommend}</td>
						</tr>
					</c:forEach>
				</c:when>
			</c:choose>
        </table>
		
		<div class="paging">
	        <c:if test="${pageVO.startPage > pageVO.pageBlock}">
	        	<a href="${contextPath}/venti/eventP.do?pageNum=${pageVO.startPage - pageVO.pageBlock}">prev</a>
	        </c:if>
	        
			<c:forEach begin="${pageVO.startPage}" end="${pageVO.endPage}" var="i" >
				<a href="${contextPath}/venti/eventP.do?pageNum=${i}">${i}</a>
			</c:forEach>
	
			<c:if test="${pageVO.endPage < pageVO.totalPage}">
	        	<a href="${contextPath}/venti/eventP.do?pageNum=${pageVO.startPage + pageVO.pageBlock}">next</a>
	        </c:if>
        </div>

        <div class="evnetPanchor">
            <a href="${contextPath}/">돌아가기</a>
            <c:choose>
				<c:when test="${loginId == null}">
					<a href="${contextPath}/login.jsp">로그인하기</a>
				</c:when>
               	<c:otherwise>
               		<a href="${contextPath}/writeBoard.jsp">글쓰기</a>
               	</c:otherwise>
             </c:choose> 
        </div>
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