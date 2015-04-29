<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WeLcOmE-(AtiviTy)</title>
<#include "/admin/include/admin-css.html">  
</head>
<body>
  <div id="admin_container">    
    <!-- header-->
    <#include "/admin/include/header.ftl">  
        
    <div id="admin_content">
        <ul class="u_sub_nav" id="horizontal_nav_ul">
            <li><a href="#query_award_div" id="query_award">查询活动详情</a></li>
            <li><a href="#query_accept_div" id="query_accept">查询参与活动详情</a></li>
            <li><a href="#query_activity_div" id="query_activity">查询回流详情</a></li>
            <li><a href="#query_winaward_div" id="query_winaward">查询获奖详情</a></li>
            <li><a href="javascript:;" id="act_mode_set">活动模板设置</a></li>
        </ul>  
        <div id="act_mode_set_div" class="u_content hide">
        	<a href="/admin/actmode" target="_blank">活动模板设置</a>
        	<p></p>
        </div>            
        <div id="query_activity_div" class="u_content hide">
                <form id="query_activity_form">
                <table class="color">
                    <tr>
                        <td>活动ID</td><td>APPID</td>
                        <td>推荐者ID</td>
                        <td>推荐途径</td>
                        <td>PageSize</td>
                    </tr>
                    <tr>                                   
                        <td><input name="activityId" type="text"/></td>
                        <td><input name="appId" type="text"/></td>
                        <td><input name="recommenderId" type="text"/></td>
                        <td>
                            <select name="channelId" >
                                <option value="50" selected="selected">全部途径</option>
								<option value="0" >新浪微博</option>
								<option value="1">腾讯微博</option>
								<option value="2">QQ空间</option>
								<option value="3">微信好友</option>
								<option value="4">人人网</option>
								<option value="5">QQ</option>
								<option value="6">二维码</option>
								<option value="7">短信</option>
								<option value="8">邮件</option>
								<option value="9">复制链接</option>
								<option value="10">微信朋友圈</option>
								<option value="11">易信</option>
								<option value="12">易信朋友圈</option>
								<option value="13">开心网</option>
								<option value="14">微信收藏</option>                                                                     
                            </select>
                        </td> 
                        <td><select name="pageSize" id="pageSize">
                            <option value="10">10</option>
                            <option selected="selected" value="20">20</option>
                            <option value="30">30</option>
                            <option value="50">50</option>
                        </select></td>                                              
                    </tr>                   
                        <td colspan="8">
                        <input type="button" id="query_alljoinact_btn" value="Query All Acceptor" />
                        <input type="button" id="query_joinact_btn" value="Query" />
                        <input type="reset" id="reset_query_activity_btn" value="Reset" />
                        </td>
                    </tr>
                </table>
                </form>
                <div id="activity_list_div"></div>
            </div><!-- end of query_activity_div -->
            
            <div id="query_award_div" class="u_content">
                <form id="query_award_form">
                <table class="color">
                    <tr>
                        <td>活动状态</td><td>活动ID</td>
                        <td>活动拥有者</td><td>应用名</td><td>活动名</td>
                        <td>PageSize</td>
                    </tr>
                    <tr>
                        <td>
                            <select name="status" id="status_award2">
                                <option selected="selected" value="0">进行中</option>
                                <option value="1">暂停中</option>      
                                <option value="2">结束</option>
                                <option value="3">草稿状态</option>
                                <option value="4">等待状态</option>                                                                     
                            </select>
                        </td>    
                        <td><input type="text" name="activityId" id="activityId"/></td>  
                        <td><input type="text" name="activityOwner" id="activityOwner"/></td>  
                        <td><input type="text" name="appName" id="appName" /></td>                         
                        <td>
                            <input type="text" name="activityName" id="activityName1"/>
                        </td>  
                        <td><select name="pageSize" id="pageSize">
                            <option value="10">10</option>
                            <option selected="selected" value="20">20</option>
                            <option value="30">30</option>
                            <option value="50">50</option>
                        </select></td>
                    </tr>
                    
                    <tr>
                        <td colspan="7">
                        <input type="button" id="query_award_btn" value="Query All Activity" />
                        <input type="button" id="query_act_btn" value="Query" />
                        <input type="reset" id="reset_award_join_btn" value="Reset" />
                        </td>
                    </tr>
                </table>
                </form>
                <div id="award_list_div"></div>
            </div><!-- end of query_award_div -->
            
             <div id="query_accept_div" class="u_content">
                <form id="query_accept_form">
                <table class="color">
                    <tr>
                        <td>活动ID</td>
                        <td>APPID</td>
                        <td>PageSize</td>
                    </tr>
                    <tr>                                   
                        <td><input id="activityId" name="activityId" type="text"/></td>
                        <td><input id="appId" name="appId" type="text"/></td>
                        <td><select name="pageSize" id="pageSize">
                            <option value="10">10</option>
                            <option selected="selected" value="20">20</option>
                            <option value="30">30</option>
                            <option value="50">50</option>
                        </select></td>                                              
                    </tr>                   
                        <td colspan="5">
                        <input type="button" id="query_accpet_btn" value="Query All joinAct" />
                        <input type="button" id="query_acc_btn" value="Query" />
                        <input type="reset" id="reset_query_acc_btn" value="Reset" />
                        </td>
                    </tr>
                </table>
                </form>
                <div id="allaccept_div"></div>
            </div>
            <!-- end of query_accpet_div -->
            
             <div id="query_winaward_div" class="u_content">
                <form id="query_winaward_form">
                <table class="color">
                    <tr>
                        <td>活动ID</td>
                        <td>参与者ID</td>
                        <td>是否需要物流</td>
                        <td>发货状态</td>
                        <td>PageSize</td>
                    </tr>
                    <tr>                                   
                        <td><input name="activityId" type="text"/></td>
                        <td><input name="recommenderId" type="text"/></td>
                        <td><select name="needLogistics" id="needLogistics">
                            <option value="1">是</option>
                            <option selected="selected" value="0">否</option>
                        </select></td>
                        <td><select name="flag" id="flag">
                            <option value="2">已发货</option>
                            <option selected="selected" value="1">未发货</option>
                        </select></td>
                        <td><select name="pageSize" id="pageSize">
                            <option value="10">10</option>
                            <option selected="selected" value="20">20</option>
                            <option value="30">30</option>
                            <option value="50">50</option>
                        </select></td>                                              
                    </tr>                   
                        <td colspan="7">
                        <input type="button" id="query_winaward_btn" value="Query All Winer" />
                        <input type="button" id="query_wina_btn" value="Query" />
                        <input type="reset" id="reset_query_acc_btn" value="Reset" />
                        </td>
                    </tr>
                </table>
                </form>
                <div id="allwinaward_div"></div>
            </div>
                        <!-- end of query_winaward_div -->
    </div>    
    <#include "/admin/include/footer.ftl">
  </div>
</body>
<#include "/include/js.html">
<script type="text/javascript" src="${jsRoot}/admin/index.js"></script>
<script type="text/javascript" src="${jsRoot}/admin/admin_query.js"></script>
</html>
