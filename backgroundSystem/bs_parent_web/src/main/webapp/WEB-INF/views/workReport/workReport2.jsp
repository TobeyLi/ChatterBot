<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Title</title>

    <link  rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link href="https://unpkg.com/ionicons@4.5.5/dist/css/ionicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/ionicons@4.5.5/dist/ionicons.js"></script>
</head>
<body>

<%--<header>
    <nav class="navbar navbar-expand-sm navbar-light bg-light">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Features</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Pricing</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
            </ul>
        </div>
    </nav>
</header>

<main role="main">

    <aside class="mai">

    </aside>

</main>--%>

<%--<div id="page-container" class="page-container fade page-sidebar-fixed page-header-fixed in">

    <!-- begin #header -->
    <div id="header" class="header navbar navbar-default navbar-fixed-top">
        <!-- begin container-fluid -->
        <div class="container-fluid">
            <!-- begin mobile sidebar expand / collapse button -->
            <div class="navbar-header">
                <a href="index.html" class="navbar-brand"><span class="navbar-logo"><i class="ion-ios-cloud"></i></span> <b>Color</b> Admin</a>
                <button type="button" class="navbar-toggle" data-click="sidebar-toggled">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- end mobile sidebar expand / collapse button -->

            <!-- begin header navigation right -->
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <form class="navbar-form full-width">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Enter keyword" />
                            <span class="input-group-btn">
                            <button type="submit" class="btn btn-search">
                                <span class="glyphicon glyphicon-search"></span>
                            </button>
                        </span>
                        </div>
                    </form>
                </li>

                <li class="dropdown navbar-user">
                    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                        &lt;%&ndash;<span class="user-image online">
                            <img src="http://www.coloradmin.cn/html/colorapple/assets/img/user-13.jpg" alt="" />
                        </span>&ndash;%&gt;
                        &lt;%&ndash;<span class="hidden-xs">Adam Schwartz</span> <b class="caret"></b>&ndash;%&gt;
                        <span>Adam Schwartz</span> <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu animated fadeInLeft">
                        <li class="arrow"></li>
                        <li><a href="javascript:;">Edit Profile</a></li>
                        <li><a href="javascript:;"><span class="badge badge-danger pull-right">2</span> Inbox</a></li>
                        <li><a href="javascript:;">Calendar</a></li>
                        <li><a href="javascript:;">Setting</a></li>
                        <li class="divider"></li>
                        <li><a href="javascript:;">Log Out</a></li>
                    </ul>
                </li>
            </ul>
            <!-- end header navigation right -->
        </div>
        <!-- end container-fluid -->
    </div>
    <!-- end #header -->

    <!-- begin #sidebar -->
    <div id="sidebar" class="sidebar">
        <!-- begin sidebar scrollbar -->
        <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;">
            <div data-scrollbar="true" data-height="100%" data-init="true" style="overflow: hidden; width: auto; height: 100%;">
                <!-- begin sidebar nav -->
                <ul class="nav">
                    <li class="nav-header">
                        Navigation
                    </li>

                    <li class="has-sub">
                        <a href="javascript:;">
                            <b class="caret pull-right"></b>
                            <i class="ion-ios-pulse-strong"></i>
                            <span>Dashboard</span>
                        </a>
                        <ul class="sub-menu">
                            <li><a href="index.html">Dashboard v1</a></li>
                            <li><a href="index_v2.html">Dashboard v2</a></li>
                        </ul>
                    </li>

                    <li class="has-sub">
                        <a href="javascript:;">
                            <span class="badge pull-right">10</span>
                            <i class="ion-ios-email bg-blue"></i>
                            <span>Email</span>
                        </a>
                        <ul class="sub-menu">
                            <li><a href="email_inbox.html">Inbox v1</a></li>
                            <li><a href="email_inbox_v2.html">Inbox v2</a></li>
                            <li><a href="email_compose.html">Compose</a></li>
                            <li><a href="email_detail.html">Detail</a></li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="bootstrap_4.html">
                            <div class="icon-img">
                                <img src="http://www.coloradmin.cn/html/colorapple/assets/img/bs4-logo.png" alt="" />
                            </div>
                            <span>Bootstrap 4 <span class="label label-theme m-l-5">NEW</span></span>
                        </a>
                    </li>

                    <li>
                        <a href="calendar.html">
                            <i class="ion-ios-calendar-outline bg-pink"></i>
                            <span>Calendar</span>
                        </a>
                    </li>

                    <!-- begin sidebar minify button -->
                    <li>
                        <a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify">
                            <i class="ion-ios-arrow-left"></i>
                            <span>Collapse</span>
                        </a>
                    </li>
                    <!-- end sidebar minify button -->

                </ul>
                <!-- end sidebar nav -->
            </div>

            <div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 143px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; height: 452.139px;">
            </div>

            <div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;">
            </div>

            <!-- end sidebar scrollbar -->
        </div>

    </div>
    <div class="sidebar-bg"></div>
    <!-- end #sidebar -->

    <!-- begin #content -->
    <div id="content" class="content" style="float: right;">
        <!-- begin breadcrumb -->
        <ol class="breadcrumb pull-right">
            <li><a href="javascript:;">Home</a></li>
            <li class="active">Bootstrap 4</li>
        </ol>
        <!-- end breadcrumb -->

        <!-- begin page-header -->
        <h1 class="page-header m-b-10">Bootstrap 4 <small>header small text goes here...</small></h1>
        <!-- end page-header -->

        <p class="m-b-20">
            We have included bootstrap 4 - cards element into our template. So now even you are using Bootstrap 3, you are able to use it as well.
            A card is a flexible and extensible content container. It includes options for headers and footers, a wide variety of content, contextual background colors, and powerful display options.
        </p>

        <!-- begin row -->
        <div class="row">
            <!-- begin col-3 -->
            <div class="col-md-3">
                <div class="m-b-10 f-s-10"><b class="text-inverse">EXAMPLE</b></div>
                <!-- begin card -->
                <div class="card">
                    <img class="card-img-top" src="http://www.coloradmin.cn/html/colorapple/assets/img/gallery/gallery-12.jpg" alt="" />
                    <div class="card-block">
                        <h4 class="card-title m-t-0 m-b-10">Card title</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-sm btn-primary">Go somewhere</a>
                    </div>
                </div>
                <!-- end card -->

                <div class="m-b-10 f-s-10 m-t-20"><b class="text-inverse">IMAGE OVERLAYS</b></div>
                <!-- begin card -->
                <div class="card card-inverse">
                    <img class="card-img" src="http://www.coloradmin.cn/html/colorapple/assets/img/gallery/gallery-4.jpg" alt="Card image">
                    <div class="card-img-overlay">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        <p class="card-text"><small>Last updated 3 mins ago</small></p>
                    </div>
                </div>
                <!-- end card -->

                <div class="m-b-10 f-s-10 m-t-20"><b class="text-inverse">INVERTED TEXT</b></div>
                <!-- begin card -->
                <div class="card card-inverse bg-black">
                    <div class="card-block">
                        <h4 class="card-title m-t-5 m-b-10">Special title treatment</h4>
                        <p class="card-text m-b-15">With supporting text below as a natural lead-in to additional content.</p>
                        <a href="#" class="btn btn-sm btn-primary">Go somewhere</a>
                    </div>
                </div>
                <!-- end card -->
            </div>
            <!-- end col-3 -->

            <!-- begin col-3 -->
            <div class="col-md-3">
                <div class="m-b-10 f-s-10"><b class="text-inverse">BLOCKS</b></div>
                <!-- begin card -->
                <div class="card">
                    <div class="card-block">
                        This is some text within a card block.
                    </div>
                </div>
                <!-- end card -->

                <div class="m-b-10 f-s-10 m-t-20"><b class="text-inverse">TITLE, TEXT & LINKS</b></div>
                <!-- begin card -->
                <div class="card">
                    <div class="card-block">
                        <h4 class="card-title m-t-0">Card title</h4>
                        <h6 class="card-subtitle m-b-10 text-muted">Card subtitle</h6>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="card-link">Card link</a>
                        <a href="#" class="card-link">Another link</a>
                    </div>
                </div>
                <!-- end card -->

                <div class="m-b-10 f-s-10 m-t-20"><b class="text-inverse">WITH IMAGES</b></div>
                <!-- begin card -->
                <div class="card">
                    <img class="card-img-top" src="http://www.coloradmin.cn/html/colorapple/assets/img/gallery/gallery-2.jpg" alt="Card image cap">
                    <div class="card-block">
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
                </div>
                <!-- end card -->

                <div class="m-b-10 f-s-10 m-t-20"><b class="text-inverse">LIST GROUPS</b></div>
                <!-- begin card -->
                <div class="card">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Cras justo odio</li>
                        <li class="list-group-item">Dapibus ac facilisis in</li>
                        <li class="list-group-item">Vestibulum at eros</li>
                    </ul>
                </div>
                <!-- end card -->
            </div>
            <!-- end col-3 -->

            <!-- begin col-3 -->
            <div class="col-md-3">
                <div class="m-b-10 f-s-10 m-t-20"><b class="text-inverse">HEADER & FOOTER</b></div>
                <!-- begin card -->
                <div class="card text-center">
                    <div class="card-header">
                        Featured
                    </div>
                    <div class="card-block">
                        <h4 class="card-title">Special title treatment</h4>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                        <a href="#" class="btn btn-sm btn-primary">Go somewhere</a>
                    </div>
                    <div class="card-footer text-muted">
                        2 days ago
                    </div>
                </div>
                <!-- end card -->

                <div class="m-b-10 f-s-10 m-t-20"><b class="text-inverse">NAVIGATION</b></div>
                <!-- begin card -->
                <div class="card text-center">
                    <div class="card-header">
                        <ul class="nav nav-tabs card-header-tabs">
                            <li class="nav-item">
                                <a class="nav-link active" href="#">Active</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link disabled" href="#">Disabled</a>
                            </li>
                        </ul>
                    </div>
                    <div class="card-block">
                        <h4 class="card-title">Special title treatment</h4>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                        <a href="#" class="btn btn-sm btn-primary">Go somewhere</a>
                    </div>
                </div>
                <!-- end card -->

                <div class="m-b-10 f-s-10 m-t-20"><b class="text-inverse">NAVIGATION PILLS</b></div>
                <!-- begin card -->
                <div class="card text-center">
                    <div class="card-header">
                        <ul class="nav nav-pills card-header-pills">
                            <li class="nav-item">
                                <a class="nav-link active" href="#">Active</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link disabled" href="#">Disabled</a>
                            </li>
                        </ul>
                    </div>
                    <div class="card-block">
                        <h4 class="card-title">Special title treatment</h4>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                        <a href="#" class="btn btn-sm btn-primary">Go somewhere</a>
                    </div>
                </div>
                <!-- end card -->
            </div>
            <!-- end col-3 -->

            <!-- begin col-3 -->
            <div class="col-md-3">
                <div class="m-b-10 f-s-10 m-t-20"><b class="text-inverse">BACKGROUND VARIANTS</b></div>
                <!-- begin card -->
                <div class="card card-inverse card-primary text-center">
                    <div class="card-block">
                        <blockquote class="card-blockquote">
                            <p class="f-s-14">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                            <footer class="f-s-12">Someone famous in <cite title="Source Title">Source Title</cite></footer>
                        </blockquote>
                    </div>
                </div>
                <!-- end card -->
                <!-- begin card -->
                <div class="card card-inverse card-success text-center">
                    <div class="card-block">
                        <blockquote class="card-blockquote">
                            <p class="f-s-14">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                            <footer class="f-s-12">Someone famous in <cite title="Source Title">Source Title</cite></footer>
                        </blockquote>
                    </div>
                </div>
                <!-- end card -->
                <div class="card card-inverse card-info text-center">
                    <div class="card-block">
                        <blockquote class="card-blockquote">
                            <p class="f-s-14">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                            <footer class="f-s-12">Someone famous in <cite title="Source Title">Source Title</cite></footer>
                        </blockquote>
                    </div>
                </div>
                <!-- end card -->

                <div class="m-b-10 f-s-10 m-t-20"><b class="text-inverse">OUTLINE CARDS</b></div>
                <!-- begin card -->
                <div class="card card-outline-warning text-center bg-white">
                    <div class="card-block">
                        <blockquote class="card-blockquote">
                            <p class="f-s-14 text-inverse f-w-600">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                            <footer class="f-s-12">Someone famous in <cite title="Source Title">Source Title</cite></footer>
                        </blockquote>
                    </div>
                </div>
                <!-- end card -->
                <!-- begin card -->
                <div class="card card-outline-danger text-center bg-white">
                    <div class="card-block">
                        <blockquote class="card-blockquote">
                            <p class="f-s-14 text-inverse f-w-600">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                            <footer class="f-s-12">Someone famous in <cite title="Source Title">Source Title</cite></footer>
                        </blockquote>
                    </div>
                </div>
                <!-- end card -->
            </div>
            <!-- end col-3 -->
        </div>
        <!-- end row -->

    </div>
    <!-- end #content -->
</div>--%>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Brand</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <%--<li class="active">
                            <a href="#">Link</a>
                        </li>
                        <li>
                            <a href="#">Link</a>
                        </li>--%>
                        <li>
                            <a href="#">智能交互平台</a>
                        </li>
                        <%--<li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Action</a>
                                </li>
                                <li>
                                    <a href="#">Another action</a>
                                </li>
                                <li>
                                    <a href="#">Something else here</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">Separated link</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">One more separated link</a>
                                </li>
                            </ul>
                        </li>--%>
                    </ul>
                    <form class="navbar-form navbar-left" role="search" action="doSearch">
                        <div class="form-group">
                            <input type="text" class="form-control" name="word4Search"/>
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#">Link</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Action</a>
                                </li>
                                <li>
                                    <a href="#">Another action</a>
                                </li>
                                <li>
                                    <a href="#">Something else here</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">Separated link</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </nav>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-2 column">
            <ul class="nav nav-pills nav-stacked navbar-inverse">
                <li class="active">
                    <a href="#">工作报表</a>
                </li>
                <li>
                    <a href="#">知识库</a>
                </li>
                <%--<li class="disabled">
                    <a href="#">用户管理</a>
                </li>--%>
                <li>
                    <a href="#">用户管理</a>
                </li>
                <%--<li class="dropdown pull-left">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">下拉<strong class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#">操作</a>
                        </li>
                        <li>
                            <a href="#">设置栏目</a>
                        </li>
                        <li>
                            <a href="#">更多设置</a>
                        </li>
                        <li class="divider">
                        </li>
                        <li>
                            <a href="#">分割线</a>
                        </li>
                    </ul>
                </li>--%>
                <li>
                    <a href="#">操作流水</a>
                </li>
                <li>
                    <a href="#">活跃度</a>
                </li>
            </ul>
        </div>

        <div class="col-md-10 column">
            <div class="tabbable" id="tabs-381221">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#panel-909611" data-toggle="tab">Section 1</a>
                    </li>
                    <li>
                        <a href="#panel-748926" data-toggle="tab">Section 2</a>
                    </li>
                </ul>
                <br/>
                <div class="tab-content">
                    <div class="tab-pane active" id="panel-909611">
                        <p>
                            数据总览
                        </p>
                        <br/>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="thumbnail">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <tr>
                                                <td align="center">
                                                    <br/>
                                                    <p>${dialogNum}</p>
                                                    <p>${errorMsg}</p>
                                                    <p>总会话量</p>
                                                    <hr/>
                                                    <p>
                                                        机器人会话量：
                                                        <span>0</span>
                                                    </p>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="thumbnail">
                                    <img alt="300x200" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/600/200/city/default.jpg" />
                                    <div class="caption">
                                        <h3>
                                            Thumbnail label
                                        </h3>
                                        <p>
                                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                        </p>
                                        <p>
                                            <a class="btn btn-primary" href="#">Action</a> <a class="btn" href="#">Action</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="thumbnail">
                                    <img alt="300x200" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/600/200/sports/default.jpg" />
                                    <div class="caption">
                                        <h3>
                                            Thumbnail label
                                        </h3>
                                        <p>
                                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                        </p>
                                        <p>
                                            <a class="btn btn-primary" href="#">Action</a> <a class="btn" href="#">Action</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane" id="panel-748926">
                        <p>
                            Howdy, I'm in Section 2.
                        </p>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
