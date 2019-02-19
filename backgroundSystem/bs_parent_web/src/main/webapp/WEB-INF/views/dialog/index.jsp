<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>dialogManage</title>

    <link rel="stylesheet" type="text/css" href="${APP_PATH}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${APP_PATH}/css/navbar.css">

    <script type="text/javascript" src="${APP_PATH}/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="${APP_PATH}/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${APP_PATH}/js/navbar.js"></script>
    <script type="text/javascript" src="${APP_PATH}/layer/layer.js"></script>
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Brand</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-inverse">
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

    <div class="row clearfix" style="overflow: hidden">
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
                    <button type="button" class="btn btn-danger" style="float:right;margin-left:10px;" onclick="deleteDialogs()"><i class=" glyphicon glyphicon-remove"></i> 删除</button>
                    <button type="button" class="btn btn-primary disabled" style="float:right;" ><i class="glyphicon glyphicon-plus"></i> 新增</button>
                    <br>
                    <hr style="clear:both;">

                    <div class="table-responsive">
                        <form id="dialogForm">
                            <table class="table  table-bordered">
                                <thead>
                                    <tr >
                                        <th width="30">#</th>
                                        <th width="30"><input type="checkbox" id="allSelBox"></th>
                                        <th>chatId</th>
                                        <th>userId</th>
                                        <th>用户聊天</th>
                                        <th>发送时间</th>
                                        <th>机器人回复</th>
                                        <th>响应时间</th>
                                        <th width="100">操作</th>
                                    </tr>
                                </thead>

                                <tbody id="dialogData">
                                </tbody>

                                <tfoot>
                                <tr >
                                    <td colspan="9" align="center">
                                        <ul class="pagination">

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

    </div>

</div>

<script>
    var likeFlag=false;
    $(function () {
        pageQuery(1);

        $("#queryBtn").click(function () {
            var queryText=$("#queryText").val();
            if(queryText==""){
                likeFlag=false;
            }else {
                likeFlag=true;
            }
            pageQuery(1);
        });

        $("#allSelBox").click(function () {
            var flg=this.checked;
            $("#dialogData :checkbox").each(function () {
                this.checked=flg;
            });
        });
    });

    //分页查询
    function pageQuery(pageNo) {
        var loadingIndex=null;
        var jsonData={
            "pageNo":pageNo,
            "pageSize":2
        }
        if(likeFlag==true){
            jsonData.queryText=$("#queryText").val();
        }
        $.ajax({
            type:"POST",
            url:"${APP_PATH}/dialog/pageQuery",
            data:jsonData,
            beforeSend:function () {
                loadingIndex=layer.msg("处理中",{icon:16});
            },
            success:function (result) {
                layer.close(loadingIndex);
                if(result.success){

                    //局部刷新页面数据
                    var tableContent="";
                    var pageContent="";
                    var dialogPage=result.data;
                    var dialogs=dialogPage.datas;

                    //表格
                    $.each(dialogs,function (i,dialog) {
                        tableContent+='<tr>';
                        tableContent+='    <td>'+(i+1)+'</td> ';
                        tableContent+='    <td><input type="checkbox" name="chatId" value="'+dialog.chatId+'"></td>';
                        tableContent+='        <td>'+dialog.chatId+'</td>';
                        tableContent+='        <td>'+dialog.userId+'</td>';
                        tableContent+='        <td>'+dialog.inputMessage+'</td>';
                        tableContent+='        <td>'+dialog.sendTime+'</td>';
                        tableContent+='       <td>'+dialog.responseMessage+'</td>';
                        tableContent+='       <td>'+dialog.responseTime+'</td>';
                        tableContent+='        <td>';
                        tableContent+='        <button type="button" class="btn btn-success btn-xs disabled"><i class=" glyphicon glyphicon-check"></i></button>';
                        tableContent+='    <button type="button" class="btn btn-primary btn-xs disabled"><i class=" glyphicon glyphicon-pencil"></i></button>';
                        /*tableContent+='    <button type="button" class="btn btn-danger btn-xs" onclick="deleteDialog('+dialog.chatId+',\''+dialog.userId+'\')"><i class=" glyphicon glyphicon-remove"></i></button>';*/
                        tableContent+='    <button type="button" class="btn btn-danger btn-xs" onclick="deleteDialog('+dialog.chatId+','+dialog.userId+')"><i class=" glyphicon glyphicon-remove"></i></button>';
                        tableContent+='    </td>';
                        tableContent+='</tr>';
                    });

                    //分页栏
                    if(pageNo>1){
                        pageContent+='<li><a href="#" onclick="pageQuery('+(pageNo-1)+')">上一页</a></li>';
                    }else{
                        pageContent+='<li class="disabled"><a href="#" style="background-color: lightgrey">上一页</a></li>';
                    }
                    for(var i=1;i<=dialogPage.totalNo;i++){
                        if(i==pageNo){
                            pageContent+='<li class="active"><a href="#">'+i+'</a></li>';
                        }else {
                            pageContent+='<li ><a href="#" onclick="pageQuery('+i+')">'+i+'</a></li>';
                        }
                    }
                    if(pageNo<dialogPage.totalNo){
                        pageContent+='<li><a href="#" onclick="pageQuery('+(pageNo+1)+')">下一页</a></li>';
                    }else{
                        pageContent+='<li class="disabled" ><a style="background-color:lightgrey" href="#">下一页</a></li>';
                    }

                    //追加
                    /*$("#dialogData").append(tableContent);
                    $(".pagination").append(pageContent);*/
                    //重写
                    $("#dialogData").html(tableContent);
                    $(".pagination").html(pageContent);

                }else {
                    layer.msg("对话信息分页查询失败",{time:2000,icon:5,shift:6},function () {});
                }
            }
        })
    }
    
    function deleteDialog(chatId,userId) {
        layer.confirm("删除对话信息【chatId="+chatId+","+"userId="+userId+"】,是否继续",{icon:3,title:"提示"},function (cindex) {

            //删除当前数据
            $.ajax({
                type:"POST",
                url:"${APP_PATH}/dialog/delete",
                data:{
                    chatId:chatId
                },
                success:function (result) {
                    if(result.success){
                        pageQuery(1);
                    }else{
                        layer.msg("对话信息删除失败",{time:2000,icon:5,shift:6},function () {});
                    }
                }
            });

            layer.close(cindex);
        },function (cindex) {
            //取消
            layer.close(cindex);
            }
        );
    }
    
    function deleteDialogs() {

        /*alert($("#dialogForm").serialize());
        return;*/

        var boxes=$("#dialogData :checkbox");
        if(boxes.length==0){
            layer.msg("请选择需要删除的对话",{time:2000,icon:5,shift:6},function () {});
        }else {
            layer.confirm("删除选择的对话,是否继续",{icon:3,title:"提示"},function (cindex) {

                    //删除选择的对话
                    $.ajax({
                        type:"POST",
                        url:"${APP_PATH}/dialog/deletes",
                        data:$("#dialogForm").serialize(),
                        success:function (result) {
                            if(result.success){
                                pageQuery(1);
                            }else{
                                layer.msg("对话信息删除失败",{time:2000,icon:5,shift:6},function () {});
                            }
                        }
                    });

                    layer.close(cindex);
                },function (cindex) {
                    //取消
                    layer.close(cindex);
                }
            );
        }
    }
</script>

</body>
</html>
