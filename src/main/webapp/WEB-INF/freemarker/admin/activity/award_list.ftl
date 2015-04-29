<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WeLcOmE-(AtiviTy)</title>
<#include "/admin/include/admin-css.html">  
<link rel="stylesheet" type="text/css" href="${cssRoot}/calendar/calendar.css" />
</head>
<body>
  <div id="admin_container">    
    <!-- header-->
    <#include "/admin/include/header.ftl">  
    	<div>
		   <a href="/admin/awardSet">奖品设置</a>  |  <a href="/admin/awardPage">奖品列表</a>
		</div>
		<div class="form-group">
			<h3 class="small-title-font">奖品列表</h3>
		</div>
		请先输入需要修改奖品设置的活动ID <input type="text" id="activityId" />
		<div id="activity-info" style="display:none;"></div>
		<div id="award-set-div">	
			
		</div>
    <#include "/admin/include/footer.ftl">
  </div>
</body>
<#include "/include/js.html">
<script type="text/javascript" src="${jsRoot}/calendar/calendar.js"></script>
<script type="text/javascript" src="${jsRoot}/calendar/cn.js"></script>
<script type="text/javascript" src="${jsRoot}/jquery-form.js"></script>
<script type="text/javascript" src="${jsRoot}/admin/award_list.js"></script>

</html>
