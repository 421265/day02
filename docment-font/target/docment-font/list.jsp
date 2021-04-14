<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/1/8
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <title>商品列表页</title>
    <link rel="stylesheet" href="/style/css/base.css" type="text/css" />
    <link rel="stylesheet" href="/style/css/shop_common.css" type="text/css" />
    <link rel="stylesheet" href="/style/css/shop_header.css" type="text/css" />
    <link rel="stylesheet" href="/style/css/shop_list.css" type="text/css" />
    <script type="text/javascript" src="/style/js/jquery.js" ></script>
    <script type="text/javascript" src="/style/js/topNav.js" ></script>
    <script type="text/javascript" src="/style/js/shop_list.js" ></script>
    <%--<script type="text/javascript" src="/style/js/base.js"></script>--%>

</head>
<body>
<!-- Header  -wll-2013/03/24 -->
<div id="ccop">123</div>
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
                            console.log(e)
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
                            <a href="/order" class="topNavHover goods_sub_gou">购物车<b id="numbergw">0</b>种商品<i></i></a>
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
                                    $.ajax({
                                        url:"/user/order",
                                        type:"post",
                                        data:{
                                            "uid":userid
                                        },
                                        success:function(e){
                                            $("#numbergw").text(e.length)
                                            $(".goods_sub_gou").attr("href","/flow")
                                        }
                                    })
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
                <form>
                    <div class="search_formstyle">
                        <input type="text" class="search_form_text" name="search_content" value="搜索其实很简单！" />
                        <a href="" id="cc"><input id="but" type="button" class="search_form_sub" name="secrch_submit"/></a>
                    </div>
                </form>
                <script>
                    $(function(){
                        $("#but").click(function(){
                            $("#cc").attr("href","/list.jsp?"+$(".search_form_text").val())
                        })
                    })
                </script>
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
			<a href="">商品分类</a>&nbsp;›&nbsp;
			<a href="">男装女装</a>&nbsp;›&nbsp;
			<a href="">男装</a>
		</span>
</div>
<div class="clear"></div>
<!-- 面包屑 End -->

<!-- Header End -->


<!-- List Body 2013/03/27 -->
<div class="shop_bd clearfix">
    <div class="shop_bd_list_left clearfix">
        <!-- 左边商品分类 -->
        <div class="shop_bd_list_bk clearfix">
            <div class="title">商品分类</div>
            <div class="contents clearfix">
                <dl class="shop_bd_list_type_links clearfix">
                    <dt><strong>女装</strong></dt>
                    <dd>
                        <span><a href="">风衣</a></span>
                        <span><a href="">长袖连衣裙</a></span>
                        <span><a href="">毛呢连衣裙</a></span>
                        <span><a href="">半身裙</a></span>
                        <span><a href="">小脚裤</a></span>
                        <span><a href="">加绒打底裤</a></span>
                        <span><a href="">牛仔裤</a></span>
                        <span><a href="">打底衫</a></span>
                        <span><a href="">情侣装</a></span>
                        <span><a href="">棉衣</a></span>
                        <span><a href="">毛呢大衣</a></span>
                        <span><a href="">毛呢短裤</a></span>
                    </dd>
                </dl>
            </div>
        </div>
        <!-- 左边商品分类 End -->

        <!-- 热卖推荐商品 -->
        <div class="shop_bd_list_bk clearfix">
            <div class="title">热卖推荐商品</div>
            <div class="contents clearfix">
                <ul class="clearfix">

                    <li class="clearfix">
                        <div class="goods_name"><a href="">Gap经典弹力纯色长袖T恤|000891347|原价149元</a></div>
                        <div class="goods_pic"><span class="goods_price">¥ 279.00 </span><a href=""><img src="/style/images/89a6d6466b00ae32d3c826b9ec639084.jpg_small.jpg" /></a></div>
                        <div class="goods_xiaoliang">
                            <span class="goods_xiaoliang_link"><a href="">去看看</a></span>
                            <span class="goods_xiaoliang_nums">已销售<strong>99</strong>笔</span>
                        </div>
                    </li>

                    <li class="clearfix">
                        <div class="goods_name"><a href="">Gap经典弹力纯色长袖T恤|000891347|原价149元</a></div>
                        <div class="goods_pic"><span class="goods_price">¥ 279.00 </span><a href=""><img src="/style/images/89a6d6466b00ae32d3c826b9ec639084.jpg_small.jpg" /></a></div>
                        <div class="goods_xiaoliang">
                            <span class="goods_xiaoliang_link"><a href="">去看看</a></span>
                            <span class="goods_xiaoliang_nums">已销售<strong>99</strong>笔</span>
                        </div>
                    </li>

                    <li class="clearfix">
                        <div class="goods_name"><a href="">Gap经典弹力纯色长袖T恤|000891347|原价149元</a></div>
                        <div class="goods_pic"><span class="goods_price">¥ 279.00 </span><a href=""><img src="/style/images/89a6d6466b00ae32d3c826b9ec639084.jpg_small.jpg" /></a></div>
                        <div class="goods_xiaoliang">
                            <span class="goods_xiaoliang_link"><a href="">去看看</a></span>
                            <span class="goods_xiaoliang_nums">已销售<strong>99</strong>笔</span>
                        </div>
                    </li>

                </ul>
            </div>
        </div>
        <!-- 热卖推荐商品 -->
        <div class="clear"></div>

        <!-- 浏览过的商品 -->
        <div class="shop_bd_list_bk clearfix">
            <div class="title">浏览过的商品</div>
            <div class="contents clearfix">
                <ul class="clearfix">

                    <li class="clearfix">
                        <div class="goods_name"><a href="">Gap经典弹力纯色长袖T恤|000891347|原价149元</a></div>
                        <div class="goods_pic"><span class="goods_price">¥ 279.00 </span><a href=""><img src="/style/images/89a6d6466b00ae32d3c826b9ec639084.jpg_small.jpg" /></a></div>
                        <div class="goods_xiaoliang">
                            <span class="goods_xiaoliang_link"><a href="">去看看</a></span>
                            <span class="goods_xiaoliang_nums">已销售<strong>99</strong>笔</span>
                        </div>
                    </li>

                    <li class="clearfix">
                        <div class="goods_name"><a href="">Gap经典弹力纯色长袖T恤|000891347|原价149元</a></div>
                        <div class="goods_pic"><span class="goods_price">¥ 279.00 </span><a href=""><img src="/style/images/89a6d6466b00ae32d3c826b9ec639084.jpg_small.jpg" /></a></div>
                        <div class="goods_xiaoliang">
                            <span class="goods_xiaoliang_link"><a href="">去看看</a></span>
                            <span class="goods_xiaoliang_nums">已销售<strong>99</strong>笔</span>
                        </div>
                    </li>

                    <li class="clearfix">
                        <div class="goods_name"><a href="">Gap经典弹力纯色长袖T恤|000891347|原价149元</a></div>
                        <div class="goods_pic"><span class="goods_price">¥ 279.00 </span><a href=""><img src="/style/images/89a6d6466b00ae32d3c826b9ec639084.jpg_small.jpg" /></a></div>
                        <div class="goods_xiaoliang">
                            <span class="goods_xiaoliang_link"><a href="">去看看</a></span>
                            <span class="goods_xiaoliang_nums">已销售<strong>99</strong>笔</span>
                        </div>
                    </li>

                </ul>
            </div>
        </div>
        <!-- 浏览过的商品 -->

    </div>

    <div class="shop_bd_list_right clearfix">
        <!-- 条件筛选框 -->
        <div class="module_filter">
            <div class="module_filter_line">
                <dl>
                    <dt>尺码：</dt>
                    <dd>
                        <span><a href="">XXS</a></span>
                        <span><a href="">XS</a></span>
                        <span><a href="">S</a></span>
                        <span><a href="">M</a></span>
                        <span><a href="">L</a></span>
                        <span><a href="">XL</a></span>
                        <span><a href="">XXL</a></span>
                        <span><a href="">XXXL</a></span>
                        <span><a href="">加大XXXL</a></span>
                        <span><a href="">均码</a></span>
                    </dd>
                </dl>

                <dl>
                    <dt>品牌：</dt>
                    <dd>
                        <span><a href="">彪马</a></span>
                        <span><a href="">安踏</a></span>
                        <span><a href="">阿迪达斯</a></span>
                        <span><a href="">李宁</a></span>
                        <span><a href="">匡威</a></span>
                        <span><a href="">耐克</a></span>
                        <span><a href="">卡帕</a></span>
                        <span><a href="">鸿星尔克</a></span>
                        <span><a href="">沃特</a></span>
                        <span><a href="">垃圾</a></span>
                    </dd>
                </dl>

                <dl>
                    <dt>款式：</dt>
                    <dd>
                        <span><a href="">长袖</a></span>
                        <span><a href="">短袖</a></span>
                        <span><a href="">无袖</a></span>
                        <span><a href="">两件套</a></span>
                        <span><a href="">宽松</a></span>

                    </dd>
                </dl>

                <dl>
                    <dt>材质：</dt>
                    <dd>
                        <span><a href="">纯棉</a></span>
                        <span><a href="">真丝</a></span>
                        <span><a href="">聚酯</a></span>
                        <span><a href="">棉+氨纶</a></span>
                        <span><a href="">卡莱</a></span>
                        <span><a href="">人造棉</a></span>
                        <span><a href="">其它</a></span>
                    </dd>
                </dl>


            </div>
            <div class="bottom"></div>
        </div>
        <!-- 条件筛选框 -->

        <!-- 显示菜单 -->
        <div class="sort-bar">
            <div class="bar-l">
                <!-- 查看方式S -->
                <div class="switch"><span class="selected"><a title="以方格显示" ecvalue="squares" nc_type="display_mode" class="pm" href="javascript:void(0)">大图</a></span><span style="border-left:none;"><a title="以列表显示" ecvalue="list" nc_type="display_mode" class="lm" href="javascript:void(0)">列表</a></span></div>
                <!-- 查看方式E -->
                <!-- 排序方式S -->
                <ul class="array">
                    <li class="selected"><a title="默认排序" onclick="javascript:dropParam(['key','order'],'','array');" class="nobg" href="javascript:void(0)">默认</a></li>
                    <li><a title="点击按销量从高到低排序" onclick="javascript:replaceParam(['key','order'],['sales','desc'],'array');" href="javascript:void(0)">销量</a></li>
                    <li><a title="点击按人气从高到低排序" onclick="javascript:replaceParam(['key','order'],['click','desc'],'array');" href="javascript:void(0)">人气</a></li>
                    <li><a title="点击按信用从高到低排序" onclick="javascript:replaceParam(['key','order'],['credit','desc'],'array');" href="javascript:void(0)">信用</a></li>
                    <li><a title="点击按价格从高到低排序" onclick="javascript:replaceParam(['key','order'],['price','desc'],'array');" href="javascript:void(0)">价格</a></li>
                </ul>
                <!-- 排序方式E -->
                <!-- 价格段S -->
                <div class="prices"> <em>¥</em>
                    <input type="text" value="" class="w30">
                    <em>-</em>
                    <input type="text" value="" class="w30">
                    <input type="submit" value="确认" id="search_by_price">
                </div>
                <!-- 价格段E -->
            </div>
        </div>
        <div class="clear"></div>
        <!-- 显示菜单 End -->

        <!-- 商品列表 -->
        <div class="shop_bd_list_content clearfix">
            <ul id="app">
                <%--<li>--%>
                    <%--<dl>--%>
                        <%--<dt><a href=""><img src="/style/images/21151da3bdefc6d9a7120c991fe59800.jpg_small.jpg" /></a></dt>--%>
                        <%--<dd class="title"><a href="">OCIAIZO春装水洗做旧短外套复古磨白短款牛仔外套春01C1417</a></dd>--%>
                        <%--<dd class="content">--%>
                            <%--<span class="goods_jiage">￥<strong>249.00</strong></span>--%>
                            <%--<span class="goods_chengjiao">最近成交5笔</span>--%>
                        <%--</dd>--%>
                    <%--</dl>--%>
                <%--</li>--%>
            </ul>
            <script>
                function Base64() {
                    // private property
                    _keyStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";

                    // public method for encoding
                    this.encode = function (input) {
                        var output = "";
                        var chr1, chr2, chr3, enc1, enc2, enc3, enc4;
                        var i = 0;
                        input = _utf8_encode(input);
                        while (i < input.length) {
                            chr1 = input.charCodeAt(i++);
                            chr2 = input.charCodeAt(i++);
                            chr3 = input.charCodeAt(i++);
                            enc1 = chr1 >> 2;
                            enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
                            enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
                            enc4 = chr3 & 63;
                            if (isNaN(chr2)) {
                                enc3 = enc4 = 64;
                            } else if (isNaN(chr3)) {
                                enc4 = 64;
                            }
                            output = output +
                                _keyStr.charAt(enc1) + _keyStr.charAt(enc2) +
                                _keyStr.charAt(enc3) + _keyStr.charAt(enc4);
                        }
                        return output;
                    }

                    // public method for decoding
                    this.decode = function (input) {
                        var output = "";
                        var chr1, chr2, chr3;
                        var enc1, enc2, enc3, enc4;
                        var i = 0;
                        input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");
                        while (i < input.length) {
                            enc1 = _keyStr.indexOf(input.charAt(i++));
                            enc2 = _keyStr.indexOf(input.charAt(i++));
                            enc3 = _keyStr.indexOf(input.charAt(i++));
                            enc4 = _keyStr.indexOf(input.charAt(i++));
                            chr1 = (enc1 << 2) | (enc2 >> 4);
                            chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
                            chr3 = ((enc3 & 3) << 6) | enc4;
                            output = output + String.fromCharCode(chr1);
                            if (enc3 != 64) {
                                output = output + String.fromCharCode(chr2);
                            }
                            if (enc4 != 64) {
                                output = output + String.fromCharCode(chr3);
                            }
                        }
                        output = _utf8_decode(output);
                        return output;
                    }

                    // private method for UTF-8 encoding
                    _utf8_encode = function (string) {
                        string = string.replace(/\r\n/g,"\n");
                        var utftext = "";
                        for (var n = 0; n < string.length; n++) {
                            var c = string.charCodeAt(n);
                            if (c < 128) {
                                utftext += String.fromCharCode(c);
                            } else if((c > 127) && (c < 2048)) {
                                utftext += String.fromCharCode((c >> 6) | 192);
                                utftext += String.fromCharCode((c & 63) | 128);
                            } else {
                                utftext += String.fromCharCode((c >> 12) | 224);
                                utftext += String.fromCharCode(((c >> 6) & 63) | 128);
                                utftext += String.fromCharCode((c & 63) | 128);
                            }

                        }
                        return utftext;
                    }

                    // private method for UTF-8 decoding
                    _utf8_decode = function (utftext) {
                        var string = "";
                        var i = 0;
                        var c = c1 = c2 = 0;
                        while ( i < utftext.length ) {
                            c = utftext.charCodeAt(i);
                            if (c < 128) {
                                string += String.fromCharCode(c);
                                i++;
                            } else if((c > 191) && (c < 224)) {
                                c2 = utftext.charCodeAt(i+1);
                                string += String.fromCharCode(((c & 31) << 6) | (c2 & 63));
                                i += 2;
                            } else {
                                c2 = utftext.charCodeAt(i+1);
                                c3 = utftext.charCodeAt(i+2);
                                string += String.fromCharCode(((c & 15) << 12) | ((c2 & 63) << 6) | (c3 & 63));
                                i += 3;
                            }
                        }
                        return string;
                    }
                }
            </script>
            <script>
                $(function(){

                    console.log(location.href)
                    var str1 = location.href.split("?")[1];
                    console.log(str1)
                    var base = new Base64();
                    var cc = base.decode(str1)
                    console.log(cc);
                    $.ajax({
                        url:"/user/list",
                        type:"post",
                        data:{
                            "str":location.href.split("?")[1]
                        },
                        success:function(e){
                            console.log(e)
                            $.each(e,function(index,box){
                                var attr = "<li>\n" +
                                    "                    <dl>\n" +
                                    "                        <dt><a href=\"/goods?"+box.url+"\"><img src=\""+box.turl+"\" /></a></dt>\n" +
                                    "                        <dd class=\"title\"><a href=\"/goods?"+box.url+"\">"+box.name+"</a></dd>\n" +
                                    "                        <dd class=\"content\">\n" +
                                    "                            <span class=\"goods_jiage\">￥<strong>"+box.money+"</strong></span>\n" +
                                    "                            <span class=\"goods_chengjiao\">最近成交"+box.numc+"笔</span>\n" +
                                    "                        </dd>\n" +
                                    "                    </dl>\n" +
                                    "                </li>"
                                $("#app").append(attr);
                            })
                        }
                    })
                })
            </script>
        </div>
        <div class="clear"></div>
        <div class="pagination">
            <ul><li><span>首页</span></li>
                <li><span>上一页</span></li>
                <li><span class="currentpage">1</span></li>
                <li><span>下一页</span></li>
                <li><span>末页</span></li>
            </ul>
        </div>
        <!-- 商品列表 End -->


    </div>
</div>
<!-- List Body End -->

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
