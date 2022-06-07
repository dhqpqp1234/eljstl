<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import ="vo.UserVo" %>
<%@ page import ="java.util.List" %>
<%
	List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	jstl + el<br> 
	<table border ="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>비번</th>
				<th>이메일</th>
				<th>index</th>
				<th>count</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${userList}" var="userVo" varStatus ="status">
				<tr>
				<td>${userVo.no}</td>
				<td>${userVo.name}</td>
				<td>${userVo.password}</td>
				<td>${userVo.email}</td>
				<td>${status.index}</td>
				<td>${status.count}</td>
			</tr>
			</c:forEach>
			
	<%--
	
	@@@@@자바코드@@@@@
	
	<table border ="1">
		<thead>
			<tr>
				<td>번호</td>
				<td>이름</td>
				<td>비번</td>
				<td>이메일</td>
			</tr>
		</thead>
		<tbody>
			<%for(int i=0; i<userList.size(); i++){ %>
			<tr>
				<td><%=userList.get(i).getNo() %></td>
				<td><%=userList.get(i).getName() %></td>
				<td><%=userList.get(i).getPassword() %></td>
				<td><%=userList.get(i).getEmail() %></td>
			</tr>
			<%} %>
		</tbody>
	</table>
	--%>
</body>
</html>