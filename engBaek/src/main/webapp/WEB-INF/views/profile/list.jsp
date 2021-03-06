<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%--<%@ include file="../includes/header.jsp" --%>
<%@ include file="../includes/header.jsp"%>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="utf-8">
<title>Baek 어학원</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicons -->
<link href="../../../resources/img/favicon.png" rel="icon">
<link href="../../../resources/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">

<!-- Bootstrap CSS File -->
<link href="../../../resources/lib/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Libraries CSS Files -->
<link
	href="../../../resources/lib/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="../../../resources/lib/animate/animate.min.css"
	rel="stylesheet">
<link href="../../../resources/lib/ionicons/css/ionicons.min.css"
	rel="stylesheet">
<link
	href="../../../resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
	
	<!--/ Intro Single star /-->
  <section class="intro-single">
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-lg-8">
          <div class="title-single-box">
            <h1 class="title-single">강사 소개</h1>
            <span class="color-text-a">Teacher Profile</span>
          </div>
        </div>
        <div class="col-md-12 col-lg-4">
          <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
            <ol class="breadcrumb">
              <li class="breadcrumb-item">
                <a href="/">Home</a>
              </li>
              <li class="breadcrumb-item active">
                <a href="/profile/list">강사 소개</a>
              </li>
            </ol>
          </nav>
                      <div class="grid-option">
				<form>
					<select class="custom-select" id="search">
						<option value="">ALL</option>
                		<optgroup label="Toeic">
                    		<option value="토익-550" <c:if test='${param.keyword == "토익-550"}'>selected</c:if>>토익-550</option>
                    		<option value="토익-700" <c:if test='${param.keyword == "토익-700"}'>selected</c:if>>토익-700</option>
                    		<option value="토익-850" <c:if test='${param.keyword == "토익-850"}'>selected</c:if>>토익-850</option>
				        </optgroup>
				        <optgroup label="Toeic Speaking">
				            <option value="토스-5" <c:if test='${param.keyword == "토스-5"}'>selected</c:if>>토스-5</option>
				            <option value="토스-6" <c:if test='${param.keyword == "토스-6"}'>selected</c:if>>토스-6</option>
				            <option value="토스-7" <c:if test='${param.keyword == "토스-7"}'>selected</c:if>>토스-7</option>
				        </optgroup>
				    </select>
				</form>
			</div>
        </div>
      </div>
    </div>
  </section>
  <!--/ Intro Single End /-->

  <!--/ Agents Grid Star /-->
<form id="mainForm">
  <section class="agents-grid grid">
    <div class="container">
      <div class="row">
      <c:forEach items="${profileList}" var="profile">
        <div class="col-md-4">
          <div class="card-box-d">
            <div class="card-img-d uploadResult list-unstyled">
            	<img src="/courseImages/display?fileName=${profile.uploadPath }/${profile.teacherProfileUuid}_${profile.teacherProfilePicture }" width=350px class="img-d img-fluid">
            </div>
            <div class="card-overlay card-overlay-hover">
              <div class="card-header-d">
                <div class="card-title-d align-self-center">
                  <h3 class="title-d">
                    <a href="${profile.teacherPno}" class="move link-two">${profile.name }</a>
                  </h3>
                </div>
              </div>
              <div class="card-body-d">
                <p class="content-d color-text-a">
                  ${profile.teacherProfile }
                </p>
                <p class="content-d color-text-a">
                  ${profile.career }
                </p>
                <div class="info-agents color-a">
                  <p>
                    <strong>과목 : </strong> ${profile.teacherSubject } </p>
                  <p>
                    <strong>Email: </strong> ${profile.email1 }@${profile.email2 }</p>
                </div>
              </div>
              <div class="card-footer-d">
                <div class="socials-footer d-flex justify-content-center">
                  <ul class="list-inline">
                    <li class="list-inline-item">
                      <a href="#" class="link-one">
                        <i class="fa fa-facebook" aria-hidden="true"></i>
                      </a>
                    </li>
                    <li class="list-inline-item">
                      <a href="#" class="link-one">
                        <i class="fa fa-twitter" aria-hidden="true"></i>
                      </a>
                    </li>
                    <li class="list-inline-item">
                      <a href="#" class="link-one">
                        <i class="fa fa-instagram" aria-hidden="true"></i>
                      </a>
                    </li>
                    <li class="list-inline-item">
                      <a href="#" class="link-one">
                        <i class="fa fa-pinterest-p" aria-hidden="true"></i>
                      </a>
                    </li>
                    <li class="list-inline-item">
                      <a href="#" class="link-one">
                        <i class="fa fa-dribbble" aria-hidden="true"></i>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
      </div>
				<button id="regBtn" type="button" class="col-md-2 btn btn-a pull-right">Register</button>
					<!-- 페이지 번호 출력 -->
				<div class="pull-left">
					<nav class="pagination-a">
						<ul class="pagination justify-content-end">
							<c:if test="${pageMaker.prev }">
								<!-- previous 버튼 표시 -->
								<li class="paginate_button page-item previous"><a
									class="page-link" href="${pageMaker.startPage - 1 }">
										Previous</a></li>
							</c:if>

							<!-- 페이지 번호 표시 -->
							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="num">
								<li
									class="paginate_button page-item ${pageMaker.cri.pageNum == num ? 'active': '' }"><a
									class="page-link" href="${num }">${num }</a></li>
							</c:forEach>

							<c:if test="${pageMaker.next }">
								<!-- next 버튼 표시 -->
								<li class="paginate_button page-item next"><a
									class="page-link" href="${pageMaker.endPage + 1 }">Next</a></li>
							</c:if>
						</ul>
					</nav>
				</div>
				<!-- END 페이지 번호 출력 -->
				
    </div>
    

  </section>
</form>  
  <!--/ Agents Grid End /-->
  
        <!-- 검색창 - 검색 조건 및 키워드 입력 영역 -->
				<div class='row'>
					<div class="col-lg-6">
						<form id="searchForm" action="/profile/list">
							<select name="type">
								<c:set var="type" value="${pageMaker.cri.type }" />
								<!-- 검색 조건이 없을 경우 selected 표시 -->
								<option value="A" <c:out value="${type == 'A'?'selected':'' }"/>>강사명</option>
								<!-- ${pageMaker.cri.type}이 value와 일치하면 selected 표시 -->
								
							</select> 
							<input type="text" class="form-control form-control-lg form-control-a" name="keyword" value="${pageMaker.cri.keyword }"> 
							<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }"> 
							<input type="hidden" name="amount" value="${pageMaker.cri.amount }"><button class="btn btn-info">Search</button>
							
						</form>
					</div>
				</div>
				<!-- END 검색창 - 검색 조건 및 키워드 입력 영역 -->
		<!-- a 태그 대신 pageNum과 amount 파라미터로 전송 -->
<form id="actionForm" action="/profile/list">
	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
	<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
	<!-- 검색 키워드와 조건 파라미터 추가 -->
	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
	<input type="hidden" name="type" value="${pageMaker.cri.type }">
</form>

<script>
	$(function() {

		//등록 버튼 처리
		$("#regBtn").on("click", function() {
			self.location = "/profile/register";
		});

		//페이지 번호를 클릭하면 해당 페이지 목록 표시
		var actionForm = $("#actionForm");
		$(".paginate_button a").on("click", function(e) {
			e.preventDefault(); //a 태그 기본 동작 막기

			//pageNum의 값을 클릭된 a의 href 값으로 변경
			actionForm.find("input[name='pageNum']").val($(this).attr('href'));
			//폼 전송
			actionForm.submit();
		});

		//a 태그의 move 클래스 속성을 이용
		$(".move").on(
				"click",
				function(e) {
					//a 태그의 기본 동작 막고
					e.preventDefault();

					actionForm
							.append("<input type='hidden' name='teacherPno' value='"
									+ $(this).attr('href') + "'>'");
					actionForm.attr("action", "/profile/info");
					actionForm.submit();
				});

		//검색 버튼 이벤트 처리
		var searchForm = $("#searchForm");
		$("#searchForm button").on("click", function(e) {
			if (!searchForm.find("option:selected").val()) {
				alert("검색 조건을 선택해 주세요."); //검색 조건 선택 알림
				return false;
			}

			if (!searchForm.find("input[name='keyword']").val()) {
				alert("검색어를 입력해 주세요."); //검색어 입력 알림
				return false;
			}

			//검색 시 페이지 번호는 1이 되도록 처리
			searchForm.find("input[name='pageNum']").val("1");
			e.preventDefault();
			searchForm.submit(); //폼 전송
		});
		
		// select 검색 처리
		$(function(){
			var searchValue;
		 
				$('#search').change(function(){
					searchValue = $("#search option:selected").val();
					var actionForm = $('#mainForm');
					console.log(searchValue);
					
					if(searchValue == "ALL"){
						actionForm.attr("action","/profile/list").submit();
						return false;
					}
					actionForm.append("<input type='hidden' name='type' value='C'>");	
					actionForm.append("<input type='hidden' name='keyword' value='"+searchValue+"'>")
					actionForm.attr("action","/profile/list").submit();
					return false;
				});
				
		});	

	});
</script>

	<script>
	$(function(){
		var formObj = $("#mainForm");
		
		$('.resultBtn').on("click", function(e){
			e.preventDefault();
			
			var operation = $(this).data("oper");
			console.log("operation : " + operation);
			
			if(operation === 'remove'){ 		//삭제 버튼이 눌린 경우 
				var deleteConfirm = confirm("정말 삭제하시겠습니까?")
				if(deleteConfirm == true){
					alert("삭제가 완료되었습니다.")
					var teacherPnoTag = $("input[name='teacherPno']").clone();
					formObj.append(courseCodeTag);
					
					formObj.attr("action", "/profile/remove")
					.attr("method", "post");
				} else {
					return;
				}
				
			} else if(operation === 'list') {	//목록 버튼이 눌린 경우
//				self.location = "/course/list";	
//				return;
				
				//페이지 번호와 게시물 개수 복사
				var pageNumTag = $("input[name='pageNum']").clone();
				var amountTag = $("input[name='amount']").clone();
				
				//검색 조건과 키워드 복사
				var typeTag = $("input[name='type']").clone();
				var keywordTag = $("input[name='keyword']").clone();

				formObj.attr("action", "/profile/list")
					   .attr("method", "get");
				formObj.empty();	//폼 태그 모든 내용을 지움
				
				//페이지 번호와 게시물 개수만 폼에 추가
				formObj.append(pageNumTag);
				formObj.append(amountTag);
				
				//검색 조건과 키워드 폼에 추가 
				formObj.append(typeTag);
				formObj.append(keywordTag);
				
			} else {
				var teacherPnoTag = $("input[name='teacherPno']").clone();

				//페이지 번호와 게시물 개수 복사
				var pageNumTag = $("input[name='pageNum']").clone();
				var amountTag = $("input[name='amount']").clone();
				
				//검색 조건과 키워드 복사
				var typeTag = $("input[name='type']").clone();
				var keywordTag = $("input[name='keyword']").clone();
				
				formObj.attr("action", "/profile/modify")
				   .attr("method", "get");
				
				formObj.append(teacherPnoTag);
				//페이지 번호와 게시물 개수만 폼에 추가
				formObj.append(pageNumTag);
				formObj.append(amountTag);
				
				//검색 조건과 키워드 폼에 추가 
				formObj.append(typeTag);
				formObj.append(keywordTag);
			}
			
			formObj.submit();
		});
	});
	</script>
	
<!--	<script>
	(function(){	//첨부파일 목록 가져오기
		var teacherPno = '<c:out value="${profile.teacherPno}"/>';
		console.log(teacherPno);
		$.getJSON("/profile/getAttachList", {teacherPno:teacherPno}, function(arr){
			console.log('getAttachList----------------');
			console.log(arr);	
			
			//첨부파일 목록
			if(!arr || arr.length == 0){
				return;
			}

			var uploadUL = $('.uploadResult');
			var str = "";
			$(arr).each(function(i, obj){
				//업로드 파일명 <li>추가
				if(obj.fileType){	//이미지인 경우
					var fileCallPath = encodeURIComponent(obj.uploadPath + "/" + 
													      obj.teacherProfileUuid  + "_" +
													      obj.teacherProfilePicture);

				str += "<li data-path='" + obj.uploadPath + "' " 			+
						   "data-uuid='" + obj.teacherProfileUuid + "' " 					+
						   "data-filename='" + obj.teacherProfilePicture + "'" 			+
						   "data-type='" + obj.fileType + "'>" 				+ 
					       "<div><img src='/courseImages/display?fileName="+ fileCallPath + "' width=500px>" +
					       "    </div></li>";
				console.log(str);
				} else {		//이미지가 아닌 경우
					var fileCallPath 
					= encodeURIComponent(obj.uploadPath + 
										 "/" + obj.teacherProfileUuid  + "_" +
										 obj.teacherProfilePicture);
					var fileLink = fileCallPath.replace(new RegExp(/\\/g), "/");			
					str += "<li data-path='" + obj.uploadPath + "' " 	+
						   "    data-uuid='" + obj.teacherProfileUuid + "' " 			+
						   "    data-filename='" + obj.teacherProfilePicture + "'" 	+
						   "    data-type='" + obj.fileType + "'>" 		+ 
						   "    <div><span>" + obj.teacherProfilePicture + "</span><br>"	+  
						   "    <img src='../../../resources/img/attach.png'></div></li>"; 
				}
			});
			uploadUL.append(str);
		});//END getJSON()
	})();//END 첨부파일 목록 가져오기

	//첨부파일 클릭 이벤트 처리
	$('.uploadResult').on('click', 'li', function(e){
		console.log('uploadResult click');
		
		var obj = $(this);
		var path = encodeURIComponent(obj.data('path') + 
									  "/" + obj.data('uuid')  + "_" +
							 		  obj.data('filename'));
		if(obj.data('type')) { //이미지이면 
			//showImage() 호출
			console.log('path : ' + path);
			showImage(path);
		} else {	//이미지가 아니면
			//다운로드 처리
			self.location = "/download?fileName=" + path;		
		}
	});//END 첨부파일 클릭 이벤트 처리

	//원본 이미지 표시 함수
	function showImage(fileCallPath){
		$('.bigPictureWrapper').css('display', 'flex').show();
		
		//이미지 및 효과 추가
		$('.bigPicture').html("<img src='/profileImages/display?fileName=" + 
								fileCallPath + "'>")
						.animate( { width:'100%', height:'100%'}, 1000);
	}//END showImage()

	//원본 이미지 숨기기 처리
	$('.bigPictureWrapper').on('click', function(e){
		$(".bigPicture").animate({ width:'0%', height:'0%'}, 1000);
		//setTimeout(()=>{ $(this).hide(); }, 1000);
		setTimeout(function(){ $('.bigPictureWrapper').hide();}, 1000);
	});//END 원본 이미지 숨기기 처리
	
	</script> -->
<%-- %@ include file = "../includes/footer.jsp" %>--%>