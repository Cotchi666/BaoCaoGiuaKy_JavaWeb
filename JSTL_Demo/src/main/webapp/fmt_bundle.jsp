<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<c:if test="${not empty param.radio_nn}">
  <c:set var="language" value="${param.radio_nn}" scope="session"/>
</c:if>
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="bundles.MyBundle" />
<!DOCTYPE html>
<html>
  <head>
     <meta charset="UTF-8">
     <title>fmt:bundle example</title>
  </head>
  <body>
     <h2>fmt:bundle example</h2>
     <form action="">
       <table >
           <tr>
              <td>
                 <fmt:message key="login.label.userName"/>
              </td>
              <td>
                 <input type="text" name="userName" />
              </td>
           </tr>
           <tr>
              <td>
                 <fmt:message key="login.label.password"/>
              </td>
              <td><input type="text" name="userName" /></td>
           </tr>
        </table>
        <input type="radio"  name="radio_nn" value = "vi"
   
        />
         <input type="radio"  name="radio_nn" value = "en"
       
        />
        <input type="submit"  value="Submit"/>
        
     </form>
     
     
  </body>
</html>