window.onload=function(){
      var aaa = document.getElementById("aaa");
      var cc = ['#f00', '#fa0', '#ff0', '#0f0', '#00f', '#008', '#f0f'];
      
      for (var i = 0; i < cc.length; i++) {
         var newItem = document.createElement('div');
         newItem.style.background=cc[i];
         newItem.setAttribute('id', 'ni_'+i);
         newItem.innerHTML='<input type="button" value="»èÁ¦" onclick="delItem('+i+')">';
         
         aaa.appendChild(newItem);
      }
      
      
   }
   
   function delItem(cnt)
   {
      var ddd= document.getElementById('ni_'+cnt);
       ddd.parentNode.removeChild(ddd);
   }
   