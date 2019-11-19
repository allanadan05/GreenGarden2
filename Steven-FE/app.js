const navSlide = () => {
    const mini = document.querySelector('.mini');
    const nav = document.querySelector('.nav-links');
    const navLinks = document.querySelectorAll('.nav-links li');

    mini.addEventListener('click', () => {
        nav.classList.toggle('nav-active');

    });

        navLinks.forEach((link, index) => {
            link.style.animation = `navLinkFade 0.5s ease forwards ${index / 7 + 1.5}s`;
            console.log(index / 7);
        });

    
}
navSlide();

//range slider

var slider = document.getElementById("myrange");
var output = document.getElementById("value");

output.innerHTML = slider.value;

slider.oninput = function(){
    output.innerHTML = this.value;
}

document.getElementById("login-btn").addEventListener("click",function(){

                document.querySelector(".popup").style.display = "flex";
                
            });

            document.querySelector(".close").addEventListener("click",function(){
                document.querySelector(".popup").style.display = "none";
            });

            document.getElementById("btn-profile").addEventListener("click",function(){ 
                document.querySelector("profile").style.display="flex";

            });


                             $(document).ready(function() {
                            $("#btn-profile").click(function(){
                            $("#profile").slideToggle(500);
                        });
                        });



