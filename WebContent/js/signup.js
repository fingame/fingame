function form_submit(){
  		var id = document.form1.id.value;
  		var pw = document.form1.pw.value;
  		var repw = document.form1.repw.value;
  		var email = document.form1.email.value;
  		var name = document.form1.name.value;
  		var nicname = document.form1.nicname.value;
  		var idReg = /^[a-zA-Z]+[a-z0-9A-Z]{3,19}$/g;
  		
  		if(id == null || id == ""){
  			alert('���̵� �Է��ϼ���.');
  			document.form1.id.focus();
  			return false;
  		}
  		if( !idReg.test(id) ) {
  			alert("���̵�� ���ҹ��ڷ� �����ϴ� 4~20�� ������ �Ǵ� �����̾�� �մϴ�.");
  			return false;
  		}

  		
  		if(pw == null || pw == ""){
  			alert('��й�ȣ�� �Է��ϼ���.');
  			document.form1.pw.focus();
  			return false;
  		}
  		if(repw == null || repw == ""){
  			alert('�ٽ��ѹ� ��й�ȣ�� �Է��ϼ���.');
  			document.form1.repw.focus();
  			return false;
  		}
  		if(email == null || email == ""){
  			alert('�̸����� �Է��ϼ���.');
  			document.form1.email.focus();
  			return false;
  		}
  		if(name == null || name == ""){
  			alert('�̸��� �Է��ϼ���.');
  			document.form1.name.focus();
  			return false;
  		}
  		if(nicname == null || nicname == ""){
  			alert('�г����� �Է��ϼ���.');
  			document.form1.nicname.focus();
  			return false;
  		}
  		if(pw == repw){
  			return true;
  		}
  		else
  			alert('��й�ȣ�� �����ϰ� �Է��ϼ���.')
  			return false;
  	}
function confirmId(){
		url = "confirmId.jsp?id=" + document.form1.id.value;
  		open(url, "confirm", "toolbar=no, location=no, status=no, menubar=no, scollbars=no, resizeable=no, width=200, height=200");
}