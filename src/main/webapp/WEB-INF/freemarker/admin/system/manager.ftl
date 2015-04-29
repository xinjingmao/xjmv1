<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WeLcOmE-(Manager)</title>
<#include "/admin/include/admin-css.html"> 	
</head>
<body> 
 <div id="admin_container">    
    <!-- header-->
    <#include "/admin/include/header.ftl">   
    <a href="/admin/manager/list">管理员用户</a> | <a id="sysdata-btn" href="javascript:;">系统统计数据</a>
    <div id="admin_content">       
        <div id="manager_info_div">
            <p><b>+++++更新密码++++++</b></p>
            <form id="change_password_form">
                <input type="hidden" name="managerId" value="${managerId}" />
                <table class="color">
                    <tr><td>旧密码:</td>
                    <td><input type="password" name="password"/></td></tr>
                    <tr><td>新密码:</td>
                    <td><input type="password" name="newPassword"/></td></tr>
                    <tr><td>确认密码:</td>
                    <td><input type="password" name="confirmPassword"/></td></tr>
                    <tr><td colspan="2">
                    <input type="button" id="change_password_btn" value="确定" /></td></tr>
                </table>
            </form>
            <div id="change_password_result_div"></div>
        
            <p><b>+++++增加管理员++++++</b></p>                
            <form id="add_manager_form">
            <table class="color">
                <tr><td>管理员名称:</td>
                <td><input name="managerId" type="text"/></td></tr>
                <tr><td>密码:</td>
                <td><input name="newPassword" type="password"/></td></tr>
                <tr><td colspan="2">
                <input type="button" id="add_manager_btn" value="确定" /></td>
                </tr>
            </table>
            </form>
            <div id="create_manager_result_div"></div>
        </div><!-- end of manager info div-->
        
        
        <div id="manager_list_div">
            <table class="color">
                <tr><td>管理员</td>
                <td>添加时间</td>
                <td>操作</td></tr>
                <#if managers?size &gt; 0>
                
                <#list managers as m>
                <tr>
                <td>${m.managerId}</td>                    
                <td>${(m.addTime)}</td>
                <td><#if managerId != m.managerId><a class="delmanager" id="${m.managerId}">删除</a><#else><span>删除</span></#if></td>
                </tr>
                </#list>
                <#else>
                    <tr><td colspan="2">暂无数据</td></tr>
                </#if>
            </table>
        </div>
         
    </div>
</div>    
</body>
<#include "/include/js_basic.html">
<script type="text/javascript" src="${jsRoot}/admin/manager.js"></script>
</html>
