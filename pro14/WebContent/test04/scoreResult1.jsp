<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="score" value="${param.score}" />	<!-- param.score를 score 변수에 할당 -->
	<h1>시험점수
	  <c:out value="${score}" />
	</h1><br>
	<c:choose>
	  <c:when test="${score>=90 && score<=100}">	<!-- 조건이 여러 개인 경우 choose안의 when 태그를 이용해 해당 학점으로 변환 -->
	    <h1>A학점입니다.</h1>
	  </c:when>
	  <c:when test="${score>=80 && score<90 }">
          <h1>B학점입니다.</h1>
      </c:when> 
      <c:when test="${score>=70 && score<80 }">
          <h1>C학점입니다.</h1>
      </c:when>
      <c:when test="${score>=60 && score<70 }">
          <h1>D학점입니다.</h1>
      </c:when>    
      <c:otherwise>	
          <h1>F학점입니다.</h1>
      </c:otherwise>    
    </c:choose>
</body>
</html>