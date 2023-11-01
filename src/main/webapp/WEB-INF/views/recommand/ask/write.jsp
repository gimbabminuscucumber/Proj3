<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<script type="text/javascript">
	function checkWrite(){
		if(document.write.content.value == ""){
			alert("'요청 사항'란을 채워주세요");
		}else if(document.write.to_member.value == ""){
			alert("'요청하실 인물'란을 채워주세요");
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
	}
</style>
<hr>
<div align="center">
	<form action="${pageContext.request.contextPath }/recommand/ask_write" method="post" name="write">
		<table>														
			<tr>
				<th>부탁하는 말 남기기</th>
				<tr><td><input type="text" name="content" placeholder="ex) oo회사에서 근무하며 봐오셨던 저의 장점에 대해 작성해주세요."></td>
			</tr>
			<tr><!-- 온키업 오더바이로 친구를 위 순위로 ajax 필요 -->
				<th>누구에게 부탁하시겠어요? (사람이 검색 - 온키업 + orderby + ajax)</th>
				<tr><td><input type="text" name="to_member"></td>
			</tr>
			<tr>
				<th>수신인측과의 관계</th>
				<tr>
					<td>
						<select name="relation_no">
							<c:forEach var="i" items="${rlist }">
								<option value="${i.relation_no }">${i.relation }</option>
							</c:forEach>
						</select>
					</td>
			</tr>
		</table>
	</form>
	<div class="btn">
		<input type="button" value="추천서 요청하기" onclick="javascript:checkWrite()">
	</div>
</div>
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
