<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="/WEB-INF/views/header.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
	<title>Home</title>
	
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,700' rel='stylesheet' type='text/css'>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="/resources/js/slider/jquery.immersive-slider.js"></script>
    <link href='/resources/css/slider/immersive-slider.css' rel='stylesheet' type='text/css'>
    <link href='/resources/css/my_home.css' rel='stylesheet' type='text/css'>
    
</head>

<body> 

<span></span><hr>
 
<!-- NEW -->
<div style="margin:auto; width:1920px;" class="lolomoRow lolomoRow_title_card" data-list-context="popularTitles">

 <div class="wrapper">
    <div class="main">
      <div style="max-width: 100%; height: 700px;">
        <div style="height: 100%;" id="immersive_slider">
         
          <div class="slide" data-blurred="/resources/images/1.jpg">    
          <div class="image">
              <a href="#" target="_blank">
                <img src="/resources/images/1.jpg" alt="Slider 1">
              </a>
            </div>
            <div class="content">
              <h1><a href="#" target="_blank">전시회 이름</a></h1>
              <br>
              <h2>날짜</h2>
              <p>2013.12.12 - 2013.12.15</p>
              <h2>장소</a></h2>
              <p>서울특별시 000 000 000</p>
              <h2>설명</a></h2>
              <p>It’s never been easier to watch YouTube on the big screen
              Send your favorite YouTube videos from your Android phone or tablet to TV with the touch of a button. It’s easy. No wires, no setup, no nothing. Find out more here.</p>
            </div>     
          </div>
          
          <div class="slide" data-blurred="/resources/images/2.jpg">    
          <div class="image">
              <a href="#" target="_blank">
                <img src="/resources/images/2.jpg" alt="Slider 2">
              </a>
            </div>
            <div class="content">
              <h1><a style="text-decoration: none; color: #FFF;" href="#" target="_blank">전시회 이름</a></h1>
              <br>
              <h2 style="font-size:30px;">날짜</h2>
              <p>2013.12.12 - 2013.12.15</p>
              <h2 style="font-size:30px;">장소</a></h2>
              <p>서울특별시 000 000 000</p>
              <h2 style="font-size:30px;">설명</a></h2>
              <p>It’s never been easier to watch YouTube on the big screen
              Send your favorite YouTube videos from your Android phone or tablet to TV with the touch of a button. It’s easy. No wires, no setup, no nothing. Find out more here.</p>
            </div>     
          </div>
          
          <div class="slide" data-blurred="/resources/images/3.jpg">    
          <div class="image">
              <a href="#" target="_blank">
                <img src="/resources/images/3.jpg" alt="Slider 3">
              </a>
            </div>
            <div class="content">
              <h1><a style="text-decoration: none; color: #FFF;" href="#" target="_blank">전시회 이름</a></h1>
              <br>
              <h2 style="font-size:30px;">날짜</h2>
              <p>2013.12.12 - 2013.12.15</p>
              <h2 style="font-size:30px;">장소</a></h2>
              <p>서울특별시 000 000 000</p>
              <h2 style="font-size:30px;">설명</a></h2>
              <p>It’s never been easier to watch YouTube on the big screen
              Send your favorite YouTube videos from your Android phone or tablet to TV with the touch of a button. It’s easy. No wires, no setup, no nothing. Find out more here.</p>
            </div>     
          </div>
          
          <div class="slide" data-blurred="/resources/images/4.jpg">    
          <div class="image">
              <a href="#" target="_blank">
                <img src="/resources/images/4.jpg" alt="Slider 4">
              </a>
            </div>
            <div class="content">
              <h1><a style="text-decoration: none; color: #FFF;" href="#" target="_blank">전시회 이름</a></h1>
              <br>
              <h2 style="font-size:30px;">날짜</h2>
              <p>2013.12.12 - 2013.12.15</p>
              <h2 style="font-size:30px;">장소</a></h2>
              <p>서울특별시 000 000 000</p>
              <h2 style="font-size:30px;">설명</a></h2>
              <p>It’s never been easier to watch YouTube on the big screen
              Send your favorite YouTube videos from your Android phone or tablet to TV with the touch of a button. It’s easy. No wires, no setup, no nothing. Find out more here.</p>
            </div>     
          </div>
          
          <a href="#" class="is-prev">&laquo;</a>
          <a href="#" class="is-next">&raquo;</a>
        </div>
      </div>
  	</div>
  </div> 
</div>

<span></span><hr>

<!-- test -->
<div style="margin:left; width:1920px;"  class="lolomoRow lolomoRow_title_card" data-list-context="popularTitles">
 <h2 class="rowHeader">
  <span class="rowTitle" aria-label="test">
    <div class="row-header-title">${userName} 님이 좋아하실만한 전시회</div>
  </span>
 </h2>

 <div class="rowContainer rowContainer_title_card" id="row-1">
     <div class="ptrack-container">
      <div class="rowContent slider-hover-trigger-layer">
       <div class="slider">
       
       <span class="handle handlePrev active" tabindex="0" role="button" aria-label="이전 콘텐츠 보기">
          <b class="indicator-icon icon-leftCaret"></b>
        </span>
        
        <ul class="pagination-indicator">
         <li class="active"></li>
         <li class=""></li>
        </ul>
        
        <div class="sliderMask showPeek">
         <div class="sliderContent row-with-x-columns">
          
          <div class="slider-item">
           <div class="title-card-container">
            <div id="title-card-1-1" class="slider-refocus title-card">
             <div class="ptrack-content">
              <a href="#" aria-label="1" tabindex="-1" aria-hidden="true" class="slider-refocus">
               <div class="boxart-size-16x20 boxart-container">
                <figure class="snip1368">
                 <img class="boxart-image boxart-image-in-padded-container" src="/resources/images/1.jpg" alt="">
                  <h3>전시회 이름</h3>
                </figure>
               </div>
              </a>
             </div>
             <div class=""><span></span></div>
            </div>
           </div>
          </div>
          
          <div class="slider-item">
           <div class="title-card-container">
            <div id="title-card-1-1" class="slider-refocus title-card">
             <div class="ptrack-content">
              <a href="#" aria-label="1" tabindex="-1" aria-hidden="true" class="slider-refocus">
               <div class="boxart-size-16x20 boxart-container">
                <figure class="snip1368">
                 <img class="boxart-image boxart-image-in-padded-container" src="/resources/images/2.jpg" alt="">
                  <h3>전시회 이름</h3>
                </figure>
               </div>
              </a>
             </div>
             <div class=""><span></span></div>
            </div>
           </div>
          </div>
          
          <div class="slider-item">
           <div class="title-card-container">
            <div id="title-card-1-1" class="slider-refocus title-card">
             <div class="ptrack-content">
              <a href="#" aria-label="1" tabindex="-1" aria-hidden="true" class="slider-refocus">
               <div class="boxart-size-16x20 boxart-container">
                <figure class="snip1368">
                 <img class="boxart-image boxart-image-in-padded-container" src="/resources/images/3.jpg" alt="">
                  <h3>전시회 이름</h3>
                </figure>
               </div>
              </a>
             </div>
             <div class=""><span></span></div>
            </div>
           </div>
          </div>
          
          <div class="slider-item">
           <div class="title-card-container">
            <div id="title-card-1-1" class="slider-refocus title-card">
             <div class="ptrack-content">
              <a href="#" aria-label="1" tabindex="-1" aria-hidden="true" class="slider-refocus">
               <div class="boxart-size-16x20 boxart-container">
                <figure class="snip1368">
                 <img class="boxart-image boxart-image-in-padded-container" src="/resources/images/4.jpg" alt="">
                  <h3>전시회 이름</h3>
                </figure>
               </div>
              </a>
             </div>
             <div class=""><span></span></div>
            </div>
           </div>
          </div>
          
          <div class="slider-item">
           <div class="title-card-container">
            <div id="title-card-1-1" class="slider-refocus title-card">
             <div class="ptrack-content">
              <a href="#" aria-label="1" tabindex="-1" aria-hidden="true" class="slider-refocus">
               <div class="boxart-size-16x20 boxart-container">
                <figure class="snip1368">
                 <img class="boxart-image boxart-image-in-padded-container" src="/resources/images/5.jpg" alt="">
                  <h3>전시회 이름</h3>
                </figure>
               </div>
              </a>
             </div>
             <div class=""><span></span></div>
            </div>
           </div>
          </div>
          
          <div class="slider-item">
           <div class="title-card-container">
            <div id="title-card-1-1" class="slider-refocus title-card">
             <div class="ptrack-content">
              <a href="#" aria-label="1" tabindex="-1" aria-hidden="true" class="slider-refocus">
               <div class="boxart-size-16x20 boxart-container">
                <figure class="snip1368">
                 <img class="boxart-image boxart-image-in-padded-container" src="/resources/images/6.jpg" alt="">
                  <h3>전시회 이름</h3> 
                </figure>
               </div>
              </a>
             </div>
             <div class=""><span></span></div>
            </div>
           </div>
          </div>
          
          <div class="slider-item">
           <div class="title-card-container">
            <div id="title-card-1-1" class="slider-refocus title-card">
             <div class="ptrack-content">
              <a href="#" aria-label="1" tabindex="-1" aria-hidden="true" class="slider-refocus">
               <div class="boxart-size-16x20 boxart-container">
                <figure class="snip1368">
                 <img class="boxart-image boxart-image-in-padded-container" src="/resources/images/7.jpg" alt="">
                  <h3>전시회 이름</h3>
                </figure>
               </div>
              </a>
             </div>
             <div class=""><span></span></div>
            </div>
           </div>
          </div>
          
          <div class="slider-item">
           <div class="title-card-container">
            <div id="title-card-1-1" class="slider-refocus title-card">
             <div class="ptrack-content">
              <a href="#" aria-label="1" tabindex="-1" aria-hidden="true" class="slider-refocus">
               <div class="boxart-size-16x20 boxart-container">
                <figure class="snip1368">
                 <img class="boxart-image boxart-image-in-padded-container" src="/resources/images/8.jpg" alt="">
                  <h3>전시회 이름</h3>
                </figure>
               </div>
              </a>
             </div>
             <div class=""><span></span></div>
            </div>
           </div>
          </div>
          
          <div class="slider-item">
           <div class="title-card-container">
            <div id="title-card-1-1" class="slider-refocus title-card">
             <div class="ptrack-content">
              <a href="#" aria-label="1" tabindex="-1" aria-hidden="true" class="slider-refocus">
               <div class="boxart-size-16x20 boxart-container">
                <figure class="snip1368">
                 <img class="boxart-image boxart-image-in-padded-container" src="/resources/images/9.jpg" alt="">
                  <h3>전시회 이름</h3>
                </figure>
               </div>
              </a>
             </div>
             <div class=""><span></span></div>
            </div>
           </div>
          </div>
          
         </div>
        </div>
        
        <span class="handle handleNext active" tabindex="0" role="button" aria-label="콘텐츠 더 보기">
          <b class="indicator-icon icon-rightCaret"></b>
        </span>
        
       </div> 
      </div>
      <span class="jawBoneContent"></span>
     </div>
    </div>
    
</div>
    
<br>
 
  	<script type="text/javascript">
  	  $(document).ready( function() {
  	    $("#immersive_slider").immersive_slider({
  	      container: ".main"
  	    });  
  	    $(".hover").mouseleave(
  			  function () {
  			    $(this).removeClass("hover");
  			  }
  	    );
  	  });

    </script>
</body>
</html>

