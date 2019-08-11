<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../includes/header.jsp"%>
<style>
	.uploadList li {
		list-style-type: none;
	}
	
	.uploadList {
		list-style-type: none;
	}

</style>

<form id="operForm" action="/course/modify">
	<input type="hidden" id="courseCode" name="courseCode" value="${course.courseCode }">
	<!-- 페이지 번호와 페이지 당 표시 개수 파라미터 추가 -->
	<input type="hidden" name="pageNum" value="${cri.pageNum }"> 
	<input type="hidden" name="amount" value="${cri.amount }">
	
	<!-- 검색 조건과 키워드 파라미터 추가 -->
	<input type="hidden" name="type" value="${cri.type }"> 
	<input type="hidden" name="keyword" value="${cri.keyword }">
</form>
<!-- /.panel-body -->


<form id="mainForm">
	<!--/ Intro Single star /-->
	<section class="intro-single">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-8">
					<div class="title-single-box">
						<h1 class="title-single">${course.courseName }</h1>
						<span class="color-text-a">${course.courseType },
							${course.courseLevel }</span>
					</div>
				</div>
				<div class="col-md-12 col-lg-4">
					<nav aria-label="breadcrumb"
						class="breadcrumb-box d-flex justify-content-lg-end">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="../index">Home</a></li>
							<li class="breadcrumb-item"><a href="/course/list">강좌
									관리</a></li>
							<li class="breadcrumb-item active" aria-current="page">
								${course.courseName }</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!--/ Intro Single End /-->

	<!--/ Property Single Star /-->
	<section class="property-single nav-arrow-b">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="property-single-carousel"
						class="owl-carousel owl-arrow gallery-property">
						<div class="carousel-item-b uploadResult">
							<ul class="uploadList">
							</ul>
						</div>
						<div class="carousel-item-b">
							<img src="../../../resources/img/slide-1.jpg" alt="">
						</div>
					</div>
					
					
					<div class="row justify-content-between">
						<div class="col-md-5 col-lg-4">
							<div class="property-price d-flex justify-content-center foo">
								<div class="card-header-c d-flex">
									<div class="card-box-ico">
										<span class="ion-money">!</span>
									</div>
									<div class="card-title-c align-self-center">
										<h5 class="title-c">${course.courseName }</h5>
									</div>
								</div>
							</div>
							<div class="property-summary">
								<div class="row">
									<div class="col-sm-12">
										<div class="title-box-d section-t4">
											<h3 class="title-d">Quick Summary</h3>
										</div>
									</div>
								</div>
								<div class="summary-list">
									<ul class="list">
										<li class="d-flex justify-content-between"><strong>
										강좌 코드 :</strong> <span>${course.courseCode }</span></li>
										<li class="d-flex justify-content-between"><strong>
										강좌 타입 : </strong> <span>${course.courseType }</span></li>
										<li class="d-flex justify-content-between"><strong>
										LEVEL : </strong> <span>${course.courseLevel }</span></li>
										<li class="d-flex justify-content-between"><strong>
										요일 : </strong> <span>${course.courseDay } </span></li>
										<li class="d-flex justify-content-between"><strong>
										개강일 : </strong> <span>${course.courseStart}</span></li>
										<li class="d-flex justify-content-between"><strong>
										종강일 : </strong> <span>${course.courseEnd}</span></li>
										<li class="d-flex justify-content-between"><strong>
										강의실 : </strong> <span>${course.classroomNo } 호</span></li>
										<li class="d-flex justify-content-between"><strong>
										가격 : </strong> <span>₩ ${course.price }</span></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-7 col-lg-7 section-md-t3">
							<div class="row">
								<div class="col-sm-12">
									<div class="title-box-d">
										<h3 class="title-d">강좌 소개</h3>
									</div>
								</div>
							</div>
							<div class="property-description">
								<p class="description color-text-a">${course.courseInfo }</p>
								<p class="description color-text-a no-margin">Curabitur arcu
									erat, accumsan id imperdiet et, porttitor at sem. Donec rutrum
									congue leo eget malesuada. Quisque velit nisi, pretium ut
									lacinia in, elementum id enim. Donec sollicitudin molestie
									malesuada.</p>
							</div>
							<div class="row section-t3">
								<div class="col-sm-12">
									<div class="title-box-d">
										<h3 class="title-d">강사</h3>
									</div>
								</div>
							</div>
							<div class="amenities-list color-text-a">
								<ul class="list-a no-margin">
									<li>Balcony</li>
									<li>Outdoor Kitchen</li>
									<li>Cable Tv</li>
									<li>Deck</li>
									<li>Tennis Courts</li>
									<li>Internet</li>
									<li>Parking</li>
									<li>Sun Room</li>
									<li>Concrete Flooring</li>
								</ul>
							</div>
							
							 
 
						</div>
					</div>
				</div>

			</div>

		</div>


	</section>
	<!--/ Property Single End /-->
	<button type="submit" data-oper="modify" class="btn btn-a resultBtn">Modify</button>
	<!-- 수정 처리 -->
	<button type="submit" data-oper="remove" class="btn btn-a resultBtn">Remove</button>
	<!-- 삭제 처리 -->
	<button data-oper='list' class="btn btn-a resultBtn">List</button>
	<!-- 목록 페이지 이동 -->
	<button data-oper='payment' class="btn btn-a resultBtn">수강 신청</button>
	<!-- 결제 페이지 이동 --> 
</form>
<!--/ footer Star /-->
<section class="section-footer">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-4">
				<div class="widget-a">
					<div class="w-header-a">
						<h3 class="w-title-a text-brand">EstateAgency</h3>
					</div>
					<div class="w-body-a">
						<p class="w-text-a color-text-a">Enim minim veniam quis
							nostrud exercitation ullamco laboris nisi ut aliquip exea commodo
							consequat duis sed aute irure.</p>
					</div>
					<div class="w-footer-a">
						<ul class="list-unstyled">
							<li class="color-a"><span class="color-text-a">Phone
									.</span> contact@example.com</li>
							<li class="color-a"><span class="color-text-a">Email
									.</span> +54 356 945234</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4 section-md-t3">
				<div class="widget-a">
					<div class="w-header-a">
						<h3 class="w-title-a text-brand">The Company</h3>
					</div>
					<div class="w-body-a">
						<div class="w-body-a">
							<ul class="list-unstyled">
								<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
									href="#">Site Map</a></li>
								<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
									href="#">Legal</a></li>
								<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
									href="#">Agent Admin</a></li>
								<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
									href="#">Careers</a></li>
								<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
									href="#">Affiliate</a></li>
								<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
									href="#">Privacy Policy</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4 section-md-t3">
				<div class="widget-a">
					<div class="w-header-a">
						<h3 class="w-title-a text-brand">International sites</h3>
					</div>
					<div class="w-body-a">
						<ul class="list-unstyled">
							<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
								href="#">Venezuela</a></li>
							<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
								href="#">China</a></li>
							<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
								href="#">Hong Kong</a></li>
							<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
								href="#">Argentina</a></li>
							<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
								href="#">Singapore</a></li>
							<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
								href="#">Philippines</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<nav class="nav-footer">
					<ul class="list-inline">
						<li class="list-inline-item"><a href="#">Home</a></li>
						<li class="list-inline-item"><a href="#">About</a></li>
						<li class="list-inline-item"><a href="#">Property</a></li>
						<li class="list-inline-item"><a href="#">Blog</a></li>
						<li class="list-inline-item"><a href="#">Contact</a></li>
					</ul>
				</nav>
				<div class="socials-a">
					<ul class="list-inline">
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-facebook" aria-hidden="true"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-twitter" aria-hidden="true"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-instagram" aria-hidden="true"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-pinterest-p" aria-hidden="true"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-dribbble" aria-hidden="true"></i>
						</a></li>
					</ul>
				</div>
				<div class="copyright-footer">
					<p class="copyright color-text-a">
						&copy; Copyright <span class="color-a">EstateAgency</span> All
						Rights Reserved.
					</p>
				</div>
				<div class="credits"></div>
			</div>
		</div>
	</div>
</footer>
<!--/ Footer End /-->

<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
<div id="preloader"></div>

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
					var courseCodeTag = $("input[name='courseCode']").clone();
					formObj.append(courseCodeTag);
					
					formObj.attr("action", "/course/remove")
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

				formObj.attr("action", "/course/list")
					   .attr("method", "get");
				formObj.empty();	//폼 태그 모든 내용을 지움
				
				//페이지 번호와 게시물 개수만 폼에 추가
				formObj.append(pageNumTag);
				formObj.append(amountTag);
				
				//검색 조건과 키워드 폼에 추가 
				formObj.append(typeTag);
				formObj.append(keywordTag);
				
			} else {
				var courseCodeTag = $("input[name='courseCode']").clone();

				//페이지 번호와 게시물 개수 복사
				var pageNumTag = $("input[name='pageNum']").clone();
				var amountTag = $("input[name='amount']").clone();
				
				//검색 조건과 키워드 복사
				var typeTag = $("input[name='type']").clone();
				var keywordTag = $("input[name='keyword']").clone();
				
				formObj.attr("action", "/course/modify")
				   .attr("method", "get");
				
				formObj.append(courseCodeTag);
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
	<script>
	(function(){	//첨부파일 목록 가져오기
		var courseCode = '<c:out value="${course.courseCode}"/>';
		console.log(courseCode);
		$.getJSON("/course/getAttachList", {courseCode:courseCode}, function(arr){
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
					var fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + 
													      obj.coursePictureUuid  + "_" +
													      obj.coursePictureName);

				str += "<li data-path='" + obj.uploadPath + "' " 			+
						   "data-uuid='" + obj.coursePictureUuid + "' " 					+
						   "data-filename='" + obj.coursePictureName + "'" 			+
						   "data-type='" + obj.fileType + "'>" 				+ 
					       "<div><img src='/courseImages/display?fileName="+ fileCallPath + "'>" +
					       "    </div></li>";
				console.log(str);
				} else {		//이미지가 아닌 경우
					var fileCallPath 
					= encodeURIComponent(obj.uploadPath + 
										 "/" + obj.coursePictureUuid  + "_" +
										 obj.coursePictureName);
					var fileLink = fileCallPath.replace(new RegExp(/\\/g), "/");			
					str += "<li data-path='" + obj.uploadPath + "' " 	+
						   "    data-uuid='" + obj.coursePictureUuid + "' " 			+
						   "    data-filename='" + obj.coursePictureName + "'" 	+
						   "    data-type='" + obj.fileType + "'>" 		+ 
						   "    <div><span>" + obj.coursePictureName + "</span><br>"	+  
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
		$('.bigPicture').html("<img src='/courseImages/display?fileName=" + 
								fileCallPath + "'>")
						.animate( { width:'100%', height:'100%'}, 1000);
	}//END showImage()

	//원본 이미지 숨기기 처리
	$('.bigPictureWrapper').on('click', function(e){
		$(".bigPicture").animate({ width:'0%', height:'0%'}, 1000);
		//setTimeout(()=>{ $(this).hide(); }, 1000);
		setTimeout(function(){ $('.bigPictureWrapper').hide();}, 1000);
	});//END 원본 이미지 숨기기 처리
	
	</script>


<!-- JavaScript Libraries -->
<script src="../../../resources/lib/jquery/jquery.min.js"></script>
<script src="../../../resources/lib/jquery/jquery-migrate.min.js"></script>
<script src="../../../resources/lib/popper/popper.min.js"></script>
<script src="../../../resources/lib/bootstrap/js/bootstrap.min.js"></script>
<script src="../../../resources/lib/easing/easing.min.js"></script>
<script src="../../../resources/lib/owlcarousel/owl.carousel.min.js"></script>
<script src="../../../resources/lib/scrollreveal/scrollreveal.min.js"></script>
<!-- Contact Form JavaScript File -->
<script src="../../../resources/contactform/contactform.js"></script>

<!-- Template Main Javascript File -->
<script src="../../../resources/js/main.js"></script>

</body>
</html>
