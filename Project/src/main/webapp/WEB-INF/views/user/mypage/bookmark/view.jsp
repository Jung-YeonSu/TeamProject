<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYpE html>
<html>
<head>
<meta charset="UTF-8">
<title>잡덕</title>
<link rel="stylesheet" href="/css/common.css" />
<script src="https://cdn.jsdelivr.net/npm/browser-scss@1.0.3/dist/browser-scss.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/js/common.js" defer></script>

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
    top: 124px; 
  
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
    margin: 0px auto 60px  auto;
    padding: 0 60px 50px 60px;
  }

.main-title {
    color: #333333;
    font-size: 34px;  
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
             height: 86px;
                      
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
   width: 550px; 
   height: 630px;
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
  position: absolute; 
  bottom: 50px;
  left: 50%;
  transform: translateX(-50%);
  font-weight: 80;
      
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
<form action="/User/MyPage/Apply" method="POST">
 <div class="support"> 
   <div class="s-header">
      <h2 class="s-title">이력서</h2><span class="s-delete">x</span>
   </div>
   <hr>  
   <table class="s-list">
   
   <c:forEach var="item" items="${resumeList}">
     <tr>
     <td><input type="radio"name="resume_idx" id="${item.resume_idx}" value="${item.resume_idx}"> <label for="${item.resume_idx}">${item.resume_title}</label></td>
     <td>     
     <p>${item.resume_fdate}<input type="hidden" name="post_idx" value="${postVo.post_idx}"/></p>
     </td>
   </tr>
   </c:forEach>
  </table>
  
    <div class="s-btn">
   <input class ="btn btn-back" type="submit" value="입사지원"/>
    </div>
   </div>
 </form>
</div>

<%@include file="/WEB-INF/include/header.jsp" %>
<main>
  <div class="inner">  
      <div class="innercontents">
      <div class="sidebar">
        <table>
          <tr><th>개인서비스</th></tr>
         <tr><td><a href="/User/MyPage/Home/View" class="link"><img src="/images/myhome2.svg" class="img" data-hover="/images/myhome.svg">MY홈</a></td></tr>
         <tr><td><a href="/User/MyPage/Resume/List?user_idx=${user_idx}" class="link"><img src="/images/icon2.svg" class="img" data-hover="/images/icon22.svg">이력서</a></td></tr>
         <tr><td><a href="/User/MyPage/BookMark/List?user_idx=${user_idx}" class="active-color"><img src="/images/icon33.svg" class="img" >관심기업 / 받은제의</a></td></tr>
         <tr><td><a href="/User/MyPage/ApplyList/List?user_idx=${user_idx}" class="link"><img src="/images/arrow.svg" class="img"   data-hover="/images/arrow2.svg">지원내역</a></td></tr>
        </table>
      </div>
      
      <div class="container" >
      <div class="contain-body">       
        <h2 class="main-title">${postVo.post_title}</h2>
      <hr>
      <div id="info">
        <img src="/images/icon/company-profile.png" alt="${postVo.company_name}이미지"/>
        <div id="info-content">
           <h3 id="info-title">${postVo.company_name}</h3>
           <p><img id="star-size1"src="/images/star1.png" alt="Star Image">&nbsp;(${score})</p>
           <p>${companyVo.company_email}</p>
           <p>${companyVo.company_tel}<p/>
        </div>
      </div>

      <div class="sub-filed">
        <h4 class="sub-title">모집조건</h4>
        <hr>
        <table class="sub-topic">
        <tr>
          <td>직무</td>
          <td>${postVo.duty_name}</td>
        </tr>
		<tr>
		 <td>경력</td>
		  <td>${postVo.career_name}</td>
		</tr>
		<tr>
		  <td>최종학력</td>
		  <td>${postVo.edu_name}</td>
		</tr>
		<tr>
		  <td>급여</td>
		  <td>${postVo.post_salary}</td>
		</tr>
		<tr>
		  <td colspan="2" class="sub-skill">업무스킬
           <div class="sub-skill-layout">
            <c:if test="${not empty postVo.skill_name}">
              <div>${postVo.skill_name} </div> 
           </c:if>
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
	      <td>${postVo.emp_name}</td>
	    </tr>
	    <tr>
	      <td>근무지역</td>
	      <td>${postVo.city_name}</td>
	    </tr>
	   </table>
	  </div>


	
      <div class="sub-filed">
	    <h4 class="sub-title" >상세내용</h4>
	    <hr> 
	    <div class ="sub-content">${postVo.post_content}</div>
	  </div>
	
	  <div class="sub-filed">
	    <h4 class="sub-title">접수기간</h4>
	    <hr> 
	    <table class="sub-topic">
	     <tr>
	       <td>접수기간</td>
	       <td>${postVo.post_ddate}</td>
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

              <div class="btn btn-back"><a href ="/User/MyPage/BookMark/List?user_idx=${user_idx}">돌아가기</a></div>
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

 // 입사 지원 버튼
 // <div class="btn btn-update"><a href ="#">입사지원</a></div>
 </script>
 
</body>
</html>