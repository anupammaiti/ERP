<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>

<body bgcolor="#F1B672" background="images/bg.jpg">

<table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Finance Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table>

<h2 align="center"><strong><font color="#573801" face="verdana" size="3">FA Fixed Asset Master Maintenance</font></strong></h2>
<form action="">
<table align="center" width="800">
  <tr>
   <td width="167" align="right">
    <font color="#573801" face="verdana" size="2">Code</font>
   </td>
   <td width="144">
    <input type="text" name="code">
   </td>
   <td width="61" align="right">
    <font color="#573801" face="verdana" size="2">Subcode</font>
   </td>
   <td width="144">
    <input type="text" name="subcode">
   </td>
   <td width="260">
   <input type="submit" value="Search">
   </td>
  </tr>

</table>
</form>
<form action="">
<table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269" width="800">
<tr>
 <td>  <table>
   <tr>
     <td><font color="#573801" face="verdana" size="2"> Description </font> </td>
     <td><select name="description">
         <option>Building</option>
       </select>
     </td>
   </tr>
   <tr>
     <td><font color="#573801" face="verdana" size="2"> Profit Center </font> </td>
     <td><select name="profitcenter">
         <option> ADMINISTRATION </option>
       </select>
     </td>
   </tr>
   <tr>
     <td><font color="#573801" face="verdana" size="2"> Branch </font> </td>
     <td><select name="branch">
         <option>Finance</option>
       </select>
     </td>
   </tr>
   <tr>
     <td><font color="#573801" face="verdana" size="2"> Group </font> </td>
     <td><select name="group">
         <option>Lands & Buildings</option>
         <option>Shares</option>
       </select>
     </td>
   </tr>
   <tr>
     <td><font color="#573801" face="verdana" size="2"> Location </font> </td>
     <td><select name="location">
         <option>palce</option>
       </select>
     </td>
   </tr>
   <tr>
     <td><font color="#573801" face="verdana" size="2">Serial Number</font> </td>
     <td><input type="text" name="serialnumber">
     </td>
   </tr>
   <tr>
     <td><font color="#573801" face="verdana" size="2">Comments</font> </td>
     <td><textarea name="comments"></textarea>
     </td>
   </tr>
   <tr>
     <td><font color="#573801" face="verdana" size="2">Purchase Status</font> </td>
     <td><input type="text" name="purchasestatus" size="3">
     </td>
   </tr>
   <tr>
     <td><font color="#573801" face="verdana" size="2">Balance Type</font> </td>
     <td><select name="balancetype">
         <option>Forever</option>
         <option>Shortterm</option>
       </select>
     </td>
   </tr>
   <tr>
     <td align="right"><input type="checkbox" name="poolingassets">
     </td>
	 <td align="left">
	   <font color="#573801" face="verdana" size="2">
	    Pooling Asset?
	   </font>
	  </td>
   </tr>
   <tr>
    <td>

	</td>
    <td>
	 <input type="image" src="images/submit.jpg">
	</td>
   </tr>
 </table>
 </td>
 <td>
 <table>
   <tr>
    
    <td>
	  <strong><font color="#573801" face="verdana" size="2">Balances</font></strong>
	</td>
	<tr>
	 <td>
	  <input type="radio" name="balances"><font color="#573801" face="verdana" size="2">Taxation</font>
	 </td>
	 <td>
	  <input type="radio" name="balances"><font color="#573801" face="verdana" size="2">Accounting</font>
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Cost</font>
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Residual Value</font>
	 </td>
	</tr>
  <tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Accum Reval/Write Off</font>
	 </td>
	</tr>
    <tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Accum Dept's/Offset</font>
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Opening Bookvalue</font>
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Additions</font>
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Disposals</font>
	 </td>
	</tr>
    <tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Depn Ytd</font>
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Last Sale</font>
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Quantity</font>
	 </td>
	</tr>
 </table>
 
 
 </td>
</tr>
 
</table>
</form>
</body>
</html>
