<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/1/12
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript" src="/style/js/jquery.js" ></script>
    <title>Title</title>
    <style>
        *{
            margin:0;
            padding:0;
            list-style: none;
        }
        .box{
            width:300px;
            height:40px;
            background: #000;
            display:flex;
        }
        .box p{
            width:60px;
            height:100%;
            background: red;
            color:#fff;
            text-align: center;
            line-height: 100%;
            margin-left:5px;
        }
        .op{
            width:400px;
            height:100px;
            background: bisque;
            display:flex;
            justify-content: center;
            align-items: center;
        }
        .op li{
            width:90px;
            height:90px;
            border:1px solid #ccc;
            font-size:10px;
        }
        .op li img{
            width:80px;
            height:60px;
        }
    </style>
</head>
<body>
    <div class="box">
        <p>列表1</p>
        <p>列表2</p>
        <p>列表3</p>
    </div>
    <ul class="op">
        <div class="o">123</div>
        <%--<li>--%>
            <%--<img src="/style/images/365_7d5e08127b8d6799209674ecffbfc624.jpg_small.jpg" alt="">--%>
            <%--<h3>123</h3>--%>
            <%--<h5>000.0</h5>--%>
        <%--</li>--%>
    </ul>
</body>
<script>
    $(function(){

        $(".box p").mouseover(function(){
            $.ajax({
                url:"/user/okcc",
                type:"post",
                data:{
                    "n":$(this).index()
                },
                success:function(e){
                    console.log(e)
                    $.each(e,function(index,obj){
                        console.log(obj.name);
                        var cc = "<li class='cc'>\n" +
                            "            <img src=\""+obj.imgurl+"\" alt=\"\">\n" +
                            "            <h3>"+obj.name+"</h3>\n" +
                            "            <h5>"+obj.money+"</h5>\n" +
                            "        </li>"
                        $(".op").append(cc)
                    })

                }
            })
        })
        $(".box p").mouseout(function(){
            $(".op").html("")
        })
    })
</script>
</html>
