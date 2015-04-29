<#if result.success>
<#assign summary=result.object>
<#assign statistics=summary.statistics>
<#setting number_format="">
<div class="hide navigatorJson">${(summary.navigator.htmlJson)!''}</div>
<p class="page navigator"></p>
<table class="color" id="statistics_table">
    <tr>
        <th>统计时间</th><th>总订购用户</th><th>总付费用户</th><th>总付费金额</th>
        <th>创建的总活动</th><th>总进行中的活动</th><th>总等待中的活动</th>
        <th>总已结束的活动</th><th>总浏览活动次数</th><th>总参与活动次数</th><th>总转发活动次数</th>
        <th>总优惠券获奖信息(人/金额)</th><th>总商品获奖信息(人/金额)</th>
    </tr>
    <#if statistics?size &gt; 0>
        <#list statistics as sys>        
        <tr>  
        	<td>${(sys.statisticTime)?substring(0,19)}</td>
        	<td>${sys.totalCustomer}</td><td>${sys.totalPayCustomer}</td>
        	<td>${(sys.totalPayFee)/100}</td><td>${sys.totalActivity}</td>
        	<td>${sys.totalOngoingActivity}</td><td>${sys.totalWaitingActivity}</td>
        	<td>${sys.totalEndedActivity}</td><td>${sys.totalViewActivity}</td>
        	<td>${sys.totalJoinActivity}</td><td>${sys.totalZhuanfaActivity}</td>
        	<td>(${sys.totalCouponWinner})/(${sys.totalCouponPrice})</td>
        	<td>(${sys.totalItemWinner})/(${sys.totalItemPrice})</td>
        </tr>
        </#list>
    <#else>
        <tr><td colspan="12">YaDe,no recores</td></tr>
    </#if>
</table>
<p class="page navigator"></p>
<#else>
error:${result.message}
</#if>