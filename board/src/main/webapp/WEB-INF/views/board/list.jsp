<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 목록</title>
<style>
	table th,
	table td {text-align: center;}
</style>
</head>
<body>
	<table style="width: 800px;border: 1px solid #010101;">
		<caption style="width: 0px;height: 0px;overflow: hidden;">게시물 목록</caption>
		<colgroup>
			<col style="width: 60px;" />
			<col />
			<col style="width: 200px;"/>
			<col style="width: 100px;" />
			<col style="width: 60px;" />
		</colgroup>
		<thead>
			<tr>
				<th scope="row">번호</th>
				<th scope="row">제목</th>
				<th scope="row">작성일</th>
				<th scope="row">작성자</th>
				<th scope="row">조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="list">
				<tr>
					<td>${list.bno}</td>
					<td>${list.title}</td>
					<td>${list.regDate}</td>
					<td>${list.writer}</td>
					<td>${list.viewCnt}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>