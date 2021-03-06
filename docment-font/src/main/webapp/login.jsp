<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/1/8
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <title>用户登录</title>
    <link rel="stylesheet" href="/style/css/base.css"/>
    <link rel="stylesheet" href="/style/css/global.css"/>
    <link rel="stylesheet" href="/style/css/login-register.css"/>
    <script type="text/javascript" src="/style/js/jquery.js"></script>
</head>
<body>
<!--顶部信息start-->
<!--
<div id="topnav">
    <div class="topwrap">
        <dl class="user-entry">
            <dt>您好，欢迎来到ShopCZ商城<a href=""></a></dt>
            <dd>[<a href="">登录</a>]</dd>
            <dd>[<a href="">注册</a>]</dd>
            <dd></dd>
        </dl>
        <ul class="quick-menu">
            <li class="user-center">
                <div class="menu">
                    <a href="" class="menu-hd">我的商城</a>
                    <div class="menu-bd">
                        <ul>
                            <li><a href="">已买到的商品</a></li>
                            <li><a href="">我的空间</a></li>
                            <li><a href="">我的好友</a></li>
                        </ul>
                    </div>
                </div>
            </li>
            <li class="cart">
                <div class="menu">
                    <span class="menu-hd">购物车<strong>0</strong>种商品</span>
                    <div class="menu-bd">
                        <div class="no-order">
                            <span>您的购物车中暂无商品，赶快选择心爱的商品吧！</span>
                            <a href="" class="button">查看购物车</a>
                        </div>
                    </div>
                </div>
            </li>
            <li class="favorite">
                <div class="menu">
                    <a href="" class="menu-hd">我的收藏</a>
                    <div class="menu-bd">
                        <ul>
                            <li><a href="">收藏的商品</a></li>
                            <li><a href="">收藏的店铺</a></li>
                        </ul>
                    </div>
                </div>
            </li>
            <li class="pm">
                <a href="">站内信</a>
            </li>
        </ul>
    </div>
</div>
-->
<!--顶部信息end-->

<div class="header wrap1000">
    <a href=""><img src="/style/images/logo.png" alt=""/></a>
</div>

<div class="main">
    <div class="login-form fr">
        <div class="form-hd">
            <h3>用户登录</h3>
        </div>
        <div class="form-bd">
            <form action="/user/login" method="POST">
                <dl>
                    <dt>用户名</dt>
                    <dd><input type="text" name="user" class="text" id="uname"/></dd>
                </dl>
                <dl>
                    <dt>密&nbsp;&nbsp;&nbsp;&nbsp;码</dt>
                    <dd><input type="password" name="pwd" class="text" id="password"/></dd>
                </dl>
                <dl>
                    <dt>验证码</dt>
                    <dd><input type="text" name="code" class="text" size="10" style="width:58px;"> <img
                            src="/style/images/code.png" alt="" align="absmiddle" style="position:relative;top:-2px;"/>
                        <a href="" style="color:#999;">看不清，换一张</a></dd>
                </dl>
                <dl>
                    <dt>&nbsp;</dt>
                    <dd><input type="submit" value="登  录" class="submit" onclick="denguser()" /> <a href=""
                                                                                                   class="forget">忘记密码?</a>
                    </dd>
                </dl>
            </form>
            <%--<script>--%>
                <%--function denguser() {--%>
                    <%--var uname = $('#uname').val();--%>
                    <%--if (uname == null || uname == undefined || uname == '') {--%>
                        <%--alert('用户名为空！')--%>
                        <%--return;--%>
                    <%--}--%>
                    <%--var pwd = $('#password').val();--%>
                    <%--if (pwd == null || pwd == undefined || pwd == '') {--%>
                        <%--alert('密码为空！')--%>
                        <%--return;--%>
                    <%--}--%>
                    <%--$.ajax({--%>
                        <%--url: "/user/login",--%>
                        <%--type: "post",--%>
                        <%--data: {uname: uname, password: pwd},--%>
                        <%--datatype: "json",--%>
                        <%--success: function (e) {--%>
                            <%--if (e && e.status == 1) {--%>
                                <%--console.log("登录成功");--%>
                                <%--//localStorage.setItem("id",e[0].uid)--%>
                                <%--// window.location.href="/member_info";--%>
                                <%--$.ajax({--%>
                                    <%--url: "/user/getuser",--%>
                                    <%--type: "post",--%>
                                    <%--datatype: "json",--%>
                                    <%--success: function (e) {--%>
                                        <%--console.info(e);--%>
                                    <%--}--%>
                                <%--});--%>

                            <%--} else {--%>
                                <%--alert("账号或者密码错误！")--%>
                                <%--window.location.href = "/login"--%>
                            <%--}--%>
                        <%--}--%>
                    <%--})--%>
                <%--}--%>
            <%--</script>--%>
            <dl>
                <dt>&nbsp;</dt>
                <dd> 还不是本站会员？立即 <a href="" class="register">注册</a></dd>
            </dl>
            <dl class="other">
                <dt>&nbsp;</dt>
                <dd>
                    <p>您可以用合作伙伴账号登录：</p>
                    <a href="" class="qq"></a>
                    <a href="" class="sina"></a>
                </dd>
            </dl>
        </div>
        <div class="form-ft">

        </div>
    </div>

    <div class="login-form-left fl">
        <img src="/style/images/left.jpg" alt=""/>
    </div>
</div>

<div class="footer clear wrap1000">
    <p><a href="">首页</a> | <a href="">招聘英才</a> | <a href="">广告合作</a> | <a href="">关于ShopCZ</a> | <a href="">联系我们</a></p>
    <p>Copyright 2004-2013 itcast Inc.,All rights reserved.</p>
</div>


</body>
</html>
