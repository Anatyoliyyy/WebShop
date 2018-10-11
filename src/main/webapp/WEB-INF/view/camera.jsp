<%--
  Created by IntelliJ IDEA.
  User: Анатолій
  Date: 10.10.2018
  Time: 0:55
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="camera">
    <h3>абаБбаАаНаА аКаАбаЕаГаОбаИб: ааАаМаЕбб</h3>
    <hr size="3" color="gray">
    <h4>ааОбаЛаЕаДаНбб аДаОаБаАаВаЛаЕаНаНаАб аВаЕбб аВ аКаОбаЗаИаНб: <c:out value="${lastItem}"/> </h4>
    <h4>абаОаГаО: <c:out value="${summaryPrice}"/> </h4>
    <table class="table table-bordered" border="2" width="2" cellspacing="2" cellpadding="2" >
        <thead>
        <tr>
            <th>т</th>
            <th>ааМб</th>
            <th>ааОаДаЕаЛб</th>
            <th>аІаЕаНаА</th>
            <th>ааАаЛаИбаИаЕ</th>
            <th>а аКаОбаЗаИаНб</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${camera}" var="camera">
            <tr>

                <td><c:out value="${camera.id}"/></td>
                <td><c:out value="${camera.nameCamera}"/></td>
                <td><c:out value="${camera.modelCamera}"/></td>
                <td><c:out value="${camera.price}"/></td>
                <td><c:out value="${camera.amount}"/></td>
                <td>
                    <form action="addToCartServlet" method="post" >
                        <input class="btn btn-inverse" type="submit" name="" value="а аКаОбаЗаИаНб" />
                        <input type="hidden" name="infoItem"  value="${camera.modelCamera}">
                        <input type="hidden" name="nameItem"  value="${camera.nameCamera}">
                        <input type="hidden" name="priceItem"  value="${camera.price}">
                        <input type="hidden" name="target"  value="/camera.htm">
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>



</div>