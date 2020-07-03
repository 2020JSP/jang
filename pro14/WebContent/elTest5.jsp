<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
    
<jsp:useBean id="m1" class="sec01.ex01.MemberBean" scope="page" />
<jsp:setProperty name="m1" property="name" value="이순신" />
<jsp:useBean id="m2" class="java.util.ArrayList" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 empty 연산자
 <h2>
   \${empty m1 } : ${empty m1 } <br> <!-- m1의 name속성에 값이 설정되어 있으므로 false 반환 -->
   \${not empty m1 } : ${not empty m1 } <br><br> <!-- true 반환 -->

   \${empty m2 } : ${empty m2 } <br> <!-- ArrayList 객체인 m2는 비어있으므로 true 반환 -->
   \${not empty m2} : ${not empty m2 } <br><br> <!-- false 반환 -->

   \${empty "hello"} : ${empty "hello" }<br> <!-- 문자열에 대해 false 반환 -->
   \${empty null} : ${empty null } <br> <!-- null은 true 반환 -->
   \${empty ""} : ${empty "" } <br> <!-- 빈 문자열은 true 반환 -->
</h2>
</body>
</html>