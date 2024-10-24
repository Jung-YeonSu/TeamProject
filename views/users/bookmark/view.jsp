<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYpE html>
<html>
<head>
<meta charset="UTF-8">
<title>잡덕</title>
<link rel="stylesheet" href="/css/common.css" />
<script src="https://cdn.jsdelivr.net/npm/browser-scss@1.0.3/dist/browser-scss.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<style>
/*오버레이*/
.overlay {
  
  position: fixed;
  top: 0;
  left: 0;
  z-index: 2;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.5);
  display:none;
    transition: all 0.3s  ease-in;
 }
 
 /*body*/ 
main {
   background-color:#F0F2F5;

}
 .innercontents {
   display:flex;
     gap:30px;
    font-family: pretendard; 
  

    padding-top:30px; 
    padding-bottom:60px; 
 }
 
 .sidebar {
   width:300px;
   height:378px;
   border-radius:15px;
   overflow:hidden;
   margin:0;
   
    position: sticky; 
    top: 20px; 
  
 }
 
 .sidebar table {
   width:100%;
   margin:0;
   border-spacing:0;
 }

 .sidebar th {
   background-color:#333;
   color:white;
   height:80px;
   margin:0;
   font-size:25px;
 }
 .sidebar td {
   padding:15px 15px;;
   margin:0;
   background-color:white;
 }
 
 .sidebar a {
   display:block;
   padding:10px 0;
   text-decoration:none;
   border-radius:7px;
   padding-left:10px;
   color: #767676;
   display:flex;
   align-items:center;
 }
   
 .sidebar a:hover {
   background-color: #EBECF1;
   color: #111;
 }
 
 .sidebar a img {
   margin-right:10px;
   
 }
.active-color {
  background-color:#EBECF1;
  color: #111 !important;
   
}
 .container {

     width:  100%;
     display:flex;
      flex-direction: column; 
    justify-content: center;
 }
 
  .contain-body {
    width:940px;
    min-height: 1840px;
    background-color: white;
    border-radius: 20px;
    margin: 0px auto 60px  auto  ;
    padding: 0 60px 50px 60px;
  }

.main-title {
    color: #333333;
    font-size: 36px; 
    font-weight: 600; 
    line-height: 50.40px;
    padding-bottom: 14px; 
    padding-top: 30px;
     }
 
 #info {
     display: flex; 
     padding-top:23px;

    #info-content {
    padding-left:23px;
    #star-size1 {
      width: 15px;
    height: 15px;
    }    
    }    
#info-title {
    
    color: #333333; 
    font-size: 28px; 
    font-weight: 600; 
    line-height: 39.20px; 
}        
p {
    color: #555555; 
    font-size: 16px; 
    font-weight: 400; 
    line-height: 22.40px;
    margin-top: 4px;
    margin-bottom: 3px;
}   
 img {
     width: 120px;
    height: 120px;
    }  
    }

 /*서브 분야들*/ 
 .sub-filed{    
  .sub-topic {
              width:100%;
              border-collapse: collapse;      
    tr {
      border-bottom:1px solid #CCCCCC; 
        td {
              border-bottom:1px solid #CCCCCC; 
              padding-bottom:30px; 
              padding-top: 30px;  
            }   
    .sub-skill {
                   padding-bottom:15px; 
                   padding-top: 15px;      
              }             
        td:nth-child(1) {                   
           color: #333333; 
           font-size: 16px; 
           font-weight: 500; 
           line-height: 22.40px; 
           width:80px;   
                         }
         td:nth-child(2) {
           color: #333333; 
           font-size: 16px;
           font-weight: 400;
           line-height: 22.40px; 
           padding-left: 180px;
           border-bottom:                       
           }
          }                    
     }      
    

     p {
      padding-top: 10px;
    color: #767676;
     }         
}


/*서브 - 긴글*/
.sub-content {
    
  				  width:100%;
  				  min-height: 250px;
   				 padding-top: 10px;
    			color: #767676;
   				 border-bottom: 1px solid #CCCCCC;
}
/*서브 - 소제목*/
.sub-title {
                color: #333333;
                font-size: 20px; 
                font-weight: 500; 
                line-height: 28px;
                margin-top:63px;
                margin-bottom:16px;
}

/*서브 - 경력긴글*/    
#sub-duty {
 td:nth-child(1) > div {
     					width:100%;
     					min-height: 100px;
      					}   
 td:nth-child(2) > div {
     					width:100%;
     					min-height: 100px;
      						color: #767676;
      					}
 } 
  
  
     
   /*기술스택 */   
.sub-skill-layout {
     display:flex;
     
     div {
     padding:12px;
     margin:6px;
     background-color:#EBECF1; 
     border-radius: 8px;
     color:#555555px;
     font-size: 12px;
     font-weight: 400;
     }
     
     div:nth-child(1) {
      margin-left: 0px;
     }
} 

/*버튼*/

.btn-layout {   margin: 0 auto;
}
 .btn {
   display: inline-block;
    width: 200px; 
    height: 60px;   
    border-radius: 8px;
 
    a {
    display: block;
    text-decoration: none; 
    width: 100%; 
    height: 100%;
    text-align: center;
    line-height: 60px;
 }
 }
  .btn-back {
  background: #585766; 
  color: white;

   &:hover {
     background-color:#666577;
     color:white;
     
   }
 }
 .btn-update {
   
   color: #585766;
   border : 1px solid #585766;
   &:hover {
     background-color:#F8F8F8;
     color:#585766;

   }
 }
 /*채용제의 */
.support {
   position: fixed;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%); 
   width: 570px; 
   height: 700px; 
   background-color: white; 
   box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
   z-index: 3 
   display: flex;
   align-items: center;
   justify-content: center;
   border-radius: 8px;
   padding: 80px 51px 15px 51px;
}
.s-header {

 display:flex;
 justify-content: space-between;
}
.s-title {
 color: #333333;
 font-size: 36px; 
 font-weight: 600; 
 line-height: 50.40px;
 margin-bottom: 8px;
 padding:0;
    }


.s-list{
  border-collapse: collapse;
  width:100%;
   tr {
   td { 
   padding:18px 0 18px;
   }
   td:nth-child(1){
   width:80%;
   text-align: left;
   input{
   width: 17px;
   height: 17px;
   border-bottom: #cccccc
      }
   label{
   margin-left:8px;
   font-size: 20px;
   color: #333333;
   }
   }
   td:nth-child(2){
   width:20%;
   text-align: right;
   color: #767676;
   }
   }
}


.s-btn {
   width: 170px; 
   height: 50px; 
   padding: 10px; 
   background: #333333; 
   border-radius: 8px;
   color:white;

   position: absolute; /* 절대 위치 설정 */
   bottom: 50px;
   cursor: pointer;
   left: 50%;
   transform: translateX(-50%);
   
   &:hover {
   background-color: #4A4A4A;
   }
   a{ 
    display: block;
    text-decoration: none; 
    color: white; 
    width: 100%; 
    height: 100%;
    text-align: center;
    line-height: 33px;
   }   
   }
.s-delete {
 color: #767676;
font-weight: 300;
font-size: 36px;  
cursor: pointer;

}

</style>

</head>
<body>
<div class="overlay">  
 <div class="support"> 
   <div class="s-header">
      <h2 class="s-title">이력서</h2><span class="s-delete">x</span>
   </div>
   <hr>
   
   <table class="s-list">
     <tr>
     <td><input type="checkbox"name="" id="resume_id1"> <label for="resume_id1">이력서1</label></td>
     <td>
     <p>2024.10.14</p>
     </td>
   </tr>
  </table>
  
   <div class="s-btn" ><a href ="#">입사지원</a></div> 
 </div>
</div>
<%@include file="/WEB-INF/include/header.jsp" %>
<main>
  <div class="inner">  
      <div class="innercontents">
      <div class="sidebar">
        <table>
          <tr><th>개인서비스</th></tr>
         <tr><td><a href="" class="link"><img src="/images/myhome2.svg" class="img" data-hover="/images/myhome.svg">MY홈</a></td></tr>
         <tr><td><a href="" class="link"><img src="/images/icon2.svg" class="img" data-hover="/images/icon22.svg">이력서</a></td></tr>
         <tr><td><a href="" class="active-color"><img src="/images/icon33.svg" class="img" >관심기업 / 받은제의</a></td></tr>
         <tr><td><a href="" class="link"><img src="/images/arrow.svg" class="img" data-hover="/images/arrow2.svg">지원내역</a></td></tr>
        </table>
      </div>
      
      <div class="container" >
      <div class="contain-body">       
        <h2 class="main-title">채용공고제목</h2>
      <hr>
      <div id="info">
        <img src="" alt=""/>
        <div id="info-content">
           <h3 id="info-title">기업이름</h3>
           <p><img id="star-size1"src="/images/star1.png" alt="Star Image"> (5.0)</p>
           <p>email@email.com</p>
           <p>010-1234-1234<p/>
        </div>
      </div>

      <div class="sub-filed">
        <h4 class="sub-title">모집조건</h4>
        <hr>
        <table class="sub-topic">
        <tr>
          <td>직무</td>
          <td>IT개발</td>
        </tr>
		<tr>
		 <td>경력</td>
		  <td>경력무관</td>
		</tr>
		<tr>
		  <td>최종학력</td>
		  <td>학력무관</td>
		</tr>
		<tr>
		  <td>급여</td>
		  <td>회사내규에 따름</td>
		</tr>
		<tr>
		  <td colspan="2" class="sub-skill">업무스킬
           <div class="sub-skill-layout">
           <!-- for문 필요! <c:> -->
              <div>JAVA </div> <div>HTML/CSS </div> 
           </div> 
         </td>
		</tr>
        </table>
      </div>



      <div class="sub-filed">
	    <h4 class="sub-title">근무조건</h4>
	    <hr> 
	    <table class="sub-topic">
		<tr>
	      <td>근무형태</td>
	      <td>정규직</td>
	    </tr>
	    <tr>
	      <td>근무지역</td>
	      <td>부산시 부산진구</td>
	    </tr>
	   </table>
	  </div>


	
      <div class="sub-filed">
	    <h4 class="sub-title" >상세내용</h4>
	    <hr> 
	    <div class ="sub-content"> 나에 대해 자유롭게 설명하고 채용기회의 확률을 높이세요</div>
	  </div>
	
	  <div class="sub-filed">
	    <h4 class="sub-title">접수기간</h4>
	    <hr> 
	    <table class="sub-topic">
	     <tr>
	       <td>접수기간</td>
	       <td>정규직</td>
	     </tr>
   
        <tr>
          <td>접수방법</td>
          <td>잡덕 입사지원</td>
        </tr>
        <tr>
           <td>이력서 양식</td>
           <td>잡덕 온라인 이력서</td>
        </tr>
       </table>
     </div>

     <div class="sub-filed">
        <h4 class="sub-title" >유의사항</h4>
        <hr> 
        <p>입사지원 서류에 허위사실이 발견될 경우, 채용확정 이후에도 채용이 취소될 수 있습니다<p>
     </div>
     
         
     
    
          </div>
          <div class="btn-layout">
              <div class="btn btn-update"><a href ="#">입사지원</a></div>
              <div class="btn btn-back"><a href ="#">돌아가기</a></div>
         </div>
      </div>
   </div>
 </div>

</main>

 
 <%@include file="/WEB-INF/include/footer.jsp" %>
 
 <script>
 
 $(function(){
 const links = document.querySelectorAll(".link");

//사이드 바 클릭시

 links.forEach(link => {
     const img = link.querySelector(".img");
     const originalSrc = img.src;
     const hoverSrc = img.getAttribute("data-hover");

     link.addEventListener("mouseover", () => {
         img.src = hoverSrc;
     });

     link.addEventListener("mouseout", () => {
         img.src = originalSrc;
     });
 });	 
	 

 


	$('.btn-update').on('click', function(){
		$('.overlay').fadeIn();
				
	})
	$('.s-delete').on('click', function(){
		$('.overlay').fadeOut();				
	})
	$('.s-btn').on('click', function(){
		$('.overlay').fadeOut();				
	})

 })

 
 </script>
 
</body>
</html>