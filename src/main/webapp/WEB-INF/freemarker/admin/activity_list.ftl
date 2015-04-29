<p class="page navigator"></p>
<div class="hide navigatorJson">${(result.object.navigator.htmlJson)!''}</div>
<table class="color" id="activity_table">
    <tr>
         <th>活动ID</th><th>活动拥有者</th><th>应用AppName</th>
        <th>活动名</th><th>活动预算</th><th>推广类型</th><th>获得一次奖励需要推荐的人数</th>
        <th>一次推荐奖励的数额</th><th>超过多少位用户成功接受推荐后,活动提前结束</th><th>每人限领多少金额</th>
        <th>已接受推荐的人数</th><th>是否设置抽奖活动</th><th>活动结束每人抽奖金额</th>
        <th>活动结束抽奖人数</th><th>有效受众</th><th>活动开始日期</th><th>活动结束日期</th>
        <th>参加人数</th><th>点击人数 </th><th>活动状态 </th><th>活动的真正结束时间</th>
        <th>总共需要充值的金额</th><th>活动余额</th><th>用户余额</th>
    </tr>
    <#if result??>
<#if result.success>
<#assign paList=result.object.palist>
    <#if paList?size &gt; 0>    	
        <#list paList as popularizeActivity>
           <tr>
             <td>
             <a href="${popularizeActivity.packgeUrl}" title="查看安装包" target="_blank">${popularizeActivity.activityId}</a>            
             <p>
                [<a class="winner_activity_a" href="javascript:;" activityId="${popularizeActivity.activityId}">获奖者详情筛选</a>]
             </p>
                </td> 
             <td>${popularizeActivity.activityOwner}
             [<a class="join_activity_a" href="javascript:;" appName="${popularizeActivity.appName}" 
                   activityBudget="${popularizeActivity.activityBudget}">参与活动详情筛选</a>]<br />
             </td>
             <td>${popularizeActivity.appName}
              [<a class="accept_activity_a" href="javascript:;" appId="${popularizeActivity.appId}" 
                  activityId="${popularizeActivity.activityId}">接受活动详情筛选</a>]<br /> </td>        
             <td>${popularizeActivity.activityName}</td>
             <td>${popularizeActivity.activityBudget}</td>
             <td>${popularizeActivity.activityType}</td>             
             <td>${popularizeActivity.activityParam1}</td>
             <td>${popularizeActivity.activityParam2}</td>
             <td>${popularizeActivity.activityParam3}</td>             
             <td>${popularizeActivity.onePersonMoneyLimit}</td>
             <td>${popularizeActivity.acceptCount}</td>
             <td>${popularizeActivity.isSetLottery}</td>             
             <td>${popularizeActivity.perLotteryMoney}</td>
             <td>${popularizeActivity.lotteryPeopleNum}</td>
             <td>${popularizeActivity.publicTag}</td>
             <td>${popularizeActivity.startDate}</td>
             <td>${popularizeActivity.endDate}</td>             
             <td>${popularizeActivity.joinCount}</td>
             <td>${popularizeActivity.clickCount}</td>
             <td id="${popularizeActivity.activityId}_status">${popularizeActivity.status}<#if popularizeActivity.status == 3><button class="updateStatus" id="${popularizeActivity.activityId}">审核通过</button></#if></td>
             <td>${popularizeActivity.realEndTime}</td>
             <td>${popularizeActivity.totalFee}</td>             
             <td>${popularizeActivity.remaining}</td>
             <td>${popularizeActivity.leftMoney}</td>
           </tr>
        </#list>
         <#else>
        <tr><td colspan="26">YaDe,no recores</td></tr>
    </#if>
</table>
<p class="page navigator"></p>

<#else>
error:${result.message}
</#if>
<#else>
  <tr><td height="300" colspan="5" style="text-align:center;">暂无数据</td></tr>
</#if>