<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../Link.jsp"></jsp:include>

</head>
<jsp:include page="../Header.jsp"></jsp:include>
<div class="page_content">
 <div class="leftcol" >
 <form id='form1' action='add.do' method='post'
    enctype="multipart/form-data">
      <div class="checkout_content_box">
        <div class="loginbox">
          <div class="loginbox_left">
            <h2 style="color:white">회원 가입</h2>
            <p style="color:white">개인정보입력</p>
            <br>
              <div class="login_row" style="color:white">
                <div class="input_title" style="color:white">GameX 계정 이름 (ID)</div>
                <input class="text_input" type="text" name="id" id="input_username" placeholder="ID를 입력하세요"><br>
              </div>
              <div class="login_row">
                <div class="input_title" style="color:white">비밀번호</div>
                <input class="text_input" type="password" name="password" id="input_password" placeholder="비밀번호를 입력하세요" autocomplete="off"/>
              </div>
               
              <div class="login_row">
                <div class="input_title" style="color:white">이름</div>
                <input class="text_input" type="text" name="name" id="input_username" placeholder="이름을 입력하세요." autocomplete="off"/>
              </div>
              <div class="login_row">
                <div class="input_title" style="color:white">주소</div>
                <input class="text_input" type="text" name="address" id="input_username" placeholder="주소를 입력하세요" autocomplete="off"/>
              </div>
              <div class="login_row">
                <div class="input_title" style="color:white">이메일</div>
                <input class="text_input" type="email" name="email" id="input_username" placeholder="이메일을 입력하세요" autocomplete="off"/>
              </div>
              <div class="login_row">
                <div class="input_title" style="color:white">전화번호</div>
                <input class="text_input" type="text" name="tel" id="input_username" placeholder="전화번호를 입력하세요" autocomplete="off"/>
              </div>
              <div class="input_title" style="color:white; ">사진</div>
      <div class="login_row">
      <input type='file' id='Photo' name="photofile" style="font-size:13px;color:white" />
      </div>
                            <div class="login_row" id="captcha_entry" style="display: none;">
               
                <br>
                <div class="input_title" style="color:white">위에 있는 문자들을 입력해주세요.</div>
                <input class="text_input" id="input_captcha" type="text" name="captcha_text">
              </div>
      </div>
          <div style="clear: left;"></div>
          <div class="loginbox_left btn_ctn">
            <div id="login_btn_signin">
              <button type="submit" class="btnv6_blue_hoverfade  btn_medium">
                <span>등록하기</span>
              </button>
              <button type="reset" class="btnv6_blue_hoverfade  btn_medium">
                <span>다시쓰기</span>
              </button>
            </div>
            <div id="login_btn_wait" style="display: none;">
              <img src="../image/throbber.gif">
            </div>
          </div>
      
      
          <div class="loginbox_sep">
          </div>
          </div>
          </div>
 
        
          </form>
</div>
</div>
	
</body>
</html>
