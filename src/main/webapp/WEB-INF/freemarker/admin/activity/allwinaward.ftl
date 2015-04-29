<p class="navigator page"></p>
<div class="hide navigatorJson">${(result.object.navigator.htmlJson)!''}</div>
<table class="color" id="winaward_table">
    <tr>
        <th>奖品兑换ID号</th><th>活动ID</th><th>参与者ID</th> <th>奖品名称</th><th>是否需要物流</th><th>消耗积分</th><th>获奖时间</th>
        <th>收货人姓名</th><th>qq号</th><th>收货人手机号</th><th>收货人地址</th><th>邮政编码</th><th>发放状态</th>
        <th>发货时间</th><th>发货人</th><th>订单号</th><th>物流公司</th><th>备注信息</th>
    </tr>
<#if result??>
<#if result.success>
<#assign winList=result.object.exchangeList>
    <#if winList?size &gt; 0>    	
        <#list winList as winner>
           <tr>
             <td>${winner.awardWinnerId}</td>             
             <td>${winner.activityId}</td>
             <td>${winner.recommenderId}</td>   
             <td>${winner.awardName}</td>          
             <td>
             	<#if winner.needLogistics>是<#else>否</#if>
             </td>          
             <td>${winner.point}</td>
             <td>${winner.winningTime}</td>
             <td>${winner.winnerName}</td>
             <td>${winner.qq}</td>
             <td>${winner.phoneNumber}</td>
             <td>${winner.winnerAddress}</td>
             <td>${winner.postcode}</td>             
             <td>
            	<#if winner.flag == 0>未填收货信息<#elseif winner.flag == 1>未发货<#elseif winner.flag == 2>已发货</#if> 
             </td>
             <td>${winner.shipTime}</td>   
             <td>${winner.shipper}</td>          
             <td>${winner.orderid}</td>          
             <td>${winner.logisticsCompany}</td>
             <td>${winner.remark}</td>             
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