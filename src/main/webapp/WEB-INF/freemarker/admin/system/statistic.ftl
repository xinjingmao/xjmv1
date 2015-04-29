<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WeLcOmE-(statistic)</title>
<#include "/admin/include/admin-css.html"> 	
</head>
<body>    
    <div id="admin_content"> 
    	<p><b>+++++统计系统数据++++++</b></p>
    	<input type="button" id="cal_statistic_btn" value="统计" />
    	
    	<div id="query_statistic">
    		<p><b>+++++系统统计数据列表++++++</b></p>    		
            <div id="statistic_list_div">
            </div>
    	</div>
    </div>
</body>
<#include "/include/js_basic.html">
<script type="text/javascript" src="${jsRoot}/admin/statistic.js"></script>
</html>
