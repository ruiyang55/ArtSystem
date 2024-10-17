<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>《 ${detail.name}》</title>
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
<div class="col-xs-6 col-md-offset-3" style="position: relative;top: 3%">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">《 ${detail.name}》</h3>
        </div>
        <div class="panel-body">
            <table class="table table-hover">
                <tr>
                    <th width="15%">艺术品名称</th>
                    <td>${detail.name}</td>
                </tr>
                <tr>
                    <th>作者</th>
                    <td>${detail.author}</td>
                </tr>
                <tr>
                    <th>出版公司</th>
                    <td>${detail.publish}</td>
                </tr>
                <tr>
                    <th>艺术品编号</th>
                    <td>${detail.isbn}</td>
                </tr>
                <tr>
                    <th>简介</th>
                    <td>${detail.introduction}</td>
                </tr>
                <tr>
                    <th>地区</th>
                    <td>${detail.language}</td>
                </tr>
                <tr>
                    <th>预估行价</th>
                    <td>${detail.price}</td>
                </tr>
                <tr>
                    <th>展出日期</th>
                    <td>${detail.pubdate}</td>
                </tr>
                <tr>
                    <th>分类号</th>
                    <td>${detail.classId}</td>
                </tr>
                <tr>
                    <th>状态</th>
                    <c:if test="${detail.number>1}">
                        <td>展出中</td>
                    </c:if>
                    <c:if test="${detail.number==0}">
                        <td>收库中</td>
                    </c:if>

                </tr>
                </tbody>
            </table>
        </div>
    </div>

</div>

</body>
</html>
