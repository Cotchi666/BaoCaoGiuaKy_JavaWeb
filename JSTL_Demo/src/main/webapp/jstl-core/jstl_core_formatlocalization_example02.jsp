<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
  <head>
     <meta charset="UTF-8">
     <title>fmt:parseNumber example</title>
  </head>
  <body>
  
     <h2>fmt:parseNumber example</h2>    
 
   <!--  -->
   <c:set var="accountBalance" value="$12345.6789" />
   <c:out value="${accountBalance}"/>
   
   
   
   <!--  -->
   <fmt:parseNumber var="parsedNumber" type="currency"
                  parseLocale="en_US"
                  value="${accountBalance}" />
   
  	<c:out value="${parsedNumber}" />
   


   <!-- integerOnly="true" : Chỉ lấy phần nguyên -->
   <fmt:parseNumber var="parsedNumber" type="currency"
                   integerOnly="true" parseLocale="en_US"
                   value="${accountBalance}" />
                   
    <c:out value="${parsedNumber}" />
    
  </body>
 
</html>