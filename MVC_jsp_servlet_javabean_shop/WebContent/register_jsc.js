/**
 * 
 */
 function validate(){
	 var name=document.forms[0].user_id.value;
	 var pwd=document.forms[0].password.value;
	 var pwd1=document.forms[0].repassword.value;
	 var call=document.forms[0].call.value;
	 var email=document.forms[0].mail.value;
	 var location=document.forms[0].location.value;
	 var accept=document.forms[0].accept.checked;
	 var reg1=/[a-zA-Z]\w*/;
	 var reg2=/\w+([-+.']\w+)*@\w+([-.]\w+)*.\w+([-.]\w+)*/;
	 if(name.length<=0) alert("用户名不能为空");
	 else if(!reg1.test(name)) alert("用户名格式不正确");
	 else if(pwd.length<6) alert("密码长度至少为6位");
	 else if(pwd!=pwd1) alert("两次密码不一致");
	 else if(call.length<=0) alert("联系方式不能为空");
	 else if(!reg2.test(email)) alert("邮箱格式不正确");
	 else if(location.length<=0) alert("收货地址不能为空");
	 else if(accept==false) alert("您需要同意并接受用户使用协议");
	 else document.forms[0].submit();
	 
	 
	 
	 
 }