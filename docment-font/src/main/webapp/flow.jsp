<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/1/8
  Time: 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>购物车页面</title>
    <link rel="stylesheet" href="/style/css/base.css" type="text/css" />
    <link rel="stylesheet" href="/style/css/shop_common.css" type="text/css" />
    <link rel="stylesheet" href="/style/css/shop_header.css" type="text/css" />
    <link rel="stylesheet" href="/style/css/shop_gouwuche.css" type="text/css" />
    <script type="text/javascript" src="/style/js/jquery.js" ></script>
    <script type="text/javascript" src="/style/js/topNav.js" ></script>
    <script type="text/javascript" src="/style/js/jquery.goodnums.js" ></script>
    <script type="text/javascript" src="/style/js/shop_gouwuche.js" ></script>
</head>
<body>
<!-- Header  -wll-2013/03/24 -->
<div class="shop_hd">
    <!-- Header TopNav -->
    <div class="shop_hd_topNav">
        <div class="shop_hd_topNav_all">
            <!-- Header TopNav Left -->
            <div class="shop_hd_topNav_all_left">
                <p class="yonghu">您好，欢迎来到<b><a href="/">ShopCZ商城</a></b>[<a href="/login">登录</a>][<a href="/register">注册</a>]</p>
                <p class="yongname" style="display:none">您好，欢迎来到<a href="/">ShopCZ商城</a><span style="color:blue" id="nameid">123</span></p>
            </div>
            <script>
                if(localStorage.getItem("id")==null){
                    $(".yongname").css({
                        display:"none"
                    })
                }else {
                    $(".yonghu").css({
                        display:"none"
                    })
                    $(".yongname").css({
                        display:"block"
                    })
                    $.ajax({
                        url:"user/loginname",
                        type:"post",
                        data:{
                            "uid":localStorage.getItem("id")
                        },
                        success:function(e){
                            $("#nameid").text(e[0].uname)
                        }
                    })
                }
            </script>
            <!-- Header TopNav Left End -->

            <!-- Header TopNav Right -->
            <div class="shop_hd_topNav_all_right">
                <ul class="topNav_quick_menu">

                    <li>
                        <div class="topNav_menu">
                            <a href="#" class="topNavHover">我的商城<i></i></a>
                            <div class="topNav_menu_bd" style="display:none;" >
                                <ul>
                                    <li><a title="已买到的商品" target="_top" href="#">已买到的商品</a></li>
                                    <li><a title="个人主页" target="_top" href="#">个人主页</a></li>
                                    <li><a title="我的好友" target="_top" href="#">我的好友</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="topNav_menu">
                            <a href="#" class="topNavHover">卖家中心<i></i></a>
                            <div class="topNav_menu_bd" style="display:none;">
                                <ul>
                                    <li><a title="已售出的商品" target="_top" href="#">已售出的商品</a></li>
                                    <li><a title="销售中的商品" target="_top" href="#">销售中的商品</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="topNav_menu">
                            <a href="#" class="topNavHover">购物车<b id="numbergw">0</b>种商品<i></i></a>
                            <div class="topNav_menu_bd" style="display:none;">
                                <!--
                                <ul>
                                  <li><a title="已售出的商品" target="_top" href="#">已售出的商品</a></li>
                                  <li><a title="销售中的商品" target="_top" href="#">销售中的商品</a></li>
                                </ul>
                                -->
                                <p>还没有商品，赶快去挑选！</p>
                            </div>
                        </div>
                        <script>
                            $(function(){
                                if(localStorage.getItem("id")==null){
                                    $(".goods_sub_gou").attr("href","/login")
                                }else {
                                    var userid = localStorage.getItem("id")
                                    // $.ajax({
                                    //     url:"/user/order",
                                    //     type:"post",
                                    //     data:{
                                    //         "uid":userid
                                    //     },
                                    //     success:function(e){
                                    //         $("#numbergw").text(e.length)
                                    //         $(".goods_sub_gou").attr("href","/flow")
                                    //     }
                                    // })
                                }
                            })
                        </script>
                    </li>

                    <li>
                        <div class="topNav_menu">
                            <a href="#" class="topNavHover">我的收藏<i></i></a>
                            <div class="topNav_menu_bd" style="display:none;">
                                <ul>
                                    <li><a title="收藏的商品" target="_top" href="#">收藏的商品</a></li>
                                    <li><a title="收藏的店铺" target="_top" href="#">收藏的店铺</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="topNav_menu">
                            <a href="#">站内消息</a>
                        </div>
                    </li>

                </ul>
            </div>
            <!-- Header TopNav Right End -->
        </div>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
    <!-- Header TopNav End -->

    <!-- TopHeader Center -->
    <div class="shop_hd_header">
        <div class="shop_hd_header_logo"><h1 class="logo"><a href="/"><img src="/style/images/logo.png" alt="ShopCZ" /></a><span>ShopCZ</span></h1></div>
        <div class="shop_hd_header_search">
            <ul class="shop_hd_header_search_tab">
                <li id="search" class="current">商品</li>
                <li id="shop_search">店铺</li>
            </ul>
            <div class="clear"></div>
            <div class="search_form">
                <form method="post" action="index.php">
                    <div class="search_formstyle">
                        <input type="text" class="search_form_text" name="search_content" value="搜索其实很简单！" />
                        <input type="submit" class="search_form_sub" name="secrch_submit" value="" title="搜索" />
                    </div>
                </form>
            </div>
            <div class="clear"></div>
            <div class="search_tag">
                <a href="">李宁</a>
                <a href="">耐克</a>
                <a href="">Kappa</a>
                <a href="">双肩包</a>
                <a href="">手提包</a>
            </div>

        </div>
    </div>
    <div class="clear"></div>
    <!-- TopHeader Center End -->

    <!-- Header Menu -->
    <div class="shop_hd_menu">
        <!-- 所有商品菜单 -->

        <div id="shop_hd_menu_all_category" class="shop_hd_menu_all_category"><!-- 首页去掉 id="shop_hd_menu_all_category" 加上clsss shop_hd_menu_hover -->
            <div class="shop_hd_menu_all_category_title"><h2 title="所有商品分类"><a href="javascript:void(0);">所有商品分类</a></h2><i></i></div>
            <div id="shop_hd_menu_all_category_hd" class="shop_hd_menu_all_category_hd">
                <ul class="shop_hd_menu_all_category_hd_menu clearfix">
                    <!-- 单个菜单项 -->
                    <li id="cat_1" class="">
                        <h3><a href="" title="男女服装">男女服装</a></h3>
                        <div id="cat_1_menu" class="cat_menu clearfix" style="">
                            <dl class="clearfix">
                                <dt><a href="女装" href="">女装</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="男装" href="">男装</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <!-- 单个菜单项 End -->
                    <li id="cat_2" class="">
                        <h3><a href="" title="鞋包配饰">鞋包配饰</a></h3>
                        <div id="cat_1_menu" class="cat_menu clearfix" style="">
                            <dl class="clearfix">
                                <dt><a href="鞋子" href="">鞋子</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="包包" href="">包包</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>
                        </div>
                    </li>

                    <li id="cat_3" class="">
                        <h3><a href="" title="美容美妆">美容美妆</a></h3>
                        <div id="cat_1_menu" class="cat_menu clearfix" style="">
                            <dl class="clearfix">
                                <dt><a href="美容" href="">美容</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="美妆" href="">美妆</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>
                        </div>
                    </li>

                    <li id="cat_4" class="">
                        <h3><a href="" title="美容美妆">美容美妆</a></h3>
                        <div id="cat_1_menu" class="cat_menu clearfix" style="">
                            <dl class="clearfix">
                                <dt><a href="美容" href="">美容</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="美妆" href="">美妆</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>
                        </div>
                    </li>

                    <li id="cat_5" class="">
                        <h3><a href="" title="美容美妆">美容美妆</a></h3>
                        <div id="cat_1_menu" class="cat_menu clearfix" style="">
                            <dl class="clearfix">
                                <dt><a href="美容" href="">美容</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="美妆" href="">美妆</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>
                        </div>
                    </li>

                    <li id="cat_6" class="">
                        <h3><a href="" title="美容美妆">美容美妆</a></h3>
                        <div id="cat_1_menu" class="cat_menu clearfix" style="">
                            <dl class="clearfix">
                                <dt><a href="美容" href="">美容</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="美妆" href="">美妆</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li id="cat_7" class="">
                        <h3><a href="" title="美容美妆">美容美妆</a></h3>
                        <div id="cat_1_menu" class="cat_menu clearfix" style="">
                            <dl class="clearfix">
                                <dt><a href="美容" href="">美容</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="美妆" href="">美妆</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li id="cat_8" class="">
                        <h3><a href="" title="美容美妆">美容美妆</a></h3>
                        <div id="cat_1_menu" class="cat_menu clearfix" style="">
                            <dl class="clearfix">
                                <dt><a href="美容" href="">美容</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="美妆" href="">美妆</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li class="more"><a href="">查看更多分类</a></li>
                </ul>
            </div>
        </div>
        <!-- 所有商品菜单 END -->

        <!-- 普通导航菜单 -->
        <ul class="shop_hd_menu_nav">
            <li class="current_link"><a href=""><span>首页</span></a></li>
            <li class="link"><a href=""><span>团购</span></a></li>
            <li class="link"><a href=""><span>品牌</span></a></li>
            <li class="link"><a href=""><span>优惠卷</span></a></li>
            <li class="link"><a href=""><span>积分中心</span></a></li>
            <li class="link"><a href=""><span>运动专场</span></a></li>
            <li class="link"><a href=""><span>微商城</span></a></li>
        </ul>
        <!-- 普通导航菜单 End -->
    </div>
    <!-- Header Menu End -->

</div>
<div class="clear"></div>
<!-- 面包屑 注意首页没有 -->
<div class="shop_hd_breadcrumb">
    <strong>当前位置：</strong>
    <span>
			<a href="">首页</a>&nbsp;›&nbsp;
			<a href="">我的商城</a>&nbsp;›&nbsp;
			<a href="">我的购物车</a>
		</span>
</div>
<div class="clear"></div>
<!-- 面包屑 End -->

<!-- Header End -->

<!-- 购物车 Body -->
<div class="shop_gwc_bd clearfix">
    <!-- 在具体实现的时候，根据情况选择其中一种情况 -->
    <!-- 购物车为空 -->
    <div class="empty_cart mb10">
        <div class="message">
            <p>购物车内暂时没有商品，您可以<a href="index.html">去首页</a>挑选喜欢的商品</p>
        </div>
    </div>
    <!-- 购物车为空 end-->

    <!-- 购物车有商品 -->
    <div class="shop_gwc_bd_contents clearfix">
        <!-- 购物流程导航 -->
        <div class="shop_gwc_bd_contents_lc clearfix">
            <ul>
                <li class="step_a hover_a">确认购物清单</li>
                <li class="step_b">确认收货人资料及送货方式</li>
                <li class="step_c">购买完成</li>
            </ul>
        </div>
        <!-- 购物流程导航 End -->

        <!-- 购物车列表 -->
        <table>
            <thead>
            <tr>
                <th colspan="2"><span>商品</span></th>
                <th><span>单价(元)</span></th>
                <th><span>数量</span></th>
                <th><span>小计</span></th>
                <th><span>操作</span></th>
            </tr>
            </thead>
            <tbody id="gwc">
            </tbody>
            <tfoot >
            <tr>
                <td colspan="6">
                    <div class="gwc_foot_zongjia">商品总价(不含运费)<span>￥<strong id="good_zongjia">12750.00</strong></span></div>
                    <div class="clear"></div>
                    <div class="gwc_foot_links">
                        <a href="" class="go">继续购物</a>
                        <a href="" class="op">确认并填写订单</a>
                    </div>
                </td>
            </tr>
            </tfoot>
        </table>
        <!-- 购物车列表 End -->
    </div>
    <%--<script>--%>
        <%--$(function(){--%>
            <%--var userid = localStorage.getItem("id")--%>
            <%--$.ajax({--%>
                <%--url:"/user/order",--%>
                <%--type:"post",--%>
                <%--data:{--%>
                    <%--"uid":userid--%>
                <%--},--%>
                <%--success:function(e){--%>
                    <%--$.each(e,function(index,box){--%>
                        <%--box.turl = box.turl.split(",")[0]--%>
                        <%--var zong = box.money*box.numor;--%>
                        <%--var cc ="<tr>\n" +--%>
                            <%--"                <td class=\"gwc_list_pic\"><a href=\"\"><img src=\""+box.turl+"\" /></a></td>\n" +--%>
                            <%--"                <td class=\"gwc_list_title\"><a href=\"\">"+box.name+" </a></td>\n" +--%>
                            <%--"                <td class=\"gwc_list_danjia\"><span>￥<strong id=\"danjia_00"+(index+1)+"\">"+box.money+"</strong></span></td>\n" +--%>
                            <%--"                <td class=\"gwc_list_shuliang\"><span><a class=\"good_num_jian this_good_nums\" did=\"danjia_00"+(index+1)+"\" xid=\"xiaoji_00"+(index+1)+"\" ty=\"-\" valId=\"goods_00"+(index+1)+"\" href=\"javascript:void(0);\">-</a><input type=\"text\" value=\""+box.numor+"\" id=\"goods_00"+(index+1)+"\" class=\"good_nums\" /><a href=\"javascript:void(0);\" did=\"danjia_00"+(index+1)+"\" xid=\"xiaoji_00"+(index+1)+"\" ty=\"+\" class=\"good_num_jia this_good_nums\" valId=\"goods_00"+(index+1)+"\">+</a></span></td>\n" +--%>
                            <%--"                <td class=\"gwc_list_xiaoji\"><span>￥<strong id=\"xiaoji_00"+(index+1)+"\" class=\"good_xiaojis\">"+zong+"</strong></span></td>\n" +--%>
                            <%--"                <td class=\"gwc_list_caozuo\"><a href=\"\">收藏</a><a href=\"javascript:void(0);\" class=\"shop_good_delete\">删除</a></td>\n" +--%>
                            <%--"            </tr>"--%>
                        <%--$("#gwc").append(cc);--%>
                    <%--})--%>
                <%--}--%>
            <%--})--%>
        <%--})--%>
    <%--</script>--%>
    <%--<!-- 购物车有商品 end -->--%>

</div>
<!-- 购物车 Body End -->

<!-- Footer - wll - 2013/3/24 -->
<div class="clear"></div>
<div class="shop_footer">
    <div class="shop_footer_link">
        <p>
            <a href="">首页</a>|
            <a href="">招聘英才</a>|
            <a href="">广告合作</a>|
            <a href="">关于ShopCZ</a>|
            <a href="">关于我们</a>
        </p>
    </div>
    <div class="shop_footer_copy">
        <p>Copyright 2004-2013 itcast Inc.,All rights reserved.</p>
    </div>
</div>
<!-- Footer End -->

</body>
</html>
