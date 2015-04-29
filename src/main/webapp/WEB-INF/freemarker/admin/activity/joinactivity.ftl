<p class="navigator page"></p>
<div class="hide navigatorJson">${(result.object.navigator.htmlJson)!''}</div>
<table class="color" id="winaward_table">
    <tr>
        <th>接受者ID号</th><th>应用ID</th><th>应用名称</th>
        <th>活动ID</th><th>活动创建者</th>
        <th>推荐者ID</th><th>手机设备号</th><th>手机版本号</th>
        <th>手机机型</th><th>应用打开次数</th>
        <th>接受推荐时间</th><th>推荐途径</th>
    </tr>
<#if result??>
<#if result.success>
<#assign accList=result.object.audienceList>
    <#if accList?size &gt; 0>    	
        <#list accList as acceptor>
           <tr>
             <td>${acceptor.acceptId}</td>             
             <td>${acceptor.appId}</td>
             <td>${acceptor.appName}</td>
             <td>${acceptor.activityId}</td>   
             <td>${acceptor.activityOwner}</td>          
             <td>${acceptor.recommenderId}</td>          
             <td>${acceptor.imei}</td>
             <td>${acceptor.sysVersion}</td>
             <td>${acceptor.phoneType}</td>
             <td>${acceptor.activeCount}</td>
             <td>${acceptor.acceptTime}</td>
             <td>
             	<#if acceptor.channelId == 0>新浪微博
				<#elseif acceptor.channelId == 1>腾讯微博
				<#elseif acceptor.channelId == 2>QQ空间
				<#elseif acceptor.channelId == 3>微信好友
				<#elseif acceptor.channelId == 4>人人网
				<#elseif acceptor.channelId == 5>QQ
				<#elseif acceptor.channelId == 6>二维码
				<#elseif acceptor.channelId == 7>短信
				<#elseif acceptor.channelId == 8>邮件
				<#elseif acceptor.channelId == 9>复制链接
				<#elseif acceptor.channelId == 10>微信朋友圈
				<#elseif acceptor.channelId == 11>易信
				<#elseif acceptor.channelId == 12>易信朋友圈
				<#elseif acceptor.channelId == 13>开心网
				<#elseif acceptor.channelId == 14>微信收藏</#if>
             </td>
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
  <tr><td height="300" colspan="7" style="text-align:center;">暂无数据</td></tr>
</#if>