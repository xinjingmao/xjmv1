
	<ul>
		<form method="post" id="award_form">
		<input type="hidden" value="${award.awardId}" id="awardId" name="awardId">
		<input type="hidden" value="${award.awardType}" id="awardType"  name="awardType" >
		<li>
			<label>商品名：</label>
			<input  name="awardName" id="awardName" value="${award.awardName}" size="50" style="width:390px" placeholder="商品在积分商城的展示名称，建议8个字以内" />
		</li>
		<li>
			<label>商品副标题：</label>
			<input  name="subtitle" type="text" id="subtitle" value="${award.subtitle}" size="50" placeholder="商品在积分商城列表页的附加说明，建议16个字以内" style="width:366px" />
		</li>
		<li>
			<label>详细说明：</label>
			<div class="edit_box">
				<textarea name="description" id="description" placeholder="这里请输入该商品的详细介绍，比如兑换规则、使用方式、发货说明等" style="width:440px;  max-width:440px; ">${award.description}</textarea>
			</div>
		</li>
		<li>
			<label>消耗积分：</label>
			<input name="exchangePoint"  id="exchangePoint" value="${award.exchangePoint}"  type="text"  size="50" placeholder="兑换该商品需要消耗多少积分" style="width:390px" />
		</li>
		<li>
			<label>数量：</label>
			<input name="awardCount" id="awardCount" value="${award.awardCount}"  type="text" size="50" placeholder="该商品的库存数量，用作展示" style="width:390px" />
		</li>
		<#if award.awardType == 1>
		<li>
			<label>开奖类型：</label>
			<select name="openType" id="openType">
        	<option selected="selected" value="1">即时开奖</option>
        	</select>
		</li>
		<li>
			<label>中奖概率：</label>
			<input name="chance" id="chance" type="text"  value="${award.chance}" size="50" placeholder="中奖概率会在商品页面显示，以示公正透明" style="width:390px" />
		</li>
		</#if>
		<li>
			<label>需要物流：</label>
			<select name="needLogistics" id="">
        	<option <#if !award.needLogistics>selected="selected"</#if> value="false">否</option>
        	<option <#if award.needLogistics>selected="selected"</#if> value="true">是</option>
        	</select>
		</li>
		<li>
			<label>有效期限：</label>
			<input name="validDate" type="data" id="validDate" value="${award.validDate}" size="50" style="width:360px" />
			<img src="${imageRoot}/small_calendar.png" id="timeBtn"/>
		</li>
		</form>
		<li>
			<label>缩略图：</label>
			<div>
				<div style="width:128px; height:82px;">
					<img id="picUrl" name="picUrl" style="width:116px; height:70px;" src="${award.picUrl}" />
				</div>
				<div style="left:250px;" >
					<form id="image1_f" method="post" enctype="multipart/form-data">
					<button type="button" class="up_btn" onclick="image1.click()">选择上传</button>
					<input type="file" style="display:none" name="imgfile" id="image1" accept="image/gif,image/jpeg,image/png">
					<p>图标大小为225像素*140像素，建议png格式</p>
					</form>
				</div>
			</div>			
		</li>
		<li style="width:100%">
			<label>详情图：</label>
			<div>
				<div style="width:162px; height:82px;">
					<img id="bigImage" name="bigImage" style="width:150px; height:70px;" src="${award.bigImage}" />
				</div>
				<div style="left:250px;" >
					<form id="image2_f" method="post" enctype="multipart/form-data">
					<button type="button"  onclick="image2.click()">选择上传</button>
					<input type="file" style="display:none" name="imgfile" id="image2" accept="image/gif,image/jpeg,image/png">
					<p>图标大小为640像素*300像素，建议png格式</p>
					</form>
				</div>
			</div>
		</li>
		
		<li>
			<button id="save_btn">修改</button>  <button id="cancel_btn">取消</button>
		</li>
	</ul>
