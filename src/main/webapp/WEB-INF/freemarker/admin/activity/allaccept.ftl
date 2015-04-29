<p class="navigator page"></p>
<div class="hide navigatorJson">${(result.object.navigator.htmlJson)!''}</div>
<table class="color" id="activity_table">
    <tr>
        <th>参加活动ID</th><th>APPID</th><th>活动ID</th>
        <th>推荐人ID</th><th>参加活动IP</th><th>参与时间</th><th>邀请积分</th><th>分享积分</th>
        <th>点击数</th><th>推荐次数</th><th>成功次数</th><th>失败次数</th>
    </tr>
  <#if result??>
<#if result.success>
<#assign paList=result.object.joinActlist>
    <#if paList?size &gt; 0>    	
        <#list paList as joinAct>
           <tr>
             <td>${joinAct.joinActivityId}</td>             
             <td>${joinAct.appId}</td>
             <td>${joinAct.activityId}</td>             
             <td>${joinAct.recommenderId}</td>
             <td>${joinAct.joinIp}</td>
             <td>${joinAct.participantTime}</td>             
             <td>${joinAct.invitePoint}</td>
             <td>${joinAct.point}</td>
             <td>${joinAct.clickCount}</td>             
             <td>${joinAct.authRecommendCount}</td>
             <td>${joinAct.successCount}</td>
             <td>${joinAct.failCount}</td>
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