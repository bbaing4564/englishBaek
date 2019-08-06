<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%--<%@ include file="../includes/header.jsp" --%>
<%@ include file="../about/sidebar.jsp" %>

<form role="form" action="/classQna/register" method="post">
<input type="hidden" name="courseCode" value="1">
<input type="hidden" name="teacherId" value="tc1">
<div>
<label>제목 : </label>           
<input name="classQnaTitle">
</div>

<div>
<label>작성자 : </label>
<input name="studentId" readonly = "readonly" value="stu1">
<!--  
<fmt:formatDate value="${classQna.classQnaRegdate}" pattern="yyyy-MM-dd"/>-->
</div>

<div>
<label>내용 : </label>
</div>
<textarea name="classQnaContent"></textarea>
<br>
</form>
<button type="submit" id="registerBtn">등록</button>
<button id="cancel">취소</button>

<script>
var formObj = $("form");

$(function(){
	$("#registerBtn").on("click", function(e){
		e.preventDefault();
		var classQnaTitle = $("input[name='classQnaTitle']").val();
		var classQnaContent = $("textarea[name='classQnaContent']").val();
		if(classQnaTitle==""){
			alert("제목을 입력해주세요");
			return false;
		}else if(classQnaContent==""){
			alert("내용을 입력해주세요");
			return false;
		}else{
			formObj.submit();
			alert("등록이 완료 되었습니다");
		}
	 });
	
	$("#cancel").on("click",function(e){
		self.location = "/classQna/list";
	});
});

</script>
<%--<%@ include file="../includes/footer.jsp" --%>