/**
 * 
 */
 function validate(){
	 var name=document.forms[0].mng_id.value;
	 var pwd=document.forms[0].mng_pwd.value;
	 var pwd1=document.forms[0].mng_repwd.value;
	 var call=document.forms[0].mng_sex.value;
	 var email=document.forms[0].mng_mail.value;
	 var location=document.forms[0].mng_info.value;
	 var accept=document.forms[0].check.checked;
	 var reg1=/[a-zA-Z]\w*/;
	 var reg2=/\w+([-+.']\w+)*@\w+([-.]\w+)*.\w+([-.]\w+)*/;
	 if(name.length<=0) alert("ID can't be Null");
	 else if(pwd.length<6) alert("Passwords Can't be Null");
	 else if(pwd!=pwd1) alert("the passwords no good");
//	 else if(!reg2.test(email)) alert("邮箱格式不正确");
	 else if(email.length<=0) alert("E-mail can't be Null");
	 else if(location.length<=0) alert("Infornation can't be Null");
	 else if(accept==false) alert("You must accept the rule");
	 else document.forms[0].submit(); 
	 
	 
	 
 }