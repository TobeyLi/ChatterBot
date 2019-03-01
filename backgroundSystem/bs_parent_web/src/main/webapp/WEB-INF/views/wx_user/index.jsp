<%@page pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<link rel="stylesheet" href="${APP_PATH}/css/bootstrap.min.css">
<link rel="stylesheet" href="${APP_PATH}/css/font-awesome.min.css">
<link rel="stylesheet" href="${APP_PATH}/css/shouye.css">
<link rel="stylesheet" href="${APP_PATH}/css/common.css">
<style>
.tree li {
	list-style-type: none;
	cursor: pointer;
}

table tbody tr:nth-child(odd) {
	background: #F4F4F4;
}

table tbody td:nth-child(even) {
	color: #C00;
}
</style>

	<script src="${APP_PATH}/js/jquery-3.3.1.js"></script>
	<script src="${APP_PATH}/js/bootstrap.min.js"></script>
	<script src="${APP_PATH}/script/docs.min.js"></script>
	<script src="${APP_PATH}/layer/layer.js"></script>
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

    <div class="row">
        <div class="col-sm-2 sidebar" style="margin-top: 20px;margin-left:15px">
        <%--<div class="col-sm-2 sidebar">--%>
            <div class="tree">
                <ul style="padding-left:0px;" class="list-group">
                    <li class="list-group-item tree-closed" >
                        <a href="${APP_PATH}/shouye"><i class="glyphicon glyphicon-dashboard"></i> 控制面板</a>
                    </li>

                    <li class="list-group-item">
                        <span><i class="glyphicon glyphicon glyphicon-tasks"></i> 用户管理<span class="badge" style="float: right">2</span></span>
                        <ul style="margin-top: 10px;">
                            <li style="height: 30px;">
                                <a href="${APP_PATH}/user/index" ><i class="glyphicon glyphicon-user"></i>系统用户</a>
                            </li>
                            <li style="height: 30px;">
                                <a href="${APP_PATH}/wx_user/index" style="color: red;"><i class="glyphicon glyphicon-king"></i> 微信用户</a>
                            </li>
                        </ul>
                    </li>

                    <li class="list-group-item">
                        <span><i class="glyphicon glyphicon glyphicon-tasks"></i> <a href="${APP_PATH}/workReport/index">工作报表 </a></span>
                    </li>
                    <li class="list-group-item tree-closed">
                        <span><i class="glyphicon glyphicon-ok"></i> <a href="${APP_PATH}/dialog/index">对话管理</a> </span>
                    </li>
                    <%--<li class="list-group-item tree-closed active">
                        <span><i class="glyphicon glyphicon-th-large"></i> 用户管理 <span class="badge" style="float:right">2</span></span>
                        <ul style="margin-top:10px;">
                            <li style="height:30px;">
                                <a href="${APP_PATH}/user/index"><i class="glyphicon glyphicon-eye-open"></i> 管理员</a>
                            </li>
                            &lt;%&ndash;<li style="height:30px;">
                                <a href="#"><i class="glyphicon glyphicon-eye-close"></i> 普通用户</a>
                            </li>&ndash;%&gt;
                        </ul>
                    </li>--%>

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
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <i class="glyphicon glyphicon-th"></i> 用户管理
                    </h3>
                </div>
                <div class="panel-body">
                    <form class="form-inline" role="form" style="float: left;">
                        <div class="form-group has-feedback">
                            <div class="input-group">
                                <div class="input-group-addon">查询条件</div>
                                <input id="queryText" class="form-control has-success" type="text"
                                       placeholder="请输入查询条件">
                            </div>
                        </div>
                        <button id="queryBtn" type="button" class="btn btn-warning">
                            <i class="glyphicon glyphicon-search"></i> 查询
                        </button>
                    </form>
                    <button type="button" class="btn btn-danger" onclick="deleteUsers()"
                            style="float: right; margin-left: 10px;">
                        <i class=" glyphicon glyphicon-remove"></i> 删除
                    </button>
                    <%--<button id="insertBtn" type="button" class="btn btn-primary disabled"
                            style="float: right;" onclick="window.location.href='${APP_PATH}/user/add'">
                        <i class="glyphicon glyphicon-plus"></i> 新增
                    </button>--%>
                    <br>
                    <hr style="clear: both;">
                    <div class="table-responsive">

                        <form id="userForm">
                            <table class="table  table-bordered">
                                <thead>
                                <tr>
                                    <th width="30">#</th>
                                    <th width="30"><input type="checkbox" id="allSelBox"></th>
                                    <th>id</th>
                                    <th>昵称</th>
                                    <th>性别</th>
                                    <th>城市</th>
                                    <th width="100">操作</th>
                                </tr>
                                </thead>

                                <tbody id="userData">

                                </tbody>

                                <tfoot>
                                <tr>
                                    <td colspan="7" align="center">
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

<script type="text/javascript">

var likeflag=false;
$(function() {
    $(".list-group-item").click(function() {
        if ($(this).find("ul")) {
            $(this).toggleClass("tree-closed");
            if ($(this).hasClass("tree-closed")) {
                $("ul", this).hide("fast");
            } else {
                $("ul", this).show("fast");
            }
        }
    });


    pageQuery(1);//加载页面完成就查询

    $("#queryBtn").click(function(){
        var queryText=$("#queryText").val();
        if(queryText == ""){
            likeflag=false;
        }else{
            likeflag=true;
        }

        pageQuery(1);
    });

    //删除用户操作
    $("#allSelBox").click(function(){
        var flg=this.checked;

        $("#userData :checkbox").each(function(){
            this.checked=flg;
        });
    });




});
$("tbody .btn-success").click(function() {
    window.location.href = "assignRole.html";
});
$("tbody .btn-primary").click(function() {
    window.location.href = "edit.html";
});

//翻页
function changePageno(pageno) {
    window.location.href = "${APP_PATH}/wx_user/index?pageno=" + pageno;
}

//分页查询

function pageQuery(pageno) {
    var loadingIndex=null;
    var jsonData = {"pageno" : pageno,"pagesize" : 3};
    if(likeflag == true){
        jsonData.queryText = $("#queryText").val();
    }

    $.ajax({
                type : "POST",
                url : "${APP_PATH}/wx_user/pageQuery",
                data :jsonData,
                beforeSend : function(){
                    loadingIndex = layer.msg('处理中', {
                        icon : 16
                    });
                },
                success : function(result) {
                    layer.close(loadingIndex);
                    if (result.success) {
                        //局部刷新页面数据

                        var tableContent = "";
                        var pageContent = "";

                        var wxuserPage = result.data;
                        var wxusers = wxuserPage.datas;

                        $.each(wxusers,function(i, wxuser) {
                                            tableContent += '    <tr>';
                                            tableContent += '      <td>'+(i+1)+'</td>';
                                            tableContent += '      <td><input type="checkbox" name="wxuids" value="'+wxuser.wxuid+'"></td>';
                                            tableContent += '      <td>'+wxuser.wxuid+'</td>';
                                            tableContent += '      <td>'+wxuser.nickname+'</td>';
                                            tableContent += '      <td>'+wxuser.sex+'</td>';
                                            tableContent += '      <td>'+wxuser.city+'</td>';
                                            tableContent += '      <td>';
                                            tableContent += '      <button type="button" class="btn btn-success btn-xs disabled"><i class=" glyphicon glyphicon-check"></i></button>';
                                            tableContent += '      <button type="button" onclick="goUpdatePage('+wxuser.wxuid+')" class="btn btn-primary btn-xs" disabled><i class=" glyphicon glyphicon-pencil"></i></button>';
                                            tableContent += '       <button type="button" onclick="deleteUser('+wxuser.wxuid+',\''+wxuser.nickname+'\')" class="btn btn-danger btn-xs"><i class=" glyphicon glyphicon-remove"></i></button>';
                                            tableContent += '      </td>';
                                            tableContent += '    </tr>';

                                        });
                       //刷新pageContent

                        if(pageno == 1){
                             pageContent += '<li class="disabled"><a href="#" style="background-color: lightgrey">上一页</a></li>';
                           }

                       if(pageno > 1){
                           pageContent += ' <li><a href="#" onclick="pageQuery('+(pageno-1)+')">上一页</a></li>';
                       }

                      for(var i=1; i<=wxuserPage.totalNo; i++){
                          if(i == pageno){
                              pageContent +='<li class="active"><a href="#">'+i+'</a></li>';
                          }else{
                              pageContent +='<li ><a href="#" onclick="pageQuery('+i+')">'+i+'</a></li>';
                          }
                      }

                      if(pageno< wxuserPage.totalNo){
                          pageContent +='<li><a href="#" onclick="pageQuery('+(pageno+1)+')">下一页</a></li>';
                      }

                      if(pageno == wxuserPage.totalNo){
                          pageContent +='<li class="disabled" ><a style="background-color:lightgrey" href="#">下一页</a></li>';
                      }

                    $("#userData").html(tableContent);
                    $(".pagination").html(pageContent);

                      } else {
                        layer.msg("用户信息分页查询失败", {
                            time : 2000,
                            icon : 5,
                            shift : 6
                        }, function() {
                        });
                    }//else
                }//success


    });

}//function:pageQuery()

//fuction goUpdatePage
function goUpdatePage(id){
    window.location.href = "${APP_PATH}/wx_user/edit?id="+id;
}

//function	deleteUsers
function deleteUsers(){
    var boxes=$("#userData :checkbox");//查看选中了多少个
    if(boxes.length == 0){

        layer.msg("请选择需要删除的用户信息", {
            time : 2000,
            icon : 5,
            shift : 6
        }, function() {
        });
    }else{
        layer.confirm("删除选择的用户信息,是否继续",  {icon: 3, title:'提示'}, function(cindex){
            //alert($("#userForm").serialize());
            //return;
            //删除选择的用户信息
            $.ajax({
                type: "POST",
                url: "${APP_PATH}/wx_user/deletes",
                data: $("#userForm").serialize(),//序列化表单数据
                success : function(result){
                    if(result.success){
                        pageQuery(1);

                    }else{

                        layer.msg("用户信息删除失败", {
                            time : 2000,
                            icon : 5,
                            shift : 6
                        }, function() {
                        });
                    }


                }


            });

            layer.close(cindex);
        }, function(cindex){
            layer.close(cindex);
        });

        //


    }

}

//function deleteUser
function deleteUser(wxuid, nickname){
    layer.confirm("删除用户信息【"+nickname+"】,是否继续",  {icon: 3, title:'提示'}, function(cindex){

        //删除用户信息
        $.ajax({
            type: "POST",
            url: "${APP_PATH}/wx_user/delete",
            data: {wxuid :wxuid},
            success : function(result){
                if(result.success){
                    pageQuery(1);

                }else{

                    layer.msg("用户信息删除失败", {
                        time : 2000,
                        icon : 5,
                        shift : 6
                    }, function() {
                    });
                }


            }


        });

        layer.close(cindex);
    }, function(cindex){
        layer.close(cindex);
    });



}
</script>

</body>
</html>
