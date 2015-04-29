<a href="/admin/user/exportExcel" target="_blank"><button>导出Excel</button></a>
<p class="navigator page"></p>
<div class="hide navigatorJson">${(result.object.navigator.htmlJson)!''}</div>
<table class="color" id="developer_table">
    <tr>
        <th>开发者ID</th><th>email</th><th>联系人名称</th><th>QQ</th>
        <th>手机号码</th><th>开发者类型</th><th>网址</th><th>地址</th><th>注册时间</th><th>来源途径</th><th>应用列表</th>
        <th>电话联系状态</th><th>邮件联系状态</th><th>QQ联系状态</th><th>集成状态</th><th>沟通反馈情况</th><th>跟进处理</th><th>操作</th>
    </tr>
<#if result??>
<#if result.success>
<#assign userList=result.object.userList>
    <#if userList?size &gt; 0>      
        <#list userList as user>
           <tr>
             <td>${user.userId}</td>             
             <td>${user.email}<br>
             	<a href="/admin/manager/appOwner?email=${user.email}" target="_blank">[进入后台]</a>
             </td>
             <td>${user.contactPerson}</td>             
             <td>${user.qq}</td>
             <td>${user.phoneNum}</td>
             <td>${user.developerType}</td> 
             <td>${user.site}</td>
             <td>${user.province}${user.city}${user.location}</td>
             <td>${user.regTime}</td>
             <td>${user.channel}</td> 
             <td>
             	<#if user.appList?size &gt; 0>
             	<#list user.appList as app>
             		${app.appName}[<#if app.platform == 0>安卓<#else>IOS</#if>]<br>
             	</#list>
             	<#else>暂无应用
             	</#if>
             </td> 
             <td>
             	<select id="phoneLink_${user.userId}">
                	<option <#if user.phoneLink == 0>selected="selected"</#if> value="0">未联系</option>
                    <option <#if user.phoneLink == 1>selected="selected"</#if> value="1">已沟通</option>
                    <option <#if user.phoneLink == 2>selected="selected"</#if> value="2">无法联系</option>
                </select>
             </td>
             <td>
             	<select id="emailLink_${user.userId}">
                	<option <#if user.emailLink == 0>selected="selected"</#if> value="0">未发邮件</option>
                    <option <#if user.emailLink == 1>selected="selected"</#if> value="1">已发邮件</option>
                    <option <#if user.emailLink == 2>selected="selected"</#if> value="2">地址不正确</option>
                </select>
             </td>
             <td>
             	<select id="qqLink_${user.userId}">
                	<option <#if user.qqLink == 0>selected="selected"</#if> value="0">未添加好友</option>
                    <option <#if user.qqLink == 1>selected="selected"</#if> value="1">添加没反应</option>
                    <option <#if user.qqLink == 2>selected="selected"</#if> value="2">已添加好友</option>
                    <option <#if user.qqLink == 3>selected="selected"</#if> value="3">拒绝添加</option>
                </select>
             </td> 
             <td>
             	<select id="integration_${user.userId}">
                	<option <#if user.integration == 0>selected="selected"</#if> value="0">未知</option>
                    <option <#if user.integration == 1>selected="selected"</#if> value="1">未使用</option>
                    <option <#if user.integration == 2>selected="selected"</#if> value="2">未集成</option>
                    <option <#if user.integration == 3>selected="selected"</#if> value="3">正在集成</option>
                    <option <#if user.integration == 4>selected="selected"</#if> value="4">已集成</option>
                </select>
             </td>
             <td><textarea id="feedback_${user.userId}">${user.feedback}</textarea></td>
             <td><textarea id="followUp_${user.userId}">${user.followUp}</textarea></td>
             <td><button onclick="saveInfo(${user.userId})">保存</button></td>             
           </tr>
        </#list>
         <#else>
        <tr><td colspan="26">YaDe,no recores</td></tr>
    </#if>
</table>
<p class="navigator page"></p>
<#else>
error:${result.message}
</#if>
<#else>
  <tr><td height="300" colspan="6" style="text-align:center;">暂无数据</td></tr>
</#if>