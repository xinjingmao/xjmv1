<p class="navigator page"></p>
<div class="hide navigatorJson">${(summary.navigator.htmlJson)!''}</div>
	<p>商品列表</p>
	<table  class="color">
		<tr>
			<th colspan="2">商品信息</th>
			<th>中奖概率</th>
			<th>数量</th>
			<th>有效期</th>
			<th>操作</th>
		</tr>
		<tbody>
			<#assign awardList = summary.awardList>
			<#if awardList?size &gt; 0>
				<#list awardList as item>
				<tr>
					<td><img src="${item.picUrl}" style="width: 116px; height: 70px;"></td>
					<td><p>${item.awardName}</p>
					<p>${item.exchangePoint}积分</p>
					<p><#if item.awardType == 1>抽奖<#else>兑换</#if></p>
					</td>
					<td><#if item.awardType == 1>${item.chance}%<#else>/</#if></td>
					<td>${item.awardCount}</td>
					<td><#if item.validDate??>${item.validDate}<#else>/</#if></td>
					<td>
					<a id="s_${item.awardId}" class="show_btn" target="_blank" href="/activity/award_preview?id=${item.awardId}&type=2">预览</a><br>
					<a id="e_${item.awardId}" class="edit_btn">编辑</a><br>                                                                                                                                     
					<a id="d_${item.awardId}" class="del_btn">删除</a>
					</td>
				</tr>
				</#list>
			<#else>
			<tr><td height="100" colspan="6" style="text-align:center;">暂无商品，去添加</td></tr>
			</#if>
		</tbody>
	</table>
