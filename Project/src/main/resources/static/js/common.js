
   const $header         = document.querySelector("header")
   const $menuBtn        = document.querySelector(".menu-btn");
   const $headerUtil     = document.querySelectorAll(".header-util li");
   const $utilBtn        = document.querySelector(".menu-btn button");
   const $headerComunity = document.querySelector(".header-comunity")
   const $submenu = document.querySelector(".header-comunity ul")

   
   let menuActive = false;
   $menuBtn.addEventListener("click", (e) => {
     menuActive = !menuActive;
     console.log(menuActive);
     if (menuActive) {
       $header.classList.add("menu-btn-active");
       $menuBtn.classList.add("menu-btn-active");
       $utilBtn.classList.add("menu-btn-active");
       $submenu.classList.add("menu-btn-active");
       for(let i = 0; i < 3; i++){
         $headerUtil[i].style.display = "none"
       }

     } else {
       $header.classList.remove("menu-btn-active");
       $menuBtn.classList.remove("menu-btn-active");
       $utilBtn.classList.remove("menu-btn-active");
       $submenu.classList.remove("menu-btn-active");

       for(let i = 0; i < 3; i++){
         $headerUtil[i].style.display = "block"
       }
     }
   });
