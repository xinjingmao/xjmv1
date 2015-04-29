<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WeLcOmE-(AtiviTy)</title>
<#include "/admin/include/admin-css.html">  
<link rel="stylesheet" type="text/css" href="${cssRoot}/calendar/calendar.css" />
</head>
<body>
  <div id="admin_container">    
    <!-- header-->
    <#include "/admin/include/header.ftl">  
    	<div>
		   <a href="/admin/awardSet">奖品设置</a>  |  <a href="/admin/awardPage">奖品列表</a>   
		</div>
		<div class="form-group">
			<h3 class="small-title-font">活动奖品设置</h3>
		</div>
		请先输入需要设置奖品的活动ID <input type="text" id="activityId" />
		<div id="award-set-div" style="display:none;">
		<div id="activity-info"></div>
		<div class="form-group" id="award-set">	
			<input class="addAward" type="button" value="新增"/>
			<table class="table" id="awardTable">
			<tr class="award-list-tr">
				<th>奖品名称</th>
				<th>图片（长宽1:1）</th>
				<th>礼品总数 </th>
				<th>兑换积分</th>
				<th>是否需要物流</th>
				<th>操作</th>
			</tr>
			<tr class="award-list-tr">
				<td><input class="awardName" type="text" />
					<p class="awardNameTip"></p>
				</td>
				<td>
					<p><img class="awardPicUrl" style="width:80px;height:80px"></p>
					<form class="award-picture-upload" method="post" enctype="multipart/form-data">
					<input class="award-picture" type="file" name="awardPic"  value=""/>
					<p class="awardPicTip"></p>
					</form>
				</td>
				<td><input class="awardCount" type="text" />
					<p class="awardCountTip"></p>
				</td>
				<td><input class="exchangePoint" type="text" />
					<p class="exchangePointTip"></p>
				</td>
				<td><select class="needLogistics">
						<option value="true" selected="selected">是</option>
						<option value="false">否</option>
					</select>
				</td>
				<td>
					<input class="delAward" type="button"  value="删除"/>
				</td>
			</tr>
			</table>
			<p><font id="awardPointsTip" style="color:red;"></font></p>
			
		</div>		
		<div>
		<h3>抽奖设置</h3>
		<table class="table" id="lotteryAwardTable">
			<tr class="lottery-award-list-tr">
				<th>编号</th>
				<th>图片（长宽1:1）</th>
				<th>名字 </th>
				<th>价值（积分） </th>
				<th>总数 </th>
				<th>概率（%）</th>
				<th>是否需要物流</th>
			</tr>
			<tr class="lottery-award-list-tr">
				<td>
					<span class="lottery-awardIndex">1</span>
				</td>
				<td>
					<p><img class="lotterypicUrl" style="width:80px;height:80px"></p>
					<form class="lottery-award-picture-upload" method="post" enctype="multipart/form-data">
					<input class="lottery-award-picture" type="file" name="lotterypic"  value=""/>
					<p class="lotterypicTip"></p>
					</form>
				</td>
				<td><input class="lottery-awardName" type="text" />
					<p class="lottery-awardNameTip"></p>
				</td>
				<td><input class="lottery-awardPoint" type="text" />
					<p class="lottery-awardPointTip"></p>
				</td>
				<td><input class="lottery-awardCount" type="text" />
					<p class="lottery-awardCountTip"></p>
				</td>
				<td><input class="lottery-awardChance" type="text" />
					<p class="lottery-awardChanceTip"></p>
				</td>
				<td><select class="lottery-needLogistics">
						<option value="true" selected="selected">是</option>
						<option value="false">否</option>
					</select>
				</td>
			</tr>
			<tr class="lottery-award-list-tr">
				<td>
					<span class="lottery-awardIndex">2</span>
				</td>
				<td>
					<p><img class="lotterypicUrl" style="width:80px;height:80px"></p>
					<form class="lottery-award-picture-upload" method="post" enctype="multipart/form-data">
					<input class="lottery-award-picture" type="file" name="lotterypic"  value=""/>
					<p class="lotterypicTip"></p>
					</form>
				</td>
				<td><input class="lottery-awardName" type="text" />
					<p class="lottery-awardNameTip"></p>
				</td>
				<td><input class="lottery-awardPoint" type="text" />
					<p class="lottery-awardPointTip"></p>
				</td>
				<td><input class="lottery-awardCount" type="text" />
					<p class="lottery-awardCountTip"></p>
				</td>
				<td><input class="lottery-awardChance" type="text" />
					<p class="lottery-awardChanceTip"></p>
				</td>
				<td><select class="lottery-needLogistics">
						<option value="true" selected="selected">是</option>
						<option value="false">否</option>
					</select>
				</td>
			</tr>
			<tr class="lottery-award-list-tr">
				<td>
					<span class="lottery-awardIndex">3</span>
				</td>
				<td>
					<p><img class="lotterypicUrl" style="width:80px;height:80px"></p>
					<form class="lottery-award-picture-upload" method="post" enctype="multipart/form-data">
					<input class="lottery-award-picture" type="file" name="lotterypic"  value=""/>
					<p class="lotterypicTip"></p>
					</form>
				</td>
				<td><input class="lottery-awardName" type="text" />
					<p class="lottery-awardNameTip"></p>
				</td>
				<td><input class="lottery-awardPoint" type="text" />
					<p class="lottery-awardPointTip"></p>
				</td>
				<td><input class="lottery-awardCount" type="text" />
					<p class="lottery-awardCountTip"></p>
				</td>
				<td><input class="lottery-awardChance" type="text" />
					<p class="lottery-awardChanceTip"></p>
				</td>
				<td><select class="lottery-needLogistics">
						<option value="true" selected="selected">是</option>
						<option value="false">否</option>
					</select>
				</td>
			</tr>
			<tr class="lottery-award-list-tr">
				<td>
					<span class="lottery-awardIndex">4</span>
				</td>
				<td>
					<p><img class="lotterypicUrl" style="width:80px;height:80px"></p>
					<form class="lottery-award-picture-upload" method="post" enctype="multipart/form-data">
					<input class="lottery-award-picture" type="file" name="lotterypic"  value=""/>
					<p class="lotterypicTip"></p>
					</form>
				</td>
				<td><input class="lottery-awardName" type="text" />
					<p class="lottery-awardNameTip"></p>
				</td>
				<td><input class="lottery-awardPoint" type="text" />
					<p class="lottery-awardPointTip"></p>
				</td>
				<td><input class="lottery-awardCount" type="text" />
					<p class="lottery-awardCountTip"></p>
				</td>
				<td><input class="lottery-awardChance" type="text" />
					<p class="lottery-awardChanceTip"></p>
				</td>
				<td><select class="lottery-needLogistics">
						<option value="true" selected="selected">是</option>
						<option value="false">否</option>
					</select>
				</td>
			</tr>
			<tr class="lottery-award-list-tr">
				<td>
					<span class="lottery-awardIndex">5</span>
				</td>
				<td>
					<p><img class="lotterypicUrl" style="width:80px;height:80px"></p>
					<form class="lottery-award-picture-upload" method="post" enctype="multipart/form-data">
					<input class="lottery-award-picture" type="file" name="lotterypic"  value=""/>
					<p class="lotterypicTip"></p>
					</form>
				</td>
				<td><input class="lottery-awardName" type="text" />
					<p class="lottery-awardNameTip"></p>
				</td>
				<td><input class="lottery-awardPoint" type="text" />
					<p class="lottery-awardPointTip"></p>
				</td>
				<td><input class="lottery-awardCount" type="text" />
					<p class="lottery-awardCountTip"></p>
				</td>
				<td><input class="lottery-awardChance" type="text" />
					<p class="lottery-awardChanceTip"></p>
				</td>
				<td><select class="lottery-needLogistics">
						<option value="true" selected="selected">是</option>
						<option value="false">否</option>
					</select>
				</td>
			</tr>
			<tr class="lottery-award-list-tr">
				<td>
					<span class="lottery-awardIndex">6</span>
				</td>
				<td>
					<p><img class="lotterypicUrl" style="width:80px;height:80px"></p>
					<form class="lottery-award-picture-upload" method="post" enctype="multipart/form-data">
					<input class="lottery-award-picture" type="file" name="lotterypic"  value=""/>
					<p class="lotterypicTip"></p>
					</form>
				</td>
				<td><input class="lottery-awardName" type="text" />
					<p class="lottery-awardNameTip"></p>
				</td>
				<td><input class="lottery-awardPoint" type="text" />
					<p class="lottery-awardPointTip"></p>
				</td>
				<td><input class="lottery-awardCount" type="text" />
					<p class="lottery-awardCountTip"></p>
				</td>
				<td><input class="lottery-awardChance" type="text" />
					<p class="lottery-awardChanceTip"></p>
				</td>
				<td><select class="lottery-needLogistics">
						<option value="true" selected="selected">是</option>
						<option value="false">否</option>
					</select>
				</td>
			</tr>
			<tr class="lottery-award-list-tr">
				<td>
					<span class="lottery-awardIndex">7</span>
				</td>
				<td>
					<p><img class="lotterypicUrl" style="width:80px;height:80px"></p>
					<form class="lottery-award-picture-upload" method="post" enctype="multipart/form-data">
					<input class="lottery-award-picture" type="file" name="lotterypic"  value=""/>
					<p class="lotterypicTip"></p>
					</form>
				</td>
				<td><input class="lottery-awardName" type="text" />
					<p class="lottery-awardNameTip"></p>
				</td>
				<td><input class="lottery-awardPoint" type="text" />
					<p class="lottery-awardPointTip"></p>
				</td>
				<td><input class="lottery-awardCount" type="text" />
					<p class="lottery-awardCountTip"></p>
				</td>
				<td><input class="lottery-awardChance" type="text" />
					<p class="lottery-awardChanceTip"></p>
				</td>
				<td><select class="lottery-needLogistics">
						<option value="true" selected="selected">是</option>
						<option value="false">否</option>
					</select>
				</td>
			</tr>
			<tr class="lottery-award-list-tr">
				<td>
					<span class="lottery-awardIndex">8</span>
				</td>
				<td>
					<p><img class="lotterypicUrl" style="width:80px;height:80px"></p>
					<form class="lottery-award-picture-upload" method="post" enctype="multipart/form-data">
					<input class="lottery-award-picture" type="file" name="lotterypic"  value=""/>
					<p class="lotterypicTip"></p>
					</form>
				</td>
				<td><input class="lottery-awardName" type="text" />
					<p class="lottery-awardNameTip"></p>
				</td>
				<td><input class="lottery-awardPoint" type="text" />
					<p class="lottery-awardPointTip"></p>
				</td>
				<td><input class="lottery-awardCount" type="text" />
					<p class="lottery-awardCountTip"></p>
				</td>
				<td><input class="lottery-awardChance" type="text" />
					<p class="lottery-awardChanceTip"></p>
				</td>
				<td><select class="lottery-needLogistics">
						<option value="true" selected="selected">是</option>
						<option value="false">否</option>
					</select>
				</td>
			</tr>
			</table>
			<p>每次抽奖消耗  <input class="awardConsume" type="text" />积分</p> 
			<p class="calendar-time">
				<span>兑换截止日期：</span>
				<input type="text" id="exchangeDeadline">
				<img src="${imageRoot}/small_calendar.png" id="exchangeDeadlineBtn"/>
				<span>（兑换截止日期建议在活动结束一周以后）</span>				
			</p>
			<p id="exchangeDeadlineTip"></p>
		</div>
		<div>
			<input class="save-award-set" type="button"  value="保存"/>
		</div>
	</div>
    <#include "/admin/include/footer.ftl">
  </div>
</body>
<#include "/include/js_basic.html">
<script type="text/javascript" src="${jsRoot}/calendar/calendar.js"></script>
<script type="text/javascript" src="${jsRoot}/calendar/cn.js"></script>
<script type="text/javascript" src="${jsRoot}/jquery-form.js"></script>
<script type="text/javascript" src="${jsRoot}/admin/award_set.js"></script>

</html>
