<%@ page language="java"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="manager_register.js"></script>
<style>
input,img
{
opacity:1.0;
filter:alpha(opacity=100); 
}
input:hover,img:hover
{
opacity:0.3;
filter:alpha(opacity=30);
}
p {padding: 10%;}
div#container{ float:center;}
div#title { height:200px}
div#right { height:300px;width:700px;float:left;}
div#left { height:350px;width:350px;float:left;overflow:auto;}
</style>
<title>Super Administrator</title>
</head>
<body background="img/amazing.jpg">
<form onsubmit="return false" action="ManagerServlet" method="post" id="manager_register" name="for1"> 
  <input type="hidden" name="action" value="super_user">
  <input type="hidden" name="postName" value="manager_register">
  <div id="container">
  <div id="title">
  <center><h1><font face="Georgia" color="white">Super Administrator Sign_up</font></h1></center>
  </div>
  
  <div id="right">
  <table align="right" border="3" bgcolor="black">
  <tr><td><font face="Georgia" color="white" size="3px">User_id:</font></td>
  <td><input type="text" name="mng_id"><td/></tr>
  <tr><td><font face="Georgia" color="white" size="3px">Password:</font></td>
  <td><input type="password" name="mng_pwd"></td></tr>
  <tr><td><font face="Georgia" color="white" size="3px">Replay:</font></td>
  <td><input type="password" name="mng_repwd"></td></tr>
  <tr><td><font face="Georgia" color="white" size="3px">User_sex:</font></td>
  <td><input type="radio" name="mng_sex" value="Male"><font color="white"><b>Male</b></font>
  <input type="radio" name="mng_sex" value="Famale"><font color="white"><b>Female</b></font></td></tr>
  <tr><td><font face="Georgia" color="white" size="3px">User_e-mail:</font></td>
  <td><input type="text" name="mng_mail"></td></tr>
  <tr><td><font face="Georgia" color="white" size="3px">User_info:</font></td>
  <td><textarea rows="5" cols="35" name="mng_info"></textarea></td></tr>
  <tr><td colspan="2" align="center">
  <input  type="image" value="Sign_up" src="img/registe.png" width="100" height="30" onClick="validate()">
    <a href="javascript:document.for1.reset();"><img border=0 src="img/reset.png" width="100" height="30" ></a>
 </td>
  </tr>  

  </table>
  </div>
  
  <div id="left"> 
 <center> <h4><font color="white">User Agreement:</font></h4></center>
    <p>
<font color="white" face="Georgia" size="2px">
These Terms of Service ("Terms") govern your access to and use of the services, websites, and applications offered by Wenba (the "Service"). Your access to and use of the Service is conditioned on your acceptance of and compliance with these Terms. By accessing or using the Service you agree to be bound by these Terms.
You may use the Service only if you can form a binding contract with Wenba, and only in compliance with these Terms and all applicable local, provinces, national, and international laws, rules and regulations. You must provide us accurate information, including your real name, when you create your account on Wenba.
We may, without prior notice, change the Service; stop providing the Service or features of the Service, to you or to users generally; or create usage limits for the Service.
You are responsible for safeguarding the password that you use to access the Service and for any activities or actions under your password. We encourage you to use "strong" passwords (that use a combination of upper and lower case letters, numbers and symbols) with your account. Wenba will not be liable for any loss or damage arising from your failure to comply with this instruction.
You represent that you are over the age of thirteen (13) years old. If you are over thirteen, but under the legal age of majority, your parent or legal guardian must consent to this Terms of Service and Privacy Policy, and affirm that they accept this Agreement on behalf of, and bear all legal and financial responsibility and liability for the actions of, any child between the age of 13 and majority, and expressly ratify and confirm any acts of any such child and all users of the account.
By submitting, posting or displaying Content on or through the Service, you grant us a worldwide, non-exclusive, royalty-free license (with the right to sublicense) to use, copy, reproduce, process, adapt, modify, publish, transmit, display and distribute such Content in any and all media or distribution methods (now known or later developed).

You agree that this license includes the right for other users of the Service to modify your Content, and for Wenba to make your Content available to others for the publication, distribution, syndication, or broadcast of such Content on other media and services, subject to our terms and conditions for such Content use. Such additional uses by Wenba or others may be made with no compensation paid to you with respect to the Content that you submit, post, transmit or otherwise make available through the Service.

We may modify or adapt your Content in order to transmit, display or distribute it over computer networks and in various media and/or make changes to your Content as are necessary to conform and adapt that Content to any requirements or limitations of any networks, devices, services or media.

Additionally, by uploading content to the site, you warrant, represent and agree that you have the right to grant Wenba the license described above. You also represent, warrant and agree that you have not and will not contribute any Content that (a) infringes, violates or otherwise interferes with any copyright or trademark of another party, (b) reveals any trade secret, unless the trade secret belongs to you or you have the owner's permission to disclose it, (c) infringes any intellectual property right of another or the privacy or publicity rights of another, (d) is libelous, defamatory, abusive, threatening, harassing, hateful, offensive or otherwise violates any law or right of any third party, (e) creates an impression that you know is incorrect, misleading, or deceptive, including by impersonating others or otherwise misrepresenting your affiliation with a person or entity; (f) contains other people's private or personally identifiable information without their express authorization and permission, and/or (g) contains or links to a virus, trojan horse, worm, time bomb or other computer programming routine or engine that is intended to damage, detrimentally interfere with, surreptitiously intercept or expropriate any system, data or information. Wenba reserves the right in its discretion to remove any Content from the Site, suspend or terminate your account at any time, or pursue any other remedy or relief available under equity or law.
</p>
  </font>
  <center>
  <input type="checkbox" name="check" value="yes"><font color="white"><b>Are you sure see the rule?</b></font>
  </center>
  </div>
  
  </div>
  </form>
</body>
</html>