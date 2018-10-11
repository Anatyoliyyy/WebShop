<%--
  Created by IntelliJ IDEA.
  User: Анатолій
  Date: 10.10.2018
  Time: 0:58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="notebook">

    <h3>абаБбаАаНаА аКаАбаЕаГаОбаИб: ааОббаБбаКаИ</h3>
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
        <c:forEach items="${notebook}" var="notebook">
            <tr>

                <td><c:out value="${notebook.id}"/></td>
                <td><c:out value="${notebook.nameNotebook}"/></td>
                <td><c:out value="${notebook.modelNotebook}"/></td>
                <td><c:out value="${notebook.price}"/></td>
                <td><c:out value="${notebook.amount}"/></td>
                <td>
                    <form action="addToCartServlet" method="post" >
                        <input class="btn btn-inverse" type="submit" name="" value="а аКаОбаЗаИаНб" />
                        <input type="hidden" name="infoItem"  value="${notebook.modelNotebook}">
                        <input type="hidden" name="nameItem"  value="${notebook.nameNotebook}">
                        <input type="hidden" name="priceItem"  value="${notebook.price}">
                        <input type="hidden" name="target"  value="/notebook.htm">
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>




</div>