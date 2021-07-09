var logoElement = document.querySelector(".header-navbar__logo");
var emailElement = document.querySelector(".email");
var facebookElement = document.querySelector(".facebook");
var linkedInElement = document.querySelector(".linkedin");

logoElement.onclick = function(){
    location.href = "home";
};

emailElement.onclick = function(){
    location.href = "";
};

facebookElement.onclick = function(){
    location.href = "https://www.facebook.com/fptsoftware.dps/";
}

linkedInElement.onclick = function(){
    location.href = "https://www.linkedin.com/company/dpsfptsoftware/";
}