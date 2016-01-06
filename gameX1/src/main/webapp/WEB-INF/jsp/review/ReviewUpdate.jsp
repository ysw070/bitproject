<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" href="../css/globalv2.css" rel="stylesheet" />
<jsp:include page="../Link.jsp"></jsp:include>
</head>
<jsp:include page="../Header.jsp"></jsp:include>
<body class="flat_page responsive_page">
<div class="responsive_page_frame with_header">
<div class="responsive_page_content">
<div class="responsive_page_template_content">
  <div class="pagecontent ">

  <div class="profile_small_header_bg">
  <div class="profile_small_header_texture">

    <div class="profile_small_header_text">
      <span class="profile_small_header_name"><a class="whiteLink" >${loginUser.id}</a></span>
           </div>
               <div class="profile_small_header_text" style="margin-left: 110px">
        <span class="profile_small_header_name"><a class="whiteLink">리뷰 수정 </a></span>
      
          </div>
  
      </div>
</div>

    <div class="grouppage_content_area groupadmin_content">
      <div class="maincontent">


        <div class="leftcol hasContentBoxes">


          <form class="smallForm" id="reviewUpdate" name="reviewUpdate" method="POST"
            action="../review/update.do" enctype="multipart/form-data">
            <input type="hidden" name="reviewNo" id="reviewNo" value="${review.reviewNo}">
            <div class="group_content group_summary">
              <div class="formRow">
                <div class="formRowTitle">제목</div>
                <div class="formRowFields">
                  <div class="gray_bevel for_text_input">
                    <input class="dynInput" type="text" name="title" id="title"
                      size="30" value="${review.title}">
                  </div>
                </div>
              </div>
              <div class="formRow">
                <div class="formRowTitle">작성자</div>
                <div class="formRowFields">
                  <div class="gray_bevel for_text_input">
                    <input class="dynInput" type="text" name="writer" id="writer"
                      size="30" value="${loginUser.id}" readonly="readonly">
                  </div>
                </div>
              </div>


              <div class="formRow">
                <div class="formRowTitle">플랫폼</div>
                <div class="formRowFields">
                  <select name="style" id="style" class="gray_bevel dynInput">
                  <option value="${review.style}">${review.style}</option>
                    <option value="PS4">PS4</option>
                    <option value="XboxOne">XboxOne</option>
                    <option value="PC">PC</option>
                    <option value="WiiU">WiiU</option>
                    <option value="Other">Other</option>

                  </select>
                </div>
              </div>
              <div class="formRow" id="cityContainer">
                <div class="formRowTitle">장르</div>
                <div class="formRowFields">
                  <select name="genre" id="genre" class="gray_bevel dynInput">
                  <option value="${review.genre}">${review.genre}</option>
                    <option value="Action">Action</option>
                    <option value="Indi">Indi</option>
                    <option value="RPG/simulation">RPG/simulation</option>
                    <option value="casual">casual</option>
                    <option value="Adventure">Adventure</option>
                    <option value="Sports">Sports</option>
                    <option value="FPS">FPS</option>
                    <option value="Other">Other</option>
                  </select>
                </div>
              </div>
            </div>
                <div class="formRow">
                <div class="formRowTitle" >사진</div>
   <div class="avatar_upload_ctn" id="avatar_upload_ctn"  style="margin-left: 140px">
                  <div class="gray_bevel">
                    <div class="upload_controls">
                      <div class="avatar_upload_input_ctn">
                        <input type="file" id="avatar_upload_input" name="pFile" size="16" >
                                             <input type='hidden' name='photo' value='${review.photo}'>
                      </div>
                    </div>
 </div>
 </div>
                </div>
                      <div class="formRow">
                <div class="formRowTitle" >영상</div>
   <div class="avatar_upload_ctn" id="avatar_upload_ctn"  style="margin-left: 140px">
                  <div class="gray_bevel">
                    <div class="upload_controls">
                      <div class="avatar_upload_input_ctn">
                        <input type="file" id="avatar_upload_input" name="vFile" size="16" >
                       <input type='hidden' name='video' value='${review.video}'>
                      </div>
                    </div>
 </div>
 </div>
                </div>
                

            <div class="group_content group_summary">
              <div class="formRow">
                <div class="formRowTitle">리뷰 내용</div>
                <div class="formRowFields">
                  <div class="gray_bevel fullwidth">
                    <textarea class="dynInput" rows="8" name="text"
                      id="text" >${review.text}</textarea>
                  </div>
                  <div style="text-align: right;"></div>
                </div>
              </div>
            </div>



            <div class="group_content_bodytext">
              <div class="forum_manage_actions">
                <a href="../review/list.do"
                  class="btn_grey_white_innerfade btn_medium"> <span>Cancel</span>
                </a>
                <button type="submit"
                  class="btn_green_white_innerfade btn_medium">
                  <span>리뷰 업데이트</span>
                </button>
              </div>
            </div>

          </form>
        </div>
      </div>
    </div>


    <div style="clear: both;"></div>
  </div>
</div>
</div>
</div>

</body>
</html>