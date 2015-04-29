<input class="editLottery" type="button"  value="修改"/>
<table class="table">
<tr class="lottery-award-list-tr">
	<th>编号</th>
	<th>图片（长宽1:1）</th>
	<th>名字 </th>
	<th>价值（积分） </th>
	<th>总数 </th>
	<th>概率（%）</th>
	<th>是否需要物流</th>
</tr>
<#assign i = 0>
<#list lotteryList as lottery>
<tr class="lottery-award-list-tr">
	<td>
		<span class="lottery-awardIndex">${lottery.awardIndex}</span>
	</td>
	<td>
		<p><img class="lotterypicUrl" style="width:80px;height:80px" src=${lottery.picUrl}></p>
	</td>
	<td>${lottery.awardName}
	</td>
	<td>${lottery.awardPoint}
	</td>
	<td>${lottery.awardCount}
	</td>
	<td>${lottery.awardChance}
	</td>
	<td>
	<#if lottery.needLogistics>是
	<#else>否</#if>
	</td>
</tr>
<#if i = lotteryList?size - 1>
</table>
<p>每次抽奖消耗 : ${lottery.awardConsume} 积分</p> 
<div class="content-font" id="lottery-date">兑换截止日期：${lottery.endDate}</div>
</#if>
<#assign i = i + 1>
</#list>
			