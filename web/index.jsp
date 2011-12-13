<%-- 
    Document   : index
    Created on : 10 Δεκ 2011, 6:08:27 μμ
    Author     : BerkosDesk
--%>





 
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="grafika2.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Cart by Antonis</title>
    </head>
    <body>
        
        <h1>Shopping Cart by Antonis</h1>
        
         
        
        
        <jsp:useBean id="Cafe" class="com.mycompany.Cafe" scope="session" >
<jsp:setProperty name="Cafe" property="value" value="${cookie.CafeVV.value}" />
</jsp:useBean >
        <jsp:useBean id="Sugar" class="com.mycompany.Sugar" scope="session" >
<jsp:setProperty name="Sugar" property="value" value="${cookie.SugarVV.value}" />
</jsp:useBean >
        <jsp:useBean id="Water" class="com.mycompany.Water" scope="session" >
<jsp:setProperty name="Water" property="value" value="${cookie.WaterVV.value}" />
</jsp:useBean >


<jsp:setProperty name="Cafe" property="value" value="${cookie.CafeVV.value}" />
<jsp:setProperty name="Sugar" property="value" value="${cookie.SugarVV.value}" />
<jsp:setProperty name="Water" property="value" value="${cookie.WaterVV.value}" />

       

<pre>
 <c:if test="${empty cookie.CafeVV.value }" >
<jsp:setProperty name="Cafe" property="value" value="0" />
<jsp:setProperty name="Sugar" property="value" value="0" />
<jsp:setProperty name="Water" property="value" value="0" />
</c:if>
</pre>
 
   <h1>Basket</h1>
        
        <form method="get">
                <table cellpadding="3">
<tbody>
<tr>
<td align="LEFT"><strong>Item</strong></td>
<td align="RIGHT"><strong>Price</strong></td>
<td align="RIGHT"><strong>-->    Set New Quantity    <--</strong></td>
<td align="RIGHT"><strong>Current Quantity</strong></td>
<td align="RIGHT"><strong>Total</strong></td>
</tr>
<tr>
<td align="LEFT">Cafe</td>
<td align="RIGHT"> ${Cafe.price}</td>
<td><input type="text" name="CafeV" 
           value="0" size="5" style:="visibility: visible" /></td>
  <jsp:setProperty name="Cafe" property="value" param="CafeV"  />  

<td align="RIGHT">${Cafe.value}</td>
<td align="RIGHT">$ ${Cafe.value * Cafe.price }</td>

</tr>
<tr>
<td align="LEFT">Sugar</td>
<td align="RIGHT">${Sugar.price}</td>
<td><input type="text" name="SugarV" 
           value="0" size="5" style:="visibility: visible" /></td>
 <jsp:setProperty name="Sugar" property="value" param="SugarV"  />  
<td align="RIGHT">${Sugar.value}</td>
<td align="RIGHT">$ ${Sugar.price * Sugar.value}</td>
</tr>
<tr>
<td align="LEFT">Water</td>
<td align="RIGHT">${Water.price}</td>
<td><input type="text" name="WaterV" 
           value="0" size="5" style:="visibility: visible" /></td>
 <jsp:setProperty name="Water" property="value" param="WaterV"  />  
<td align="RIGHT">${Water.value}</td>
<td align="RIGHT">$ ${Water.value * Water.price}</td>
</tr>
<tr>
<td align="LEFT">Total</td>
<td align="RIGHT"></td>
<td align="RIGHT"></td>
<td align="RIGHT">$  ${ (Cafe.value * Cafe.price ) + (Sugar.price * Sugar.value) + (Water.value * Water.price)}</td>
</tr>
</tbody>
</table>
     <div>

         <input type="hidden" name="CafeP" value="${Cafe.price}"/>
         <input type="hidden" name="SugarP" value="${Sugar.price}"/>
         <input type="hidden" name="WaterP" value="${Water.price}"/>

                 <input type="submit" value="Ανανεωση"  />
                <input type="submit" value="Πληρωμη!"  />
            </div> 
                
                
        </form>      

            <%
            

                Cookie cookie=new Cookie("CafeVV",Cafe.getValue());
                cookie.setMaxAge(30*60);
                response.addCookie(cookie);
                Cookie cookie1=new Cookie("SugarVV",Sugar.getValue());
                cookie1.setMaxAge(30*60);
                response.addCookie(cookie1);
                Cookie cookie2=new Cookie("WaterVV",Water.getValue());
                cookie2.setMaxAge(30*60);
                response.addCookie(cookie2);
                
         %> 

         <p></p>
<INPUT TYPE="BUTTON" VALUE="SRC" ONCLICK="window.location.href='http://dl.dropbox.com/u/12925667/Project3-EL-WWW-Berkakis.rar'" >  
<INPUT TYPE="BUTTON" VALUE="?" ONCLICK="window.location.href='doc1.html' ">  
        
    </body>
</html>
