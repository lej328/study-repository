<%@page import="kr.co.sanghyeon.dao.BoardDAO"%>
<%@page import="kr.co.sanghyeon.vo.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%
	BoardDAO bdo = new BoardDAO();
	ArrayList<BoardVO> boards = bdo.selectBoardVOs();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SangHyeon Park</title>
</head>
<body>
	<h1>총 <%=boards.size() %>개의 글</h1>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>글쓴시간</th>
		</tr>
	</table>
	<button>
		글쓰기
	</button>
</body>
</html>