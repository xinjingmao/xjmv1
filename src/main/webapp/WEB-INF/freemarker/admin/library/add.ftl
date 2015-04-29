<ul>
	<form method="post" id="award_form">
	<li>
		<label>商品名：</label>
		<input  name="awardName" id="awardName" value="" size="50" style="width:390px" placeholder="商品在积分商城的展示名称，建议8个字以内" />
	</li>
	<li>
		<label>商品副标题：</label>
		<input  name="subtitle" type="text" id="subtitle" value="" size="50" placeholder="商品在积分商城列表页的附加说明，建议16个字以内" style="width:366px" />
	</li>
	<li>
		<label>详细说明：</label>
		<div class="edit_box">
			<textarea name="description" id="description"  placeholder="这里请输入该商品的详细介绍，比如兑换规则、使用方式、发货说明等" style="width:440px;  max-width:440px; "></textarea>
		</div>
	</li>
	<li>
		<label>消耗积分：</label>
		<input name="exchangePoint" id="exchangePoint" value=""  type="text"  size="50" placeholder="兑换该商品需要消耗多少积分" style="width:390px" />
	</li>
	<li>
		<label>数量：</label>
		<input name="awardCount" value="" id="awardCount" type="text" size="50" placeholder="该商品的库存数量，用作展示" style="width:390px" />
	</li>
	<li>
		<label>奖品用途：</label>
		<input type="radio" name="awardType" value="1" >抽奖
		<input type="radio" name="awardType" value="2" checked>兑换
	</li>
	<div id="not_need" style="display:none;">
	<li>
		<label>开奖类型：</label>
		<select name="openType">
    	<option selected="selected" value="1">即时开奖</option>
    	</select>
	</li>
	<li>
		<label>中奖概率：</label>
		<input name="chance" id="chance"  type="text"  value="" size="50" placeholder="中奖概率会在商品页面显示，以示公正透明" style="width:390px" />
	</li>
	</div>
	<li>
		<label>需要物流：</label>
		<select name="needLogistics" id="">
    	<option selected="selected" value="false">否</option>
    	<option value="true">是</option>
    	</select>
	</li>
	<li>
		<label>有效期限：</label>
		<input name="validDate" type="data" id="validDate" size="50" style="width:360px" />
		<img src="${imageRoot}/small_calendar.png" id="timeBtn"/>
	</li>
	</form>
	<li>
		<label>缩略图：</label>
		<div>
			<div style="width:128px; height:82px;">
				<img id="picUrl" name="picUrl" width="116px" height="70px"/>
			</div>
			<div style="left:250px;" >
				<label class="imgerror" id="img1_tip"></label>
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
			<div style="width:128px; height:82px;">
				<img id="bigImage" name="bigImage" width="150px" height="70px"/>
			</div>
			<div style="left:250px;" >
				<label class="imgerror" id="img2_tip"></label>
				<form id="image2_f" method="post" enctype="multipart/form-data">
				<button type="button"  onclick="image2.click()">选择上传</button>
				<input type="file" style="display:none" name="imgfile" id="image2" accept="image/gif,image/jpeg,image/png">
				<p>图标大小为640像素*300像素，建议png格式</p>
				</form>
			</div>
		</div>
	</li>
	
	<li>
		<button id="add_btn">添加</button> 
	</li>
</ul>