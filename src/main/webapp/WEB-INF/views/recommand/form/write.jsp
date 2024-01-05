<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/cLayout/header.jsp" %>
<script type="text/javascript">
	function checkWrite(){
		if(document.write.detail.value == ""){
			alert("'추천 내용'란을 채워주세요");
		}else{
			document.write.submit();
		}
	}
</script>
<style>
	th{
		text-align: left;
	}
	
	td{
		border: 1px solid;
		width: 500px;
	}
</style>
<!-- 요청 추천서-->
<div align="center">
	<p style="font-weight: bold; font-size: 20px;">추천서 작성
	<div id="rec">
		<table>
			<tr>
				<th>요청자</th>
				<tr><td>${ask_list.TO_MEMBER} (${ask_list.RELATION })</td>
			</tr>
			<tr>
				<th>요청사항</th>
				<tr><td>${ask_list.CONTENT }</td>
			</tr>
		</table>
	</div>
</div>
	
<div align="center">
	<div id="rec">
		<form action="${pageContext.request.contextPath }/recommand/form_write" method="post" name="write">
			<table>														
				<tr>
					<th>추천 내용</th>
					<tr><td><input type="text" name="detail" placeholder="ex) 열정적으로 업무를 수행해오며 성장을 위한 노력을 하며 전문성을 키워갔다..."></td>
				</tr>
			</table>
		</form>
	</div>
	
	<div class="btn">
		<input type="button" value="추천서 작성완료" onclick="javascript:checkWrite()">
	</div>
</div>
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
