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
.inner {
display:flex;
justify-content: space-between;

}

#job{
   font-family: pretendard; 
    background-color:#F5F5F5;
    padding-top:30px; 
    padding-bottom:60px; 
    position: relative; 
    z-index: 1; 
    main{        
    width: 890px;
    min-height: 1840px;
    background-color: white;
    border-radius: 20px;
    margin: 0px auto 60px  auto  ;
    padding: 0 60px 50px 60px;
   
     /* 주 제목 */   
    .main-title {
    color: #333333;
    font-size: 36px; 
    font-weight: 600; 
    line-height: 50.40px;
    padding-bottom: 14px; 
    padding-top: 30px;
       }
       
    /* 기업 정보 */   
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
     } 
      
    .sub-title {
                color: #333333;
                font-size: 20px; 
                font-weight: 500; 
                line-height: 28px;
                margin-top:63px;
                margin-bottom:16px;
    }
    .sub-content {
    
  				  width:100%;
  				  min-height: 250px;
   				 padding-top: 10px;
    			color: #767676;
   				 border-bottom: 1px solid #CCCCCC;
    }
     p {
      padding-top: 10px;
    color: #767676;
     }
     
     
     /*기술스택 */
     .sub-skill-layout {
     display:flex;
     div {
     padding:12px;
     margin:8px;
     background-color:#EBECF1; 
     border-radius: 4px;
     }
     div:nth-child(1) {
      margin-left: 0px;
     }
     
       }             
     }
    }
    
    /*오른쪽 메뉴*/ 
    #side-menu{
    padding :0 24px ;
    width: 280px; 
    height: 222px;
    background: white; 
    border-radius: 16px; 
    border: 1px #EBEDF1 solid;
  
    
    position: sticky; 
    top: 20px; 
    
    
    
    
    p:nth-child(1) {
    
    color: #767676; 
    font-size: 14px; 
    font-weight: 400; 
    line-height: 19.60px;
    padding-top: 28px ;
    padding-bottom: 12px;
    }
    #side-hit {    
    color: #767676; 
    font-size: 12px; 
    font-weight: 400; 
    line-height: 16.80px; 
    padding-bottom: 22px;
 
    }
    
   h4 {
   color: #333333; 
   font-size: 20px; 
   font-weight: 600; 
   line-height: 28px;
    padding-top: 9px ;
    padding-bottom: 12px ;
     white-space: nowrap;
      overflow: hidden; 
   text-overflow: ellipsis; 
   }
    }
    #side-bottom {
    display:flex;
    justify-content: space-between;
     align-items: center; 
    }
    .btn{
    width: 170px; 
   height: 50px; 
   padding: 10px; 
   background: #333333; 
   border-radius: 8px;
   color:white;
    cursor: pointer;
   &:hover {
    background-color: #4A4A4A;
   }
    }
    
    #btn-scrape{
    width: 40px; 
   height: 40px;
   border-radius: 4px;
   border: 1px solid #cccccc;
   text-align: center;
   padding-top:3px;
   
   &:hover
    }
    .image {
    width: 28px; 
    height: 28px;
    font-size: 16px; 
    border-radius: 8px;
    line-height: 14px;
 
 }
 /*버튼*/
 .btn-back {

    width: 200px; 
    height: 60px;
    background: #585766; 
    color: white;
    margin: 0 auto; 
    border-radius: 8px;
    &:hover {
     background-color:#666577;
     color:white;
     
   }
    
    a {
    display: block;
    text-decoration: none; 
    color: white; 
    width: 100%; 
    height: 100%;
    text-align: center;
    line-height: 60px;
 }
 }
 
}

/*채용제의 */
.support {
   position: fixed;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%); 
   width: 600px; 
   height: 580px; 
   background-color: white; 
   box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
   z-index: 3 
   display: flex;
   align-items: center;
   justify-content: center;
   border-radius: 8px;
   padding: 40px 51px 15px 51px;
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
    margin-bottom: 30px;
    }

.s-select {
    width: 100%; 
    height: 60px;
    border: 1px solid #cccccc;
    border-radius:12px;
    color: #767676;
    padding: 5px;
    margin-bottom: 19px;
}

.s-content {
    width: 100%; 
    max-width: 100%; 
    height: 200px;
    max-height: 200px;
    border: 1px solid #cccccc;
    border-radius:12px;
    color: #767676;
    padding: 5px;
    margin-bottom: 80px;
}
.s-btn {
width: 170px; 
   height: 50px; 
   padding: 10px; 
   background: #333333; 
   border-radius: 8px;
   color:white;
   margin:0 auto;

    cursor: pointer;
   &:hover {
    background-color: #4A4A4A;
   }
   a{ display: block;
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
<body >

<div class="overlay">  
 <div class="support"> 
   <div class="s-header">
      <h2 class="s-title">채용제의</h2><span class="s-delete">x</span>
   </div>
   <select class="s-select">
     <option>공고선택</option>
     <option>공고1</option>
     <option>공고2</option>
     </select>
   <textarea class="s-content" placeholder="제의내용"></textarea>
   <div class="s-btn" ><a href ="#">채용제의</a></div> 

</div>

</div>
	<%@include file="/WEB-INF/include/header.jsp" %>

<div id="job">
  <div class="inner">
    <div id="main-layout">
    <main>
     
      <h2 class="main-title">이력서 제목</h2>
      <hr>
      <div id="info">
        <img src="" alt=""/>
        <div id="info-content">
           <h3 id="info-title">회원이름</h3>
           <p>성별,나이 (태어난 연도)</p>
           <p>email@email.com</p>
           <p>010-1234-1234<p/>
        </div>
      </div>

      <div class="sub-filed">
        <h4 class="sub-title">학력</h4>
        <hr>
        <table class="sub-topic">
        <tr>
          <td>최종학력</td>
          <td>00대학교 졸업</td>
        </tr>
	
		
        </table>
      </div>
     
      <div class="sub-filed">
        <h4 class="sub-title">업무 및 스킬</h4>
        <hr>
        <table class="sub-topic"> 
         <tr>
		   <td colspan="2" class="sub-skill">
           <div class="sub-skill-layout">
           <!-- for문 필요! <c:> -->
              <div>JAVA </div> <div>HTML/CSS </div> 
           </div> 
         </td>
		</tr>
        </table>
      </div>




      <div class="sub-filed">
	    <h4 class="sub-title">희망 근무조건</h4>
	    <hr> 
	    <table class="sub-topic">
		<tr>
	      <td>희망근무지</td>
	      <td>부산</td>
	    </tr>
	    <tr>
	      <td>희망직무</td>
	      <td>IT개발</td>
	    </tr>
	    <tr>
	      <td>희망고용형태</td>
	      <td>정규직</td>
	    </tr>
	   </table>
	  </div>
	  
	  
       <div class="sub-filed">
	    <h4 class="sub-title">경력</h4>
	    <hr> 
	    <table class="sub-topic">
	     <tr>
	       <td>회사명</td>
	       <td>회사명</td>
	     </tr>
   
        <tr>
          <td>근무기간</td>
          <td>2024.07 ~ 2025.01</td>
        </tr>
        <tr id="sub-duty">
           <td><div>담당업무</div></td>
           <td><div>담당업무를 작성하세요</div></td>
        </tr>
       </table>
     </div>

	
      <div class="sub-filed">
	    <h4 class="sub-title" >자기소개서</h4>
	    <hr> 
	    <div class ="sub-content"> 나에 대해 자유롭게 설명하고 채용기회의 확률을 높이세요</div>
	  </div>
	

     
     
     
     
    </main>
    <div class="btn-back"><a href ="#">돌아가기</a></div>
   </div>

    <div id="side-menu">
       <div id ="side-frame">
         <p>최종수정일:2024.10.10<p>
         <hr>
         <h4>이력서 제목</h4>
         <p id="side-hit">조회수 1 <p>

         <div id="side-bottom">
           <button class="btn" id="btn-apply">채용제의</button>
           <div id="btn-scrape" >
            <input type="image" src="/images/star1.png" alt="Star Image"class="image">
           </div>
         </div>
       </div>
    </div>
    
    
    
    
   </div>
   

   
   
 </div>
 
     <%@include file="/WEB-INF/include/footer.jsp" %>

  
  <script>
  
  $(function(){

	$('#btn-apply').on('click', function(){
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