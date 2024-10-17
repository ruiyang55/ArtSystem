<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>我的收藏</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <script>
        $(function () {
            $('#header').load('reader_header.html');
        })
    </script>
</head>
<body background="img/timg.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<div id="header"></div>
<div style="position: relative;top: 10%">
    <c:if test="${!empty succ}">
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
                ${succ}
        </div>
    </c:if>
    <c:if test="${!empty error}">
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
                ${error}
        </div>
    </c:if>
</div>

<div class="panel panel-default" style="width: 90%;margin-left: 5%;margin-top: 5%">
    <div class="panel-heading">
        <h3 class="panel-title">
            我的收藏记录
        </h3>
    </div>
    <div class="panel-body">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>编号</th>
                <th>收藏日期</th>
                <th>取消日期</th>
                <th>状态</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="alog">
                <tr>
                    <td><c:out value="${alog.bookId}"></c:out></td>                 
                    <td><fmt:formatDate value="${alog.lendDate}" pattern="yyyy-MM-dd"/></td>
                    <td><fmt:formatDate value="${alog.backDate}" pattern="yyyy-MM-dd"/></td>
                    <c:if test="${empty alog.backDate}">
                        <td>未取消</td>
                    </c:if>
                    <c:if test="${!empty alog.backDate}">
                        <td>已收藏</td>
                    </c:if>
                    <c:if test="">
                        <td>下架</td>
                    </c:if>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
