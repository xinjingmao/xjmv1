<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WeLcOmE-(System)</title>
<#include "/admin/include/admin-css.html"> 	
</head>
<body>
  <div id="admin_container">    
    <!-- header-->
    <#include "/admin/include/header.ftl">  
        
    <div id="admin_content">
        <div id="vertical_nav" class="vertical_nav">          	
            <a href="/admin/statistic" id="first_nav_a">系统统计数据</a>
            ++++++++++            
            <a href="/admin/manager" id="manager_user_a">管理员用户</a>
            ++++++++++            
            <a href="/admin/config">系统配置文件</a>                                      
        </div>       
        
        <div id="" class="right_content">
            <#-- iframe-->            
            <iframe id="system_issue_iframe"></iframe>                            
        </div>
    </div>
    
    <#include "/admin/include/footer.ftl">
</body>
<#include "/include/js_basic.html">
<script type="text/javascript" src="${jsRoot}/admin/system.js"></script>
</html>
