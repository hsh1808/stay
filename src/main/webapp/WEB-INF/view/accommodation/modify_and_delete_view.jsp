<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">



<body class="bg-gradient-primary">

	<%@include file="../menu.jsp"%>

    <div class="container">


<%-- 	${accommodation_list} --%>
		
	<div class="container">
        <h1 class="text-center mt-5">숙소 수정</h1>
                
        <div class="row justify-content-center mt-5">
            <div class="col-md-6">
                <form role="form" method="post">
<!--                 	ac_id는 조건문에 숙소를 찾는데 사용된다 -->
					<div>
                        <input type="hidden" class="form-control" id="ac_id" name="ac_id" value="${accommodation_list[0].ac_id}">
                    </div>
                    
                    <div>
                        <input type="hidden" class="form-control" id="email_id" name="email_id" value="${accommodation_list[0].email_id}">
                    </div>
                    
                    <div class="mb-3">
                        <label for="ac_title" class="form-label">숙소명</label>
                        <input type="text" class="form-control" id="ac_title" name="ac_title" value="${accommodation_list[0].ac_title}" required>
                    </div>
                    
                    <div class="mb-3">
                        <label for="accommodation_type" class="form-label">객실 유형</label>
                        <select class="form-control" id="accommodation_type" name="ac_type" required>
                            <option value="1" selected>호텔</option>
                            <option value="2">모텔</option>
                            <option value="3">펜션</option>
                            <option value="4">리조트</option>
                            <option value="5">홈&빌라</option>
                            <option value="6">게스트 하우스</option>
                            <option value="7">캠핑</option>
                        </select>
                    </div>
                    
                    <div class="mb-3">
                        <label for="accommodation_address" class="form-label">위치</label>
                        <input type="text" class="form-control" id="accommodation_address" name="ac_address" value="${accommodation_list[0].ac_address}" required>
                    </div>
                    
                    <div class="mb-3">
                        <label for="accommodation_info" class="form-label">숙소 정보</label>
                        <textarea class="form-control" id="accommodation_info" name="ac_info" rows="3" required>${accommodation_list[0].ac_info}</textarea>
                    </div>
                    
                    <div class="mb-3">
                        <label for="accommodation_checkin" class="form-label">체크인</label>
                        <input type="text" class="form-control" id="accommodation_checkin" name="checkin" value="${accommodation_list[0].checkin}" required>
                    </div>
                    
                    <div class="mb-3">
                        <label for="accommodation_checkout" class="form-label">체크아웃</label>
                        <input type="text" class="form-control" id="accommodation_address" name="checkout" value="${accommodation_list[0].checkout}" required>
                    </div>
                    
        
<!-- 					<button id="modify" type="submit" class="btn btn-warning" onclick="javascript: form.action='/stay/accommodation/modify'; form.method='post';">수정</button> -->
<!-- 					<button id="delete" type="submit" class="btn btn-danger" onclick="javascript: form.action='/stay/accommodation/delete'; form.method='post';">삭제</button> -->
					
					<button id="modify" type="submit" class="btn btn-warning" onclick="javascript: form.action='/stay/accommodation/modify';">수정</button>
					<button id="delete" type="submit" class="btn btn-danger" onclick="javascript: form.action='/stay/accommodation/delete';">삭제</button>
                </form>
            </div>
        </div>
    </div>

	</div>


        
        