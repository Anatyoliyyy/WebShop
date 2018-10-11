<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="cable">
    <h3>абаБбаАаНаА аКаАбаЕаГаОбаИб: ааАаБаЕаЛб</h3>
    <hr size="3" color="gray">
    <h4>ааОбаЛаЕаДаНбб аДаОаБаАаВаЛаЕаНаНаАб аВаЕбб аВ аКаОбаЗаИаНб: <c:out value="${lastItem}"/> </h4>
    <h4>абаОаГаО: <c:out value="${summaryPrice}"/> </h4>
    <table class="table table-bordered "border="2" width="2" cellspacing="2" cellpadding="2" >
        <thead>
        <tr>
            <th>т</th>
            <th>ааМб</th>
            <th>аІаЕаНаА</th>
            <th>ааАаЛаИбаИаЕ</th>
            <th>а аКаОбаЗаИаНб</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${cable}" var="cable">
            <tr>

                <td><c:out value="${cable.id}"/></td>
                <td><c:out value="${cable.nameCable}"/></td>
                <td><c:out value="${cable.price}"/></td>
                <td><c:out value="${cable.amount}"/></td>
                <td>
                    <form action="addToCartServlet" method="post" >
                        <input class="btn btn-inverse" type="submit" name="" value="а аКаОбаЗаИаНб" />
                        <input type="hidden" name="infoItem"  value=" ">
                        <input type="hidden" name="nameItem"  value="${cable.nameCable}">
                        <input type="hidden" name="priceItem"  value="${cable.price}">
                        <input type="hidden" name="target"  value="/cable.htm">
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>



</div>