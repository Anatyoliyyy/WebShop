<%--
  Created by IntelliJ IDEA.
  User: Анатолій
  Date: 10.10.2018
  Time: 0:59
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>ааНбаЕбаНаЕб ааАаГаАаЗаИаН</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <!-- Bootstrap -->
    <link href="http://localhost:8080/WebShop/css//bootstrap.css" rel="stylesheet">
    <link href="http://localhost:8080/WebShop/css//bootstrap-responsive.css" rel="stylesheet">
    <link href="http://localhost:8080/WebShop/css//style-for-text.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="http://localhost:8080/WebShop/js/bootstrap.js"></script>
</head>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="navbar navbar-inverse">
                <div class="navbar-inner">
                    <div class="container-fluid">
                        <a data-target="navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a> <a href="#" class="brand"><img src=""/></a>
                        <div class="nav-collapse collapse navbar-responsive-collapse">
                            <ul class="nav">
                                <li class="active">
                                    <a href="helloPage.htm">ааЛаАаВаНаАб</a>
                                </li>
                                <li class="dropdown">
                                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">ааАбаЕаГаОбаИаИ<strong class="caret"></strong></a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-header">
                                            ааОаМаПбббаЕбб
                                        </li>
                                        <li>
                                            <a href="notebook.htm">ааОббаБбаКаИ</a>
                                        </li>
                                        <li class="divider">
                                        </li>
                                        <li class="nav-header">
                                            аЁаИббаЕаМб аВаИаДаЕаОаНаАаБаЛбаДаЕаНаИб
                                        </li>
                                        <li>
                                            <a href="camera.htm">ааАаМаЕбб</a>
                                        </li>
                                        <li>
                                            <a href="cable.htm">ааАаБаЕаЛб</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="customers.htm">ааОаКбаПаАбаЕаЛаИ</a>
                                </li>
                                <li>
                                    <a href="cart.htm">ааОбаЗаИаНаА</a>
                                </li>

                            </ul>
                            <form class="navbar-form pull-right" >
                                <input type="text" class="span8"/>
                                <button type="submit" class="btn">ааОаИбаК</button>
                            </form>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <div id="left">
        <h3>абаОаГаО: <c:out value="${summaryPrice}"/>  </h3>
        <h4>ааОбаЛаЕ аОаЗаНаАаКаОаМаЛаЕаНаИб баО баПаИбаКаОаМ аВаЕбаЕаЙ аПбаИбббаПаАаЙбаЕ аК аОбаОбаМаЛаЕаНаИб аЗаАбаВаКаИ</h4>
        <table class="table table-bordered" border="2" width="2" cellspacing="2" cellpadding="2" >
            <thead>

            </thead>
            <tbody>
            <tr>
                <th>аЂаОаВаАб</th>

                <c:forEach items="${name}" var="name">
                    <td><c:out value="${name}"/> </td>
                </c:forEach>

            </tr>

            <tr>
                <th>аІаЕаНаА</th>
                <c:forEach items="${price}" var="price">
                    <td>
                        <c:out value="${price}"/>
                    </td>
                </c:forEach>
            </tr>

            </tbody>
        </table>
        <hr size="3" color="gray">
    </div>

    <div id="right">
        <h3>аббаАаВббаЕ баВаОаИ аДаАаНаНбаЕ:</h3>
        <form action="AddCustomerServlet" method="POST">
            <p>ааВаЕаДаИбаЕ аВаАбаЕ аИаМб : <input class="input-prepend" type="text" name="customerName" value="" size="20" /></p>
            <p>ааВаЕаДаИбаЕ аВаАб emаАil: <input class="input-prepend" type="text" name="customerEmailAdress" value="" size="20" /></p>
            <p>ааОаМаЕб аВаАбаЕаЙ аКбаЕаДаИбаКаИ: <input class="input-prepend" type="text" name="customerCreditCart" value="" size="20" /></p>
            <p>
                <input class="btn btn-success" type="submit" value="абаПбаАаВаИбб аЗаАбаВаКб" name="name" />
                <input type="hidden" name="target"  value="/endOrder.htm">
            </p>

        </form>

    </div>
</div>
</body>
</html>