<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/myPage.css">
</head>
<body>
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
                <li><a href="${contextPath}/venti/logOut.do">로그아웃</a></li>
	            <li><a href="${contextPath}/myPage.jsp">마이페이지</a></li>
            </ul>
        </nav>
    </header>
    <div class="sub-bg"></div>
</div>

    <div class="PageWrap">
        <form action="${contextPath}/venti/modMember.do?id=${loginId}" method="post" class="myPage">
            <h1 class="myPageTitle">나의 회원정보</h1>
            <div class="bageInfoBox">
                <table border="0" cellpadding="0" cellspacing="0">
                    <colgroup>
                        <col width="25%">
                        <col width="75%">
                    </colgroup>
                    <tr>
                        <th>아이디</th>
                        <td><input type="text" name="id" value="${loginData.id}" disabled class="disabled"></td>
                    </tr>
                    <tr>
                        <th>비밀번호</th>
                        <td><input type="password" name="pw" value="${loginData.pw}"></td>
                    </tr>
                    <tr>
                        <th>이름</th>
                        <td><input type="text" name="name" value="${loginData.name}" disabled class="disabled"></td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><input type="text" name="email" value="${loginData.email}"></td>
                    </tr>
                    <tr>
                        <th>생년월일</th>
                        <td><input type="text" name="birth" value="${loginData.birth}" disabled class="disabled"></td>
                    </tr>
                    <tr>
                        <th>전화번호</th>
                        <td><input type="text" name="tel" value="${loginData.tel}"></td>
                    </tr>
                    <tr>
                        <th>가입일</th>
                        <td><input type="text" name="joinDate" value="${loginData.joinDate}" disabled class="disabled"></td>
                    </tr>
                </table>
                <div class="btnWrap">
                    <input type="submit" value="수정하기" class="submitbtn">
                    <input type="reset" value="다시 입력" class="resetbtn">
                </div>
            </div>
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