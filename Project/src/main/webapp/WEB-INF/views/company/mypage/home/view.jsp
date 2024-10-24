<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잡덕</title>
<link rel="stylesheet" href="/css/common.css" />
<style>
 .innercontents {
   display:flex;
   gap:30px;
 }
 
 .sidebar {
   border :1px solid #ccc;
   width:300px;
   border-radius:15px;
   overflow:hidden;
   margin:0;
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
   display :flex;
   flex-direction:column;
   width:100%;
   gap:30px;
 }
 
 .container table {
   width:100%;
   height:100%;
   
 }
 
 .content {
   flex:1;
   border: 1px solid #ccc;
   text-align:left;
   border-radius:10px;
   display:flex;
   flex-direction:row;
   padding-left:45px;
   padding-top:30px;
 }
 
 .highlight {
   font-size:25px;
   font-weight:bold;
   color:#333;
 }
 .profile-image {
   margin-right:35px;
   width:125px;
   height:125px;
 }
 
 .text-box {
   margin-top:10px;
   margin-right:500px;
 }
   
 .settings-image {
   width:45px;
   height:45px;
   margin-top:15px;
 }
   
 
 .content2 {
   flex:1;
   text-align:center;
   border: 1px solid #ccc;
   border-collapse:collapse;
   border-radius:10px;
   font-size:20px;
   font-weight:450;
   color:#555;
 }
 
 #justify {
   justify-content:center;
 }
</style>
</head>
<body>
   <%@include file="/WEB-INF/include/header.jsp" %>
 <main>
  <div class="inner">
      <div class="innercontents">
      <div class="sidebar">
         <table>
         <tr><th>기업서비스</th></tr>
         <tr><td><a href="" class="active-color"><img src="/images/myhome.svg" class="img">MY홈</a></td></tr>
         <tr><td><a href="" class="link"><img src="/images/icon2.svg" class="img" data-hover="/images/icon22.svg">채용공고</a></td></tr>
         <tr><td><a href="" class="link"><img src="/images/icon3.svg" class="img" data-hover="/images/icon33.svg">관심인재</a></td></tr>
         <tr><td><a href="" class="link"><img src="/images/arrow.svg" class="img" data-hover="/images/arrow2.svg">지원내역</a></td></tr>
        </table>
      </div>
      <div class="container">
        <div class="content">
  		    <img src="/images/profile.png" class="profile-image">
  		  <div class="text-box">
           	<span class="highlight">기업이름</span><br>
           	<span><img src="/images/star.png">(5.0)</span><br>
            <span>Email@email.com</span><br>
            <span>010-1234-1234</span><br>
          </div>
            <a href=""><img src="/images/settings.png" class="settings-image"></a>
       </div>
        <div class=content2>
         <table>
            <tr>
               <td><a href="">0<br>이력서</a></td>
               <td><a href="">0<br>관심인재</a></td>
               <td><a href="">0<br>지원내역</a></td>
            </tr>
         </table>
        </div>
      </div>
   </div>
 </div>

</main>
   <%@include file="/WEB-INF/include/footer.jsp" %>
   
<script>
    const links = document.querySelectorAll(".link");

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
</script>

</body>
</html>