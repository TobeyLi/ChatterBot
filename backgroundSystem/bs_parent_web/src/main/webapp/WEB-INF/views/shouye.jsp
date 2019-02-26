<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>workReport</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link href="https://unpkg.com/ionicons@4.5.5/dist/css/ionicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/navbar.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/leftTree.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shouye.css">

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/ionicons@4.5.5/dist/ionicons.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/navbar.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/leftTree.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/script/docs.min.js"></script>

</head>
<body>

<div class="container-fluid">
    <div class="row clearfix">
        <div class="col-lg-12 column">

            <nav class="navbar navbar-inverse" role="navigation">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <div><a class="navbar-brand" style="font-size:32px;" href="#">brand</a></div>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="#">智能交互平台</a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li style="padding-top:8px;">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-success dropdown-toggle" data-toggle="dropdown">
                                        <i class="glyphicon glyphicon-user"></i> ${loginUser.userName}
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li class="disabled"><a href="#"><i class="glyphicon glyphicon-cog"></i> 个人设置</a></li>
                                        <li class="disabled"><a href="#"><i class="glyphicon glyphicon-comment"></i> 消息</a></li>
                                        <li class="divider"></li>
                                        <li><a href="${APP_PATH}/logout"><i class="glyphicon glyphicon-off"></i> 退出系统</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li style="margin-left:10px;padding-top:8px;" class="disabled">
                                <button type="button" class="btn btn-default btn-danger">
                                    <span class="glyphicon glyphicon-question-sign"></span> 帮助
                                </button>
                            </li>
                        </ul>
                        <%--<form class="navbar-form navbar-right">
                            <input type="text" class="form-control" placeholder="Search...">
                        </form>--%>
                    </div>
                </div>
            </nav>

        </div>
    </div>

    <div class="row clearfix">

        <div class="col-sm-2 sidebar" style="margin-top: 20px;margin-left:15px">
            <%--<ul class="nav nav-pills nav-stacked navbar-inverse">
                <li>
                    <a href="${APP_PATH}/workReport/index">工作报表</a>
                </li>
                <li class="active">
                    <a href="#">聊天信息</a>
                </li>
                <li id="box1">
                    <a href="#">
                        <span class="m">用户管理 <b>+</b></span>
                    </a>
                    <ul class='userManage_ul'>
                        <li><a href="#"><span>信息查看</span></a></li>
                        <li><a href="#"><span>信息管理</span></a></li>
                    </ul>
                </li>
                <li class="disabled">
                    <a href="#">操作流水</a>
                </li>
                <li class="disabled">
                    <a href="#">活跃度</a>
                </li>
            </ul>--%>
            <div class="tree">
                <ul style="padding-left:0px;" class="list-group">
                    <li class="list-group-item tree-closed active" >
                        <span><i class="glyphicon glyphicon-dashboard"></i> 控制面板</span>
                    </li>

                    <li class="list-group-item tree-closed">
                        <span><i class="glyphicon glyphicon glyphicon-tasks"></i> 用户管理<span class="badge" style="float: right">2</span></span>
                        <ul style="margin-top: 10px;">
                            <li style="height: 30px;">
                                <a href="${APP_PATH}/user/index" style="color: red;"><i class="glyphicon glyphicon-user"></i>系统用户</a>
                            </li>
                            <li style="height: 30px;" class="disabled">
                                <a href="#"><i class="glyphicon glyphicon-king"></i> 微信用户</a>
                            </li>
                        </ul>
                    </li>

                    <li class="list-group-item">
                        <span><i class="glyphicon glyphicon glyphicon-tasks"></i> <a href="${APP_PATH}/workReport/index">工作报表 </a></span>
                    </li>
                    <li class="list-group-item tree-closed">
                        <span><i class="glyphicon glyphicon-ok"></i> <a href="${APP_PATH}/dialog/index">对话管理</a> </span>
                    </li>

                    <li class="list-group-item disabled">
                        <span><i class="glyphicon glyphicon-list-alt"></i> 操作流水 </span>
                    </li>
                    <li class="list-group-item disabled">
                        <span><i class="glyphicon glyphicon-asterisk"></i> 活跃度 </span>
                    </li>
                </ul>
            </div>
        </div>

        <div class="col-sm-10 col-sm-offset-2">
            <h1 class="page-header" style="margin: auto;">控制面板</h1>

            <div class="row placeholders">
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Label</h4>
                    <span class="text-muted">Something else</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Label</h4>
                    <span class="text-muted">Something else</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Label</h4>
                    <span class="text-muted">Something else</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Label</h4>
                    <span class="text-muted">Something else</span>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
