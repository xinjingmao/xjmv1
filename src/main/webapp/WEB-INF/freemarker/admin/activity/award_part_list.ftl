		
			<table class="color" id="awardTable">
			<tr class="award-list-tr">
				<th>奖品名称</th>
				<th>图片（长宽1:1）</th>
				<th>礼品总数 </th>
				<th>兑换积分</th>
				<th>是否需要物流</th>
				<th>操作</th>
			</tr>
			<#assign i = 0>
			<#list awardList as award>
			<tr class="award-list-tr" id="${award.awardId}">
				<input type="hidden" class="awardId" value="${award.awardId}">
				<td id="awardName${award.awardId}">${award.awardName}</td>
				<td >
					<p><img id="awardPicUrl${award.awardId}" style="width:80px;height:80px" src=${award.picUrl}></p>
				</td>
				<td id="awardCount${award.awardId}">${award.awardCount}</td>
				<td id="exchangePoint${award.awardId}">${award.exchangePoint}</td>
				
				<td id="needLogistics${award.awardId}">
				<#if award.needLogistics>是
				<#else>否</#if>
				</td>
				<td>
					<input class="delAward" type="button"  value="删除"/>
					<input class="editAward" type="button"  value="修改"/>
				</td>
			</tr>
			
			</#list>
			</table>
		
				
		<div>
		<h3>抽奖设置</h3>
		<div id="lottery-list">
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
			</#list>
			</table>
			<p>每次抽奖消耗 : ${awardConsume} 积分</p> 
			<div class="content-font" id="lottery-date">兑换截止日期：${endDate}</div>
			</div> 
			
			<div id="lottery-edit" style="display:none;">
			<input class="saveLottery" type="button"  value="保存"/>
			<table class="edit-table">
			<tr class="lottery-award-edit-tr">
				<th>编号</th>
				<th>图片（长宽1:1）</th>
				<th>名字 </th>
				<th>价值（积分） </th>
				<th>总数 </th>
				<th>概率（%）</th>
				<th>是否需要物流</th>
			</tr>
			
			<#list lotteryList as lottery>
			<tr class="lottery-award-edit-tr">
				<td>
					<span class="lottery-awardIndex">${lottery.awardIndex}</span>
				</td>
				<td>
					<p><img class="lotterypicUrl" style="width:80px;height:80px" src=${lottery.picUrl}></p>
					<form class="lottery-award-picture-upload" method="post" enctype="multipart/form-data">
					<input class="lottery-award-picture" type="file" name="lotterypic"  value=""/>
					<p class="lotterypicTip"></p>
					</form>
				</td>
				<td><input class="lottery-awardName" value="${lottery.awardName}" type="text" />
					<p class="lottery-awardNameTip"></p>
				</td>
				<td><input class="lottery-awardPoint" value="${lottery.awardPoint}" type="text" />
					<p class="lottery-awardPointTip"></p>
				</td>
				<td><input class="lottery-awardCount" value="${lottery.awardCount}" type="text" />
					<p class="lottery-awardCountTip"></p>
				</td>
				<td><input class="lottery-awardChance" value="${lottery.awardChance}" type="text" />
					<p class="lottery-awardChanceTip"></p>
				</td>
				<td><select class="lottery-needLogistics">
						<#if lottery.needLogistics>
						<option value="true" selected="selected">是</option>
						<option value="false">否</option>
						<#else><option value="true">是</option>
						<option value="false" selected="selected">否</option>
						</#if>   
					</select>
				</td>
			</tr>
			</#list>
			</table>
			<p>每次抽奖消耗  <input id="awardConsume" value="${awardConsume}" type="text" />积分</p> 
			<p class="calendar-time">
				<span>兑换截止日期：</span>
				<input type="text" id="exchangeDeadline" value="${endDate}">
				<img src="${imageRoot}/small_calendar.png" id="exchangeDeadlineBtn"/>
				<span>（兑换截止日期建议在活动结束一周以后）</span>				
			</p>
			<p id="exchangeDeadlineTip"></p>
			</div>
			</div>