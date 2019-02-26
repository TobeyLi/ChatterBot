<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>--%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>dialogManage</title>
    <%--<base href="<%=basePath%>">--%>
    <%--<link rel="stylesheet" type="text/css" href="${APP_PATH}/css/bootstrap.min.css">--%>
    <link rel="stylesheet" type="text/css" href="${APP_PATH}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${APP_PATH}/css/navbar.css">

    <script type="text/javascript" src="${APP_PATH}/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="${APP_PATH}/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${APP_PATH}/js/navbar.js"></script>
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
                        <li>
                            <a href="#">智能交互平台</a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Action</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">logout</a>
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
            </ul>
        </div>

        <div class="col-md-10 column">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-th"></i> 数据列表</h3>
                </div>

                <div class="panel-body">
                    <form class="form-inline" role="form" style="float:left;">
                        <div class="form-group has-feedback">
                            <div class="input-group">
                                <div class="input-group-addon">查询条件</div>
                                <input id="queryText" class="form-control has-success" type="text" placeholder="请输入查询条件">
                            </div>
                        </div>
                        <button id="queryBtn" type="button" class="btn btn-warning"><i class="glyphicon glyphicon-search"></i> 查询</button>
                    </form>
                    <button type="button" class="btn btn-danger" onclick="deleteUsers()" style="float:right;margin-left:10px;"><i class=" glyphicon glyphicon-remove"></i> 删除</button>
                    <button type="button" class="btn btn-primary" style="float:right;" onclick="window.location.href='${APP_PATH}/user/add'"><i class="glyphicon glyphicon-plus"></i> 新增</button>
                    <br>
                    <hr style="clear:both;">

                    <div class="table-responsive">
                        <form id="dialogForm">
                            <table class="table  table-bordered">
                                <thead>
                                    <tr >
                                        <th width="30">#</th>
                                        <th width="30"><input type="checkbox" id="allSelBox"></th>
                                        <th>userId</th>
                                        <th>用户聊天</th>
                                        <th>发送时间</th>
                                        <th>机器人回复</th>
                                        <th>响应时间</th>
                                        <th width="100">操作</th>
                                    </tr>
                                </thead>

                                <tbody id="dialogData">
                                    <c:forEach items="${dialogs}" var="dialog" varStatus="status">
                                        <tr>
                                            <td>${status.count}</td>
                                            <td><input type="checkbox"></td>
                                            <td>${dialog.userId}</td>
                                            <td>${dialog.inputMessage}</td>
                                            <td>${dialog.sendTime}</td>
                                            <td>${dialog.responseMessage}</td>
                                            <td>${dialog.responseTime}</td>
                                            <td>
                                                <button type="button" class="btn btn-success btn-xs"><i class=" glyphicon glyphicon-check"></i></button>
                                                <button type="button" class="btn btn-primary btn-xs"><i class=" glyphicon glyphicon-pencil"></i></button>
                                                <button type="button" class="btn btn-danger btn-xs"><i class=" glyphicon glyphicon-remove"></i></button>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>

                                <tfoot>
                                <tr >
                                    <td colspan="8" align="center">
                                        <ul class="pagination">
                                            <%--<c:choose>
                                                <c:when test="${pageNo > 1}">
                                                    <li><a href="#" onclick="changePageNo(${pageNo-1})">上一页</a></li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li class="disabled"><a href="#">上一页</a></li>
                                                </c:otherwise>
                                            </c:choose>--%>

                                            <c:if test="${pageNo > 1}">
                                                <li><a href="#" onclick="changePageNo(${pageNo-1})">上一页</a></li>
                                            </c:if>
                                            <c:if test="${pageNo == 1}">
                                                <li class="disabled"><a href="#" style="background-color: lightgrey">上一页</a></li>
                                            </c:if>

                                            <c:forEach begin="1" end="${totalNo}" varStatus="status">
                                                <c:if test="${pageNo == status.count}">
                                                    <li class="active"><a href="#">${status.count}</a></li>
                                                </c:if>
                                                <c:if test="${pageNo != status.count}">
                                                    <li ><a href="#" onclick="changePageNo(${status.count})">${status.count}</a></li>
                                                </c:if>
                                            </c:forEach>

                                            <c:if test="${pageNo < totalNo}">
                                                <li><a href="#" onclick="changePageNo(${pageNo+1})">下一页</a></li>
                                            </c:if>
                                            <c:if test="${pageNo == totalNo}">
                                                <li class="disabled" ><a style="background-color:lightgrey" href="#">下一页</a></li>
                                            </c:if>
                                        </ul>
                                    </td>
                                </tr>
                                </tfoot>
                            </table>
                        </form>
                    </div>

                </div>
            </div>
        </div>

        <%--<div class="col-md-10 column">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <h3>
                        h3. 这是一套可视化布局系统.
                    </h3>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                            <h3>
                                h3. 这是一套可视化布局系统.
                            </h3>
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>
                                        编号
                                    </th>
                                    <th>
                                        产品
                                    </th>
                                    <th>
                                        交付时间
                                    </th>
                                    <th>
                                        状态
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        1
                                    </td>
                                    <td>
                                        TB - Monthly
                                    </td>
                                    <td>
                                        01/04/2012
                                    </td>
                                    <td>
                                        Default
                                    </td>
                                </tr>
                                <tr class="success">
                                    <td>
                                        1
                                    </td>
                                    <td>
                                        TB - Monthly
                                    </td>
                                    <td>
                                        01/04/2012
                                    </td>
                                    <td>
                                        Approved
                                    </td>
                                </tr>
                                <tr class="error">
                                    <td>
                                        2
                                    </td>
                                    <td>
                                        TB - Monthly
                                    </td>
                                    <td>
                                        02/04/2012
                                    </td>
                                    <td>
                                        Declined
                                    </td>
                                </tr>
                                <tr class="warning">
                                    <td>
                                        3
                                    </td>
                                    <td>
                                        TB - Monthly
                                    </td>
                                    <td>
                                        03/04/2012
                                    </td>
                                    <td>
                                        Pending
                                    </td>
                                </tr>
                                <tr class="info">
                                    <td>
                                        4
                                    </td>
                                    <td>
                                        TB - Monthly
                                    </td>
                                    <td>
                                        04/04/2012
                                    </td>
                                    <td>
                                        Call in to confirm
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                            <ul class="pagination">
                                <li>
                                    <a href="#">Prev</a>
                                </li>
                                <li>
                                    <a href="#">1</a>
                                </li>
                                <li>
                                    <a href="#">2</a>
                                </li>
                                <li>
                                    <a href="#">3</a>
                                </li>
                                <li>
                                    <a href="#">4</a>
                                </li>
                                <li>
                                    <a href="#">5</a>
                                </li>
                                <li>
                                    <a href="#">Next</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>

    </div>

</div>

<script>
    function changePageNo(pageNo) {
        window.location.href="${APP_PATH}/dialog/index1?pageNo="+pageNo;
    }
</script>

</body>
</html>
