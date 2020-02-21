var text=document.getElementsByClassName("text")[0];
var user_kuang=document.getElementsByClassName("user_kuang")[0];
text.addEventListener("click",function(){
	user_kuang.focus();
},false);
user_kuang.addEventListener("input",function(){
	text.style.opacity="0";
	if(user_kuang.value.length==0){
		text.style.opacity="1";
	}
},false);
var a=document.getElementsByTagName("a");
for(var i=0;i<a.length;i++){
	a[i].addEventListener("click",(function(i){
		return function(event){
			var event=event||window.event;
				if (event.preventDefault) {
					event.preventDefault();
				}else{
					event.returnValue=false;
				}			
		}
	})(i),false);
}