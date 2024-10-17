<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav style="position:fixed;z-index: 999;width: 100%;background-color: rgba(0,0,0,.8)" class="navbar navbar-default"
     role="navigation">
    <div class="container-fluid">
        <div class="navbar-header" style="margin-left: 8%;margin-right: 1%">
            <a class="navbar-brand" href="admin_main.html" style="font-family: LiSu; font-size: 250%; color: white">艺术品馆藏系统</a>
        </div>
        <div class="collapse navbar-collapse" >
            <ul class="nav navbar-nav navbar-left">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
                        艺术品管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="admin_books.html">全部艺术品信息</a></li>
                        <li class="divider"></li>
                        <li><a href="book_add.html">增加艺术品</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
                        参观人员管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="allreaders.html">全部参观人员</a></li>
                        <li class="divider"></li>
                        <li><a href="reader_add.html">增加参观人员</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
                        收藏管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="lendlist.html">收藏记录</a></li>
                    </ul>
                </li>
                <li >
                    <a href="admin_repasswd.html" style="color: white">
                        密码修改
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.html" style="color: white">${admin.username}, 已登录</a>
                </li>
                <li><a href="logout.html" style="color: white">退出</a></li>
            </ul>
        </div>
    </div>
</nav>
