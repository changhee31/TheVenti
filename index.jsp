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
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="author" content="changhee Lee">
        <meta name="keywords" content="The Venti"> 
        <meta name="description" content="The Venti, 메뉴소개, 신메뉴"> 
        <meta name="robots" content="all"> 
        <title>The Venti</title>
        <link rel="stylesheet" href="css/normalize.css">
        <script src="js/jquery-3.6.0.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/css/swiper.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/js/swiper.min.js"></script> 
        <script src="js/index.js"></script>
        <script src="js/common.js"></script>
        <link rel="stylesheet" href="css/common.css">
        <link rel="stylesheet" href="css/index.css">
    </head>
<body>
    <div id="wrapper">
        <header>
            <div class="main-menu">
                <a href="${contextPath}/"><img class="logo" src="image/logo.png"></a>
                <nav class="menuwrap">
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
                </nav>
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
            </div>
        </header>
        <div class="sub-bg"></div>
        
       <section>
            <article class="animationWrapper">
                    <div class="swiper-container mainslider">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <a href="#"><img class="slider_image" src="image/slide1.jpg" alt="슬라이더사진1"></a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#"><img class="slider_image" src="image/slide2.jpg" alt="슬라이더사진2"></a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#"><img class="slider_image" src="image/slide3.jpg" alt="슬라이더사진3"></a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#"><img class="slider_image" src="image/slide4.png" alt="슬라이더사진4"></a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#"><img class="slider_image" src="image/slide5.jpg" alt="슬라이더사진5"></a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#"><img class="slider_image" src="image/slide6.jpg" alt="슬라이더사진5"></a>
                            </div>
                    </div>
                    <div class="swiper-pagination spn"></div>
                </div>
            </article>

            <article class="tab_slide_menu">
                <div class="menu-container">
                    <h1 class="menuTitle">BEST MENU</h1>
                    <img src="image/colored-logo.png" alt="theVenti로고" class="logoTheVenti">
                    <ul class="tabs">
                        <li class="tab-link tab-link1 current" data-tab="tab-1">커피</li>
                        <li class="tab-link tab-link2" data-tab="tab-2">베버리지</li>
                        <li class="tab-link tab-link3" data-tab="tab-3">아이스 블렌디드</li>
                        <li class="tab-link tab-link4" data-tab="tab-4">주스/에이드</li>
                        <li class="tab-link tab-link5" data-tab="tab-5">버블티/티</li>
                    </ul>
                    <a href="#">모든 메뉴 보기</a>
            
                    <div id="tab-1" class="tab-content current">
                        <div class="slide1 menu-slide">
                            <div class="swiper-container mainSlider">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <img src="image/coffee/americano.jpg" class="slideIMG">
                                        <h4>아이스 아메리카노</h4>
                                        <p class="menu-content">더벤티의 깊고 진한 커피풍미를 느낄 수 있는 아이스 아메리카노</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/coffee/honeydark.jpg" class="slideIMG">
                                        <h4>꿀 다크리카노</h4>
                                        <p class="menu-content">다크로스트 원두의 짙은 맛에 달콤한 벌꿀이 어우러져 달콤하게 즐길 수 있는 꿀 아메리카노</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/coffee/카페라떼.jpg" class="slideIMG">
                                        <h4>카페라떼</h4>
                                        <p class="menu-content">더벤티의 진한 에스프레소에 부드러운 우유가 어우러진 고소한 카페라떼</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/coffee/바닐라딥라떼.jpg" class="slideIMG">
                                        <h4>바닐라딥라떼</h4>
                                        <p class="menu-content">더벤티의 진한 에스프레소에 고급스러운 바닐라 풍미가 부드럽게 어우러진 바닐라딥라떼</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/coffee/Einspenner.jpg" class="slideIMG">
                                        <h4>아인슈페너</h4>
                                        <p class="menu-content">더벤티만의 특별한 레시피로 만든 크림을 얹어 부드럽고 달콤하게 마실 수 있는 아인슈페너 (하프벤티 사이즈)</p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-button-prev Lbtn"></div>
                            <div class="swiper-button-next Rbtn"></div>
                        </div>
                    </div>
            
                    <div id="tab-2" class="tab-content">
                        <div class="slide2 menu-slide">
                            <div class="swiper-container">
                                <div class="swiper-wrapper msw">
                                    <div class="swiper-slide">
                                        <img src="image/beverage/chocolatte.jpg" class="slideIMG Bimg">
                                        <h4 class="cLatte">초콜릿 라떼</h4>
                                        <p class="menu-content">진하고 풍부한 초콜릿과 부드러운 우유가 어우러진 달콤한 초코라떼</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/beverage/greentealatte.jpg" class="slideIMG">
                                        <h4>녹차 라떼</h4>
                                        <p class="menu-content">제주 유기농 녹차와 부드러운 우유가 어우러진 깔끔하고 쌉싸름한 핫 녹차라떼</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/beverage/loyalmilktea.jpg"class="slideIMG">
                                        <h4>로얄 밀크티</h4>
                                        <p class="menu-content">최적의 비율로 블렌딩한 홍차와 우유가 만나 깊고 풍부한 맛과 향을 담은 밀크티</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/beverage/misut.jpg" class="slideIMG">
                                        <h4>미숫가루</h4>
                                        <p class="menu-content">우리 곡식으로 만든 미숫가루와 부드러운 우유가 어우러진 고소한 미숫가루</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/beverage/strowberry.jpg" class="slideIMG">
                                        <h4>딸기라떼</h4>
                                        <p class="menu-content">딸기과육이 듬뿍 들어간 딸기청에 부드러운 우유가 어우러진 새콤달콤 딸기라떼</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/beverage/sweetpotato.jpg" class="slideIMG">
                                        <h4>고구마 라떼</h4>
                                        <p class="menu-content">달콤한 고구마와 부드러운 우유가 어우러져 든든하게 즐기는 고구마 라떼</p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-button-prev Lbtn"></div>
                            <div class="swiper-button-next Rbtn"></div>
                        </div>
                    </div>
                    <div id="tab-3" class="tab-content">
                        <div class="slide3 menu-slide">
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <img src="image/iceblended/chocoshake.jpg" class="slideIMG">
                                        <h4>초코 쉐이크</h4>
                                        <p class="menu-content">달콤하고 진한 초콜렛과 부드러운 우유가 합쳐진 달콤 부드러운 초코 쉐이크</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/iceblended/cocochoco.jpg"class="slideIMG">
                                        <h4>코코 초코</h4>
                                        <p class="menu-content">달콤한 초콜릿에 바삭하고 달콤한 코코볼을 가득담아 두배의 감동이있는 코코 초코</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/iceblended/cocomilk.jpg" class="slideIMG">
                                        <h4>코코 밀크 프라페</h4>
                                        <p class="menu-content">카라멜과 초콜릿이 어우러진 부드러운 밀크프라페에 코코볼을 가득담아 달콤함을 두배로 즐기는 프라페</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/iceblended/esspressoshake.jpg" class="slideIMG">
                                        <h4>에스프레소 쉐이크</h4>
                                        <p class="menu-content">에스프레소의 그윽하고 진한 맛과 달달한 쉐이크가 만나 아주 잘 어울리는 쉐이크</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/iceblended/malcha.jpg" class="slideIMG">
                                        <h4>말차 초코칩 프라페</h4>
                                        <p class="menu-content">초코칩을 넣은 녹차프라페에 진한 초콜릿을 듬뿍 발라, 보는 즐거움까지 더한 프라페</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/iceblended/mintchoco.jpg" class="slideIMG">
                                        <h4>민트 초코칩 프라페</h4>
                                        <p class="menu-content">시원하고 청량한 민트와 초코칩을 넣은 프라페에 진한 초콜릿을 듬뿍 발라, 보는 즐거움까지 더한 프라페</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/iceblended/strowberrychoco.jpg" class="slideIMG">
                                        <h4>딸기 초코칩 프라페</h4>
                                        <p class="menu-content">딸기와 초코칩을 넣은 바닐라 프라페에 진한 초콜릿을 듬뿍 발라, 보는 즐거움까지 더한 프라페</p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-button-prev Lbtn"></div>
                            <div class="swiper-button-next Rbtn"></div>
                        </div>
                    </div>
            
                    <div id="tab-4" class="tab-content">
                        <div class="slide4 menu-slide">
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <img src="image/juice/osadang.png" class="slideIMG">
                                        <h4>오.사.당</h4>
                                        <p class="menu-content">오렌지, 사과, 당근, 감귤을 듬뿍 담아 상큼하고 건강하게 즐기는 과채주스</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/juice/pobelma.png" class="slideIMG">
                                        <h4>포.벨.마</h4>
                                        <p class="menu-content">포도, 블루베리, 자색고구마, 사과를 듬뿍 담아 달콤하고 건강하게 즐기는 과채주스</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/juice/saddalbi.png" class="slideIMG">
                                        <h4>사.딸.비</h4>
                                        <p class="menu-content">사과, 딸기, 비트, 레몬, 당근을 듬뿍 담아 새콤하고 건강하게 즐기는 과채주스</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/juice/bluelemon.jpg" class="slideIMG">
                                        <h4>블루 레몬에이드</h4>
                                        <p class="menu-content">새콤달콤한 레몬청과 탄산수가 만나 청량하고 풍부한 맛의 블루레몬에이드</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/juice/cherrycoke.jpg"class="slideIMG">
                                        <h4>체리 코크</h4>
                                        <p class="menu-content">새콤한 체리청과 톡 쏘는 코카콜라가 만나 두가지 맛이 어우러진 체리 코크</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/juice/greengrage.jpg" class="slideIMG">
                                        <h4>청포도 에이드</h4>
                                        <p class="menu-content">국내산 청포도로 만든 청포도청과 탄산수가 만나 청량하고 풍부한 맛의 청포도에이드</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/juice/melonsoda.jpg" class="slideIMG">
                                        <h4>멜론 소다</h4>
                                        <p class="menu-content">메론맛에이드에 바닐라아이스크림을 올려 청량함과 부드러움을 동시에 즐길 수 있는 에이드 [배달시 아이스크림은 음료안에 넣어 제공됩니다]</p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-button-prev Lbtn"></div>
                            <div class="swiper-button-next Rbtn"></div>
                        </div>
                    </div>
                    <div id="tab-5" class="tab-content">
                        <div class="slide5 menu-slide">
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <img src="image/tea/applemangoyogu.jpg" class="slideIMG">
                                        <h4>애플 망고 요구르탱</h4>
                                        <p class="menu-content">달콤한 애플망고 요구르트에 탱글탱글한 화이트펄을 더한 애플망고요구르탱</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/tea/appleyuja.jpg"class="slideIMG">
                                        <h4>애플 유자티</h4>
                                        <p class="menu-content">은은한 사과향 블렌딩티와 유자가 조화롭게 어우러진 블랜딩 티</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/tea/blackfirst.jpg" class="slideIMG">
                                        <h4>흑설탕 버블티</h4>
                                        <p class="menu-content">최상급 비정제사탕수수당 모리셔스 흑당에 쫄깃쫄깃한 타피오카 펄을 가득 담은 흑설탕버블티</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/tea/greengrapeyogu.jpg" class="slideIMG">
                                        <h4>청포도 요구르탱</h4>
                                        <p class="menu-content">달콤한 청포도 요구르트에 탱글탱글한 화이트펄을 더한 청포도요구르탱</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/tea/stroyogu.jpg" class="slideIMG">
                                        <h4>딸기 요구르탱</h4>
                                        <p class="menu-content">달콤한 딸기 요구르트에 탱글탱글한 화이트펄을 더한 딸기 요구르탱</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/tea/peachicetea.jpg" class="slideIMG">
                                        <h4>복숭아 아이스티</h4>
                                        <p class="menu-content">진한 블랙퍼스트 홍차에 달콤한 복숭아가 어우러진 복숭아아이스티</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="image/tea/loyalmilk.jpg" class="slideIMG">
                                        <h4>로얄 밀크 버블티</h4>
                                        <p class="menu-content">부드럽고 달달한 밀크티에 쫄깃쫄깃한 타피오카 펄을 가득 담은 로얄 밀크 버블티</p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-button-prev Lbtn"></div>
                            <div class="swiper-button-next Rbtn"></div>
                        </div>
                    </div>
                </div>
            </article>
            <article class="memberShip">
                <h2>Only to Member</h2>
                <p>회원들만의 다양한 혜택을 받아가세요.</p>
                <a href="#">MORE</a>
            </article>

            <article class="notice">
                <div class="noticeWrap">
                    <h1>공지사항</h1>
                    <div class="line"></div>
                    <p class="noticeP">The Venti 소식을 전해드립니다.</p>
                    <div class="noticeContent">
                        <div class="noticeC1">
                            <h3 class="noticeTitle"><a href="#">더벤티 신규 앱 출시 안내</a></h3>
                            <p class="notieDate">2022.07.11</p>
                            <p class="noticeWrite">더 벤티 앱이 리뉴얼했습니다. 스탬프 및 쿠폰은 정상 이관되나 최초 1회에 한하여 신규가입이 필요합니다.</p>
                        </div>
                        <div class="noticeC2">
                            <h3 class="noticeTitle"><a href="#">더벤티X메이플스토리 캐릭터 <br> 콜드컵 교환 안내</a></h3>
                            <p class="notieDate">2022.08.26</p>
                            <p class="noticeWrite">뚜껑 상부와 하부를 결합하는 과정에서 일부 제품의 결합이 약한것이 확인되었습니다. 이에 보상대책이 준비되었으니 확인 부탁드립니다. </p>
                        </div>
                        <div class="noticeC">
                            <h3 class="noticeTitle"><a href="#">더벤티 일부 메뉴 <br> 가격 조정 안내</a></h3>
                            <p class="notieDate">2022.06.08</p>
                            <p class="noticeWrite">항상 더벤티를 사랑해주시는 고객님 감사합니다. 코로나 19여파로 인해 일부 품목의 가격을 인상하기로 하였습니다 확인부탁드립니다.</p>
                        </div>
                    </div>
                    <a href="#">+ 더보기</a>
                </div>
            </article>

            <article class="preEnv">
                <div class="swrap">
                    <div class="prewrap">
                            <div class="left">
                                <h1>환경까지 생각하는<br>RA 인증커피로,</h1>
                                <p>더 다양하게, 더 맛있게, 더 벤티하게</p>
                            </div>
                            <div class="right">
                                <h1>RA 인증이란?</h1>
                                <p>RA (Rainforest Alliance)인증은 엄격한 환경 및<br> 
                                    사회적 기준을 충족하는 농장, 산림 및 기업에 <br>
                                    수여하는 인증마크입니다.</p>
                                <img src="image/ra.png">
                            </div>
                    </div>
                    <div class="bot">
                        <h3>✓더벤티는 RA 인증 커피를 사용하여 환경 보호에 동참합니다.</h3>
                    </div>
                </div>
            </article>
            
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
    </div>
</body>
<script src="js/index.js"></script>
</html>