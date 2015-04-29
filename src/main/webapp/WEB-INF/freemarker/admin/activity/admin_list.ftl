<p class="navigator page"></p>
<table class="color" id="admin_table">
    <tr>
        <th>用戶ID</th><th>Email</th><th>money</th><th>操作</th>
    </tr>
    <#if result??>
<#if result.success>
<#assign userList=result.object>
    <#if userList?size &gt; 0>    	
        <#list userList as user>
        <div class="hide navigatorJson">${(summary.navigator.htmlJson)!''}</div>
           <tr>
             <td>
             <a class="admin_id_select" href="javascript:;" adminId="${user.userId}"
              title="筛选用户">${user.userId}</a>
             </td>             
             <td>
              <a class="admin_email_select" href="javascript:;" adminEmail="${user.email}" title="筛选">${user.email}</a>
              </td>
             <td>${user.money}</td>
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
  <tr><td height="300" colspan="5" style="text-align:center;">暂无数据</td></tr>
</#if>