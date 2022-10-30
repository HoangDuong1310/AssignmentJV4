<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<body>


	<div class="content">
		<div class="container">
		<c:if test="${empty list }">
không có dữ liệu
		</c:if>
		<c:if test="${!empty list }">
			<div class="table-responsive">
				<table class="table table-striped custom-table">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Name</th>
							<th scope="col">description</th>
							<th scope="col">price</th>
							<th scope="col">quantity</th>
							<th scope="col">createdUser</th>
							<th scope="col">createdDate</th>
							<th scope="col">lastModifiedUser</th>
							<th scope="col">lastModifiedDate</th>
							<th scope="col">isMarry</th>
							<th scope="col">custom</th>
							<th scope="col">power</th>
							<th scope="col">amountHarem</th>
							<th scope="col">img</th>
							<th scope="col"></th>
							<th scope="col"></th>
						</tr>
					</thead>
					<c:forEach items="${list}" var="x" > 
					<tbody>
						<tr scope="row">
							<td>${x.id }</td>
							<td>${x.name }</td>
							<td>${x.description }</td>
							<td>${x.price }</td>
							<td>${x.quantity }</td>
							<td>${x.createdUser }</td>
							<td>${x.createdDate }</td>
							<td>${x.lastModifiedUser }</td>
							<td>${x.lastModifiedDate }</td>
							<td>${x.isDeleted }</td>
							<td>${x.custom }</td>
							<td>${x.power }</td>
							<td>${x.amountHarem}</td>
							<td>${x.img}</td>
							<td><a href="update?gid=${x.id}" class="more">Sửa</a></td>
							<td><a href="delete?id=${x.id }" class="more">xoá</a></td>
						</tr>
					</tbody>
					</c:forEach>
				</table>
			</div>
			</c:if>
		</div>
	</div>
</body>
</body>
</html>