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
                                    <div class="table-responsive">
                                        <table class="table">
                                            <tr>
                                                <td align="center">
                                                    <br/>
                                                    <p>${dialogNum}</p>
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
