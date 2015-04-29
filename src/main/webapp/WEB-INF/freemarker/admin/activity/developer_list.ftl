<p class="navigator page"></p>
<div class="hide navigatorJson">${(result.object.navigator.htmlJson)!''}</div>
<table class="color" id="developer_table">
    <tr>
        <th>推荐者ID</th><th>卡号</th><th>手机设备号</th><th>系统版本号</th>
        <th>手机机型</th><th>帐户总积分</th>
    </tr>
<#if result??>
<#if result.success>
<#assign developerList=result.object.participantList>
    <#if developerList?size &gt; 0>      
        <#list developerList as developer>
           <tr>
             <td>${developer.recommenderId}</td>             
             <td>${developer.cardNum}</td>
             <td>${developer.imei}</td>             
             <td>${developer.sysVersion}</td>
             <td>${developer.phoneType}</td>
             <td>${developer.totalPoint}</td>             
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