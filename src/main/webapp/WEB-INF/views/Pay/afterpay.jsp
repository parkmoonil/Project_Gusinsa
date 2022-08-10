<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>결제가 완료되었습니다!</h3>

<form action="afterpay" method="post">
<input type="hidden" name="p_price" size="11" value = "${afterpay.sprice }" readonly>
     <input type="hidden" name="o_totprice" size="11" value= "${afterpay.sumsping }" readonly>
    <input type="hidden" name="o_count" size="11" value = "${afterpay.amount }" readonly>
    <input type="hidden" name="p_name" size="11" value = "${afterpay.p_name }" readonly>
    <input type="hidden" name="p_code" size="11" value = "${afterpay.p_code }" readonly>
    <input type="hidden" name="maddr_one" size="11" value = "${afterpay.maddr_one }" readonly>
    <input type="hidden" name="maddr_two" size="11" value = "${afterpay.maddr_two }" readonly>
    <input type="hidden" name="maddr_three" size="11" value = "${afterpay.maddr_three }" readonly>
    <input type="hidden" name="maddr_four" size="11" value = "${afterpay.maddr_four }" readonly>
    
    <input type="hidden" name="mphone" size="11" value = "${afterpay.mphone }" readonly>
    <input type="hidden" name="p_img" size="11" value = "${afterpay.p_img }" readonly>

<input type="submit"  value="확인"/>

</form>
</body>
</html>