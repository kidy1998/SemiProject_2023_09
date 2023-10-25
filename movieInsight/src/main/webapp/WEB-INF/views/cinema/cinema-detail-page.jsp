<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


 <script src="https://kit.fontawesome.com/69a462bb6c.js" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="/movieInsight/resources/css/cinema/cinema-detail-page.css">
</head>
<body>
	
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
		
	<main>
        <section class="cinema">
            <div>
                <img src="/movieInsight/resources/images/cinema/${cinemaInfo.cinemaImg}" id="cgv_yongsan">
            </div>
            
            <div>
                <div class="cinema_title">
                    <div class="star">
                        <a href="#">
                            <i class="fa-solid fa-star" id="star"></i>            
                        </a> 
                    </div>                 
                    <div>
                       ${cinemaInfo.cinemaName}  
                    </div>
                    <div>
                        <div>
                            <img src="/movieInsight/resources/images/cinema/popcon.png">
                        </div>
                        <div>
                            <img src="/movieInsight/resources/images/cinema/popcon.png">
                        </div>
                        <div>
                            <img src="/movieInsight/resources/images/cinema/popcon.png">
                        </div>
                        <div>
                            <img src="/movieInsight/resources/images/cinema/popcon.png">
                        </div>
                        <div>
                            <img src="/movieInsight/resources/images/cinema/popcon.png">
                        </div>
                    </div>
                </div>
                <div class="cinema_description">
                    <div>
                        <div>
                            주소 : ${cinemaInfo.cinemaAddress}                       </div>
                        <div>    
                            연락처 : ${cinemaInfo.cinemaContact} 
                        </div>
                        <div>
                            수용인원 : ${cinemaInfo.cinemaMaxInclude} 명 
                        </div>
                              <div>   
                            특별관 : ${cinemaInfo.cinemaSpecialHall}
                        </div>
                        <div>
                           <a href=${cinemaInfo.cinemaLink} target="_blank">바로가기</a> 
                        </div>
                    </div>
                </div>
            </div>
        </section>


    <section class="screening_movie">
            <div>상영중인 영화</div>
            

            <c:choose>
                	<%-- 1) 검색 결과가 비어있는 경우  --%>
                <c:when test="${empty movieList}">

                    <div class = "screening_movie_detail"  id = "none-list">
                        검색결과가 존재하지 않습니다.
                    </div>

                </c:when>
                    
                        <%-- 2) 검색 결과가 존재하는 경우 --%>
                <c:otherwise> 
                    
                    <c:forEach items = "${movieList}"  var="movie" >
                        <div class="screening_movie_detail">
                            <a href="/movieInsight/movie/${movie.movieNo}">
                                <div>

                                    <div>			
                                        <img src="/movieInsight/resources/images/movie/${movie.movieImg}">
                                    </div>
                                    <div>
                                        <div>${movie.movieTitle}</div>
                                        <div>${movie.movieAge} / ${movie.movieGenre} / ${movie.movieRunningTime}분</div>
                                        <div>${movie.movieReleaseDate} 개봉</div>
                                    </div>
                                    <div>
                                        <div>출연진</div>
                                        <div>${movie.actorNames}</div>
                                    </div>

                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </c:otherwise>
                    
            </c:choose>
            
    </section>
    

        <section class="facility">
            <section class="block">
                <section class="block_name">                    
                      시설만족도
                </section>
               <section class="block_body">
                <div class="combody">
                    <div class="comb">
                        <img id="pop1" src="resources/images/cinema/popcon.png"><img id="pop2" src="resources/images/cinema/popcon.png">
                    </div>
                    <div class="comb2">
                        <div class="cb1"><h2 id="idd">id :</h2></div><div class="cb1-1"><h3 id="dd1">댓글내용 .......................................................................................................</h3></div><div class="cb1-2"><button class="editBtn">수정</button><button class="deletBtn">삭제</button></div>
                    </div>
                    <div class="comb">
                        <img id="pop1" src="resources/images/cinema/popcon.png"><img id="pop2" src="resources/images/cinema/popcon.png">
                    </div>
                    <div class="comb4">
                        <div class="cb2"><h2 id="idd">id :</h2></div><div class="cb2-1"><h3 id="dd1">댓글내용 .......................................................................................................</h3></div><div class="cb2-2"><button class="editBtn">수정</button><button class="deletBtn">삭제</button></div>
                    </div>
                    <div class="comb">
                        <img id="pop1" src="resources/images/cinema/popcon.png"><img id="pop2" src="resources/images/cinema/popcon.png">
                    </div>
                    <div class="comb6">
                        <div class="cb3"><h2 id="idd">id :</h2></div><div class="cb3-1"><h3 id="dd1">댓글내용 .......................................................................................................</h3></div><div class="cb3-2"><button class="editBtn">수정</button><button class="deletBtn">삭제</button></div>
                    </div>
                    <div class="comb">
                        <img id="pop1" src="resources/images/cinema/popcon.png"><img id="pop2" src="resources/images/cinema/popcon.png">
                    </div>
                    <div class="comb6">
                        <div class="cb3"><h2 id="idd">id :</h2></div><div class="cb3-1"><h3 id="dd1">댓글내용 .......................................................................................................</h3></div><div class="cb3-2"><button class="editBtn">수정</button><button class="deletBtn">삭제</button></div>
                    </div>
            </div>
            </section>
          </section>
            <fieldset class="commentForm">
                <form id="facilityForm">
                    <div>
                        <input placeholder= "시설 평가내용 입력....">
                    </div>
                    <div>
                        평점 : 
                    </div>
                    <div class="CF2"> 
                        <!-- 따봉 -->
                        <i class="far fa-thumbs-up"></i>
                        <i class="far fa-thumbs-up"></i>
                        <i class="far fa-thumbs-up"></i>
                        <i class="far fa-thumbs-up"></i>
                        <i class="far fa-thumbs-up"></i>
                    </div>
                </form>
                <button form="facilityForm" id="submit"></button>
            </fieldset>

        </section>  
    
         
        <section class="facility">
            <section class="block">
                <section class="block_name">                    
                      직원 친절도
                </section>
               <section class="block_body">
                <div class="combody">
                    <div class="comb">
                        <img id="pop1" src="resources/images/cinema/popcon.png"><img id="pop2" src="resources/images/cinema/popcon.png">
                    </div>
                    <div class="comb2">
                        <div class="cb1"><h2 id="idd">id :</h2></div><div class="cb1-1"><h3 id="dd1">댓글내용 .......................................................................................................</h3></div><div class="cb1-2"><button class="editBtn">수정</button><button class="deletBtn">삭제</button></div>
                    </div>
                    <div class="comb">
                        <img id="pop1" src="resources/images/cinema/popcon.png"><img id="pop2" src="resources/images/cinema/popcon.png">
                    </div>
                    <div class="comb4">
                        <div class="cb2"><h2 id="idd">id :</h2></div><div class="cb2-1"><h3 id="dd1">댓글내용 .......................................................................................................</h3></div><div class="cb2-2"><button class="editBtn">수정</button><button class="deletBtn">삭제</button></div>
                    </div>
                    <div class="comb">
                        <img id="pop1" src="resources/images/cinema/popcon.png"><img id="pop2" src="resources/images/cinema/popcon.png">
                    </div>
                    <div class="comb6">
                        <div class="cb3"><h2 id="idd">id :</h2></div><div class="cb3-1"><h3 id="dd1">댓글내용 .......................................................................................................</h3></div><div class="cb3-2"><button class="editBtn">수정</button><button class="deletBtn">삭제</button></div>
                    </div>
                    <div class="comb">
                        <img id="pop1" src="resources/images/cinema/popcon.png"><img id="pop2" src="resources/images/cinema/popcon.png">
                    </div>
                    <div class="comb6">
                        <div class="cb3"><h2 id="idd">id :</h2></div><div class="cb3-1"><h3 id="dd1">댓글내용 .......................................................................................................</h3></div><div class="cb3-2"><button class="editBtn">수정</button><button class="deletBtn">삭제</button></div>
                    </div>
            </section>
          </section>
            <fieldset class="commentForm">
                <form id="facilityForm">
                    <div>
                        <input type="text" placeholder= "직원 친절도 평가 입력....">
                    </div>
                    <div>
                        평점 : 
                    </div>
                    <div class="CF2"> 
                        <!-- 따봉 -->
                        <i class="far fa-thumbs-up"></i>
                        <i class="far fa-thumbs-up"></i>
                        <i class="far fa-thumbs-up"></i>
                        <i class="far fa-thumbs-up"></i>
                        <i class="far fa-thumbs-up"></i>
                    </div>
                </form>
                <button form="facilityForm" id="submit"></button>
            </fieldset>
        </section>  

        
        <section class="recommended_menu">
            <div>메뉴 추천</div>
            <div>
                <div class="popcorn">
                    <div>팝콘 1등</div>
                    <div >
                        <img src="/resources/images/cinema/menu_popcorn.png" id="img_popcorn">
                    </div>
                    <div>
                        이름 : 더블치즈팝콘(L)
                    </div>
                    <div>
                        가격 : 6500원
                    </div>
                    <div class="score_popcorn">
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>
                </div>


                <div class="beverage">
                    <div>음료 1등</div>
                    <div >
                        <img src="/resources/images/cinema/menu_beverage.png" id="img_beverage">
                    </div>
                    <div>
                        이름 : 스위트아이스
                    </div>
                    <div>
                        가격 : 5000원
                    </div>
                    <div class="score_beverage">
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>
                </div>


                <div>
                    <div>사이드 1등</div>
                    <div >
                        <img src="/resources/images/cinema/menu_side.png" id="img_side">
                    </div>
                    <div>
                        이름 : 찰리치즈나쵸
                    </div>
                    <div>
                        가격 : 5000원
                    </div>
                    <div class="score_side">
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>
                </div>
            </div>



                  <div class="comment">
                <fieldset>
                    <form id="menuForm">

                        <label for="menu">해당 극장 메뉴</label>
                        <select id="menu" name="menu">
                            <option value="" disabled selected>목록</option>
                            <optgroup label="팝콘">
                                <option>팝콘팝</option>
                                <option>치즈팝콘</option>
                            </optgroup>
                            <optgroup label="음료">
                                <option>콜라</option>
                                <option>스위트아이스</option>
                            </optgroup>
                            <optgroup label="사이드">
                                <option>소시지치킨</option>
                                <option>찰리치즈나쵸</option>
                            </optgroup>
                        </select>

                            <div>
                                평점 : 
                            </div>
                            <div class="CF2"> 
                                <!-- 따봉 -->
                                <i class="far fa-thumbs-up"></i>
                                <i class="far fa-thumbs-up"></i>
                                <i class="far fa-thumbs-up"></i>
                                <i class="far fa-thumbs-up"></i>
                                <i class="far fa-thumbs-up"></i>
                            </div>
                    </form>
                    <button form="facilityForm" id="submit"></button>
                 </fieldset>
            </div>
            
            

        </section>
    </main>

    <form id="correction">
            <button >수정 하기 </button>
    </form>



    <jsp:include page="/WEB-INF/views/common/footer.jsp" />




</body>
    <script src="/resources/js/cinema/cinema-detail-page.js"></script>
</html>