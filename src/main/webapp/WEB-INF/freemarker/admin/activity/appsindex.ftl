<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WeLcOmE-(AtiviTy)</title>
<#include "/admin/include/admin-css.html">  
<link rel="stylesheet" type="text/css" href="${cssRoot}/calendar/calendar.css" />
<style>
#act_mode_div {
    position: fixed;
    z-index: 100;
    width: 50%;
    left: 25%;
    display: none;
    border: 1.5px solid #CCC;
    background-color: #FFF;
    line-height: 200%;    
}
.text-overflow {  
    display:block;/*内联对象需加*/ 
    height:95px; 
    overflow-y:auto;
}
</style>
</head>
<body>
  <div id="admin_container">    
    <!-- header-->
    <#include "/admin/include/header.ftl">  
        
    <div id="admin_content">
        <ul class="u_sub_nav" id="horizontal_nav_ul">
            <li><a href="#query_appinfo_div" id="query_appinfo">查询应用详情</a></li>
            <li><a href="#query_user_div" id="query_user">查询应用拥有者详情</a></li>
            <li><a href="#query_recommender_div" id="query_recommender">查询应用推荐者详情</a></li>
        </ul>              
        <div id="query_appinfo_div" class="u_content">
                <form id="query_appinfo_form">
                <table class="color">
                    <tr>
                        <td>应用ID</td><td>应用名</td>
                        <td>app拥有者</td>
                        <td>上传App的状态</td>
                        <td>分享数</td>
                        <td>点击数</td>
                        <td>创建日期</td>
                        <td>排序</td>
                        <td>PageSize</td>
                    </tr>
                    <tr>                                   
                        <td><input id="appId" name="appId" type="text"/></td>  
                        <td><input id="appName" name="appName"type="text"/></td>
                        <td><input id="appOwner" name="appOwner" type="text"/></td>
                        <td><select name="isUpload" id="isUpload">
                        	<option selected="selected" value="2"></option>
                            <option value="0">未上传</option>
                            <option value="1">已上传</option>
                        </select></td>
                        <td><select name="shareCount" id="shareCount">
                        	<option selected="selected" value="0"></option>
                            <option value="1"> >= 1</option>
                            <option value="10"> >= 10</option>
                            <option value="30"> >= 30</option>
                            <option value="50"> >= 50</option>
                            <option value="100"> >= 100</option>
                            <option value="500"> >= 500</option>
                            <option value="1000"> >= 1000</option>
                            <option value="5000"> >= 5000</option>
                            <option value="50000"> >= 50000</option>
                            <option value="500000"> >= 500000</option>
                        </select></td>
                        <td><select name="clickCount" id="clickCount">
                        	<option selected="selected" value="0"></option>
                        	<option value="1"> >= 1</option>
                            <option value="10"> >= 10</option>
                            <option value="30"> >= 30</option>
                            <option value="50"> >= 50</option>
                            <option value="100"> >= 100</option>
                            <option value="500"> >= 500</option>
                            <option value="1000"> >= 1000</option>
                            <option value="5000"> >= 5000</option>
                            <option value="50000"> >= 50000</option>
                            <option value="500000"> >= 500000</option>
                        </select></td>
                        <td>
	                        <p>
							<input id="app_beginTime" name="beginTime" type="text"/>
							<img src="${imageRoot}/small_calendar.png" id="app_beginTimeBtn"/>				
							
							<span class="content-font"> &nbsp;-&nbsp; </span>
							
							<input id="app_endTime" name="endTime" type="text"/>
							<img src="${imageRoot}/small_calendar.png" id="app_endTimeBtn"/>
							</p>
						</td>
						<td><select name="sort" id="sort">
                        	<option selected="selected" value="createTime">创建时间</option>
                            <option value="shareCount">分享数</option>
                            <option value="clickCount">点击数</option>
                        </select></td>
                        <td><select name="pageSize" id="pageSize">
                            <option value="10">10</option>
                            <option selected="selected" value="20">20</option>
                            <option value="30">30</option>
                            <option value="50">50</option>
                        </select></td>                                              
                    </tr>                   
                        <td colspan="9">
                        <input type="button" id="query_appinfo_btn" value="Query All AppInfo" />
                        <input type="button" id="query_api_btn" value="Query" />
                        <input type="reset" id="reset_query_appinfo_btn" value="Reset" />
                        </td>
                    </tr>
                </table>
                </form>
                <div id="appinfo_list_div"></div>
            </div><!-- end of query_appinfo_div -->
            
            <div id="query_user_div" class="u_content hide">
                <form id="query_user_form">
                <table class="color">
                    <tr>
                        <td>email</td><td>联系人名称</td><td>QQ</td><td>手机号码</td>
                        <td>开发者类型</td><td>电话联系状态</td><td>邮件联系</td><td>QQ联系状态</td><td>集成状态</td>
                        <td>PageSize</td>
                    </tr>
                    <tr>                                   
                        <td><input id="email" name="email" type="text"/></td>  
                        <td><input id="contactPerson" name="contactPerson"type="text"/></td>
                        <td><input id="qq" name="qq"type="text"/></td>
                        <td><input id="phoneNum" name="phoneNum"type="text"/></td>
                        <td><select name="developerType" id="developerType">
                        	<option selected="selected" value=""></option>
                            <option value="公司">公司</option>
                            <option value="工作室">工作室</option>
                            <option value="个人">个人</option>
                        </select></td>
                        <td>
			             	<select name="phoneLink">
			             		<option selected="selected" value="-1"></option>
			                	<option value="0">未联系</option>
			                    <option value="1">已沟通</option>
			                    <option value="2">无法联系</option>
			                </select>
			             </td>
			             <td>
			             	<select name="emailLink">
			             		<option selected="selected" value="-1"></option>
			                	<option value="0">未发邮件</option>
			                    <option value="1">已发邮件</option>
			                    <option value="2">地址不正确</option>
			                </select>
			             </td>
			             <td>
			             	<select name="qqLink">
			                	<option selected="selected" value="-1"></option>
			                	<option value="0">未添加好友</option>
			                    <option value="1">添加没反应</option>
			                    <option value="2">已添加好友</option>
			                    <option value="3">拒绝添加</option>
			                </select>
			             </td> 
			             <td>
			             	<select name="integration">
			             		<option selected="selected" value="-1"></option>
			                	<option value="0">未知</option>
			                    <option value="1">未使用</option>
			                    <option value="2">未集成</option>
			                    <option value="3">正在集成</option>
			                    <option value="4">已集成</option>
			                </select>
			             </td>
                        <td><select name="pageSize" id="pageSize">
                            <option value="10">10</option>
                            <option selected="selected" value="20">20</option>
                            <option value="30">30</option>
                            <option value="50">50</option>
                        </select></td>                                              
                    </tr>                   
                        <td colspan="10">
                        <input type="button" id="all_user_btn" value="Query All User" />
                        <input type="button" id="query_user_btn" value="Query" />
                        <input type="reset"  value="Reset" />
                        </td>
                    </tr>
                </table>
                </form>
                <div id="user_list_div"></div>
            </div><!-- end of query_user_div -->
            
            <div id="query_recommender_div" class="u_content hide">
                <form id="query_recommender_form">
                <table class="color">
                    <tr>
                        <td>推荐者Id</td>
                        <td>手机机型</td>
                        <td>系统版本号</td>
                        <td>PageSize</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="recommenderId" id="recommenderId"/></td>  
                        <td><input type="text" name="phoneType" id="phoneType"/></td>
                        <td><input type="text" name="sysVersion" id="sysVersion"/></td>  
                        <td><select name="pageSize" id="pageSize">
                            <option value="10">10</option>
                            <option selected="selected" value="20">20</option>
                            <option value="30">30</option>
                            <option value="50">50</option>
                        </select></td>
                    </tr>
                    
                    <tr>
                        <td colspan="7">
                        <input type="button" id="all_recommender_btn" value="Query All recommender" />
                        <input type="button" id="some_recommender_btn" value="Query" />
                        <input type="reset" id="reset_award_developer_btn" value="Reset" />
                        </td>
                    </tr>
                </table>
                </form>
                <div id="recommender_list_div"></div>
            </div><!-- end of query_developer_div -->
            
    </div>   
    <div id="act_mode_div">
    	<input type="hidden" id="act_appId">
    	<input type="hidden" id="act_appName">
    	<input type="hidden" id="act_appOwner">
    	选择活动<select id="activityId">
    		<#list actList as act>
            <option value="${act.activityId}">套餐${act_index + 1}</option>
            </#list>
        </select>
        <p>活动名  <input type="text" id="activityName"/></p>
   <#-- <p class="small-title-font ">活动默认分享内容设置</p>
		<p><span class="small-title-font">分享标题 </span> （12个字以内）</p>
		<input type="text" id="shareTitle" required/>
		<p><span class="small-title-font">分享描述 </span> （120个字以内）</p>
		<textarea class="tp-textarea-width" id="shareDescription"></textarea>
		<p><span class="small-title-font">分享图片 </span> （图片尺寸建议300px * 300px）</p>
		<p><img id="sharePicUrl" style="width:150px;height:150px"></p>
		<form id="share-picture-upload" method="post" enctype="multipart/form-data">
		<input id="sharepic" type="file" name="sharepic"  value=""/>
		<p><font style="color:red;" id="sharepicTip"></font></p>
		</form>
		<p><span class="small-title-font">分享链接 </span></p>
		<input type="text" id="shareLink"/> -->
        <p>活动时间
		<input id="beginTime" name="beginTime" type="text"/>
		<img src="${imageRoot}/small_calendar.png" id="beginTimeBtn"/>				
		
		<span class="content-font"> &nbsp;-&nbsp; </span>
		
		<input id="endTime" name="endTime" type="text"/>
		<img src="${imageRoot}/small_calendar.png" id="endTimeBtn"/>
		</p>
       <p> <button id="activate_btn" >开通</button></td>&nbsp;&nbsp;
        <button id="close_btn" >取消</button></p>
    </div> 
    <#include "/admin/include/footer.ftl">
  </div>
</body>
<#include "/include/js_basic.html">
<script src="${jsRoot}/calendar/calendar.js"></script>
<script src="${jsRoot}/calendar/cn.js"></script>
<script type="text/javascript" src="${jsRoot}/jquery-form.js"></script>
<script type="text/javascript" src="${jsRoot}/admin/apps_query.js"></script>
<script type="text/javascript" src="${jsRoot}/admin/appsindex.js"></script>
</html>
