


function doClick(o){
	 o.className="nav_current";
	 var j;
	 var id;
	 var e;
	 for(var i=1;i<=2;i++){ //����3 ��Ҫ���޸� ����������� ���Ƕ���
	   id ="nav"+i;	   
	   j = document.getElementById(id);
	   e = document.getElementById("sub"+i);
	   if(id != o.id){
	   	 j.className="nav_link";
	   	 e.style.display = "none";
	   }else{
			e.style.display = "block";
	   }
	 }
	 }
