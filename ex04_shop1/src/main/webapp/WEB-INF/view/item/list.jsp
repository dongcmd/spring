<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
</head>
<body>
	<a href="create">상품등록</a>
	<c:if test="${!empty loginUser}">
		<a href="../user/mypage?userid=${loginUser.userid}" style="float:right">회원정보</a><br>
	</c:if>
	<a href="../cart/cartView" style="float:right">장바구니</a>
	<table border="1">
		<tr><th width="80">상품ID</th>
				<th width="320">상품명</th>
				<th width="100">가격</th>
				<th width="80">수정</th>
				<th width="80">삭제</th>
		</tr>
		<c:forEach items="${itemList}" var="item">
			<tr><td align="center">${item.id}</td>
			 <td align="left"><a href="detail?id=${item.id}">${item.name}</a></td>
			 <td align="right">${item.price}</td>
			 <td align="center"><a href="update?id=${item.id}">수정</a></td>
			 <td align="center"><a href="delete?id=${item.id}">삭제</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>