<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header><h1>어서와요. 많이 기다렸다구요.</h1></header>
	<form action="" method="post">
		<div><label></label><input name="tl_type" placeholder="구분"/>
		<input name="tl_sdistance" placeholder="출발거리(Km)"/>
		<input name="tl_place" placeholder="장소"/></div>
		<input name="tl_edistance" placeholder="도착거리(Km)"/>
		<input name="tl_cost" placeholder="소요비용"/>
		<button>저장</button>
	</form>
	<table>
		<tr>
			<th>No.</th>
			<th>구분</th>
			<th>출발일자</th>
			<th>출발시간</th>
			<th>출발거리(Km)</th>
			<th>도착일자</th>
			<th>도착시간</th>
			<th>도착거리(Km)</th>
			<th>장소</th>
			<th>소요비용</th>
		</tr>
		<c:if test="${empty CARLIST }">
			<tr><td>데이터가 없습니다.</td>
			</tr>
		</c:if>
		<c:forEach items="${CARLIST }" var="CA">
			<tr>
				<td>${CA.tl_seq }</td>
				<td>${CA.tl_type }</td>
				<td>${CA.tl_sdate }</td>
				<td>${CA.tl_stime }</td>
				<td>${CA.tl_sdistance }</td>
				<td>${CA.tl_edate }</td>
				<td>${CA.tl_etime }</td>
				<td>${CA.tl_edistance }</td>
				<td>${CA.tl_place }</td>
				<td>${CA.tl_cost }</td>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>