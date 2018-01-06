$(document).ready(function(){
     
      var cc = ['#f00', '#fa0', '#ff0', '#0f0', '#00f', '#008', '#f0f'];
      

      $.each(cc,function(i, vv){
         var newItem = $('<div></div>');
         
         newItem.css('background',vv);
         newItem.attr('id', 'ni_'+i);
         newItem.html('<input type="button" value="»èÁ¦" onclick="delItem('+i+')">');
         
         $("#aaa").append(newItem);
      });
  
   });
   
   function delItem(cnt)
   {
	   $('#ni_'+cnt).remove();
   }
   