<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="wis34_mvc_beer4.model.beer.*" %>
<%@ page import="java.util.*"%>
<%@ include file="/globalData.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>>마이쇼핑몰(wis34) - 맥주자료조회(R_4) v0.4</title>
</head>
<body>
   <h1>마이쇼핑몰(wis34) - 맥주자료조회(R_4) v0.4</h1>
   <hr>
 <%
   BeerDTO beer;
   ArrayList<BeerDTO> beerList;
   BeerPageInfoVO bpiVO;
   
   bpiVO = (BeerPageInfoVO)session.getAttribute("beerPageInfoVO");
   beerList = (ArrayList<BeerDTO>)request.getAttribute("beerList");
   
   int currentPageNo = bpiVO.getCurrentPageNo();
   
 %>
 
<h2>현재 DISPLAY RECORDS NUMBER : <%= bpiVO.getLimitCnt() %></h2>
<hr>
<br>
   <table border="1">
      <thead>
        <tr>
            <th>순번</th>
            <th>코드</th>
            <th>종류</th>
            <th>이름</th>
            <th>원산지</th>
            <th>가격</th>
            <th>알코올</th>
            <th>설명</th>
            <th>좋아요</th>
            <th>싫어요</th>
            <th>사진</th>
         </tr>
      </thead>
      <tbody>
<%
for (int i = 0; i < beerList.size(); i++){
   beer = beerList.get(i);

%>

         <tr>
            <td><%=beer.getB_id()%></td>
            <td><%=beer.getB_code()%></td>
            <td><%=beer.getB_category() %></td>
            <td><%=beer.getB_name()%></td>
            <td><%=beer.getB_country() %></td>
            <td><%=beer.getB_price()%></td>
            <td><%=beer.getB_alcohol()%></td>
            <td><%=beer.getB_content()%></td>
            <td><%=beer.getB_like()%></td>
            <td><%=beer.getB_dislike()%></td>
            <td><%=beer.getB_image()%></td>
         </tr>
<%} %>
      </tbody>
   </table>
<a href="./BeerController.be?actionType=R4&currentPageNo=0">[FIRST]</a>
   <%
      if ( currentPageNo > 0){
   %>
   <a href="./BeerController.be?actionType=R4&currentPageNo=<%= currentPageNo - 1 %>">[PRE]</a>
   <%
      }else{
   %>
      [PRE]
   <%
      }

      for(int i=bpiVO.getStartPageNo(); i<bpiVO.getEndPageNo(); i++){
         if(i== currentPageNo){
   %>
         [<%=(i+1)%>]
   <%
         }else {
   %>
         <a href="./BeerController.be?actionType=R4&currentPageNo=<%= i %>">[<%=i+1%>]</a>
   <%      
      }}
   %>   
   <%
      if(currentPageNo < bpiVO.getPageCnt()-1){
   %>
      <a href="./BeerController.be?actionType=R4&currentPageNo=<%= currentPageNo + 1 %>">[NXT]</a>
   <%
      }else{
   %>
      [NXT]
   <%
      }
   %>
<a href="./BeerController.be?actionType=R4&currentPageNo=<%=(bpiVO.getPageCnt()-1)%>">[END]</a>

<br><a href="<%= rootDir %>/index.jsp">홈으로 돌아가기</a>
</body>
</html>