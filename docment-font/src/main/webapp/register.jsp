<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/1/8
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <title>用户登录</title>
    <link rel="stylesheet" href="/style/css/base.css" />
    <link rel="stylesheet" href="/style/css/global.css" />
    <link rel="stylesheet" href="/style/css/login-register.css" />
    <script type="text/javascript" src="/style/js/jquery.js" ></script>
</head>
<body>
<div class="header wrap1000">
    <a href=""><img src="/style/images/logo.png" alt="" /></a>
</div>

<div class="main">
    <div class="login-form fr">
        <div class="form-hd">
            <h3>用户注册</h3>
        </div>
        <div class="form-bd">
            <form>
                <dl>
                    <dt>用户名</dt>
                    <dd><input type="text" id="uname" class="text" /></dd>
                </dl>
                <dl>
                    <dt>密码</dt>
                    <dd><input type="password" id="upassword" class="text"/></dd>
                </dl>
                <dl>
                    <dt>确认密码</dt>
                    <dd><input type="password" id="repwd" class="text"/></dd>
                </dl>
                <dl>
                    <dt>邮箱</dt>
                    <dd><input type="text" id="email" class="text"/></dd>
                </dl>
                <dl>
                    <dt>验证码</dt>
                    <dd><input type="text" id="code" class="text" size="10" style="width:58px;"> <img src="/style/images/code.png" alt="" align="absmiddle" style="position:relative;top:-2px;"/> <a href="" style="color:#999;">看不清，换一张</a></dd>
                </dl>
                <dl>
                    <dt>&nbsp;</dt>
                    <dd><input type="button" onclick="adduser()" value="立即注册" class="submit"/> <input type= "checkbox" checked="checked"/>阅读并同意<a href="" class="forget">服务协议</a></dd>
                </dl>
            </form>
            <script>
                function adduser(){
                    var uname = $("#uname").val();
                    var upassword = $("#upassword").val();
                    var repwd = $("#repwd").val();
                    var email = $("#email").val();
                    var data={};
                    if(uname!=null&&uname!=undefined&&uname!=""){
                        data['uname']=uname;
                    }else{
                        alert("用户不能为空！");
                        return;
                    }
                    if(upassword==repwd&&upassword!=null&&upassword!=undefined&&upassword.length>=6){
                        data['password']=upassword;
                    }else{
                        alert("密码信息错误");
                        return
                    }
                    if(email!=null&&email!=undefined&&email!=""){
                        data["email"]=email;
                    }else{
                        alert("邮箱错误！")
                        return;
                    }
                    $.ajax({
                        url:"/user/adduser",
                        type:"post",
                        data:data,
                        datatype:"json",
                        success:function(e){
                            if(e&&e.status==1){
                                window.location.href="/login";
                            }
                            console.log(e);
                        }
                    })
                }
            </script>
        </div>
        <div class="form-ft">

        </div>
    </div>

    <div class="login-form-left fl">
        <dl class="func clearfix">
            <dt>注册之后您可以</dt>
            <dd class="ico05"><i></i>购买商品支付订单</dd>
            <dd class="ico01"><i></i>申请开店销售商品</dd>
            <dd class="ico03"><i></i>空间好友推送分享</dd>
            <dd class="ico02"><i></i>收藏商品关注店铺</dd>
            <dd class="ico06"><i></i>商品资讯服务评价</dd>
            <dd class="ico04"><i></i>安全交易诚信无忧</dd>
        </dl>

        <div class="if">
            <h2>如果您是本站用户</h2>
            <p>我已经注册过账号，立即 <a href="" class="register">登录</a> 或是 <a href="" class="findpwd">找回密码？</a></p>
        </div>
    </div>
</div>

<div class="footer clear wrap1000">
    <p> <a href="">首页</a> | <a href="">招聘英才</a> | <a href="">广告合作</a> | <a href="">关于ShopCZ</a> | <a href="">联系我们</a></p>
    <p>Copyright 2004-2013 itcast Inc.,All rights reserved.</p>
</div>


</body>
</html>
