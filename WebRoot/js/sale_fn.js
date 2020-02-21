var a=document.getElementsByTagName("a");

for(var i=0;i<a.length;i++){
	if(a[i].classList.contains("goods_name")||a[i].classList.contains("price_old")||a[i].classList.contains("price_new")){
		a[i].onclick=function(){
			return false;
		}
	}
}
for(var i=0;i<a.length;i++){
	if(a[i].classList.contains("goods_name")||a[i].classList.contains("price_old")||a[i].classList.contains("price_new")){
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
}