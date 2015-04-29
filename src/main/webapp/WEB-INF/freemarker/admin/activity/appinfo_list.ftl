<a href="/admin/app/exportExcel" target="_blank"><button id="exportApp">导出Excel</button></a>
<p class="navigator page"></p> 
<div class="hide navigatorJson">${(result.object.navigator.htmlJson)!''}</div>
<table class="color" id="appinfo_table">
    <tr>
        <th>应用ID</th><th>应用名</th><th>应用logo</th><th>app拥有者</th><th>联系QQ</th><th>平台类型</th><#-- <th>上传App的状态</th> -->
        <th>下载地址  android</th><#--<th>下载地址 ios</th>--><th>应用简介</th>
        <th>应用类型</th><th>应用标签</th><th>主要受众</th>
        <th>应用推出时间</th><#--<th>sdk激活状态</th>--><th>分享数</th><th>点击数</th>
        <#-- <th>回流数</th> --><th>应用创建时间</th>
  </tr>
<#if result??>
<#if result.success>
<#assign appList=result.object.appList>
    <#if appList?size &gt; 0>      
        <#list appList as appinfo>
        <#assign shareCount=appinfo.shareCount>
        <#assign clickCount=appinfo.clickCount>
        
           <tr>
           <td><a class="app_id_select" href="javascript:;">${appinfo.appId}</a></td>       
           <td><a class="app_Name_select" href="javascript:;">${appinfo.appName}</a></br>
           <button class="activate_act" id="${appinfo.appId}-${appinfo.appName}-${appinfo.appOwner}">开通套餐</button></td>
           <td><img src="${appinfo.logoURL}" style="width:80px;height:80px;"/></td>    
           <td>
           		<a class="app_Owner_select" href="javascript:;">${appinfo.appOwner}</a> </br>
           		
           		<a class="to_app_page"  href="/admin/manager/appOwner?email=${appinfo.appOwner}" target="_blank">[进入后台]</a></br>
           		<a href="/email/edit?mail=${appinfo.appOwner}" target="_blank">[发邮件]</a>
           </td>    
           <td>${appinfo.qq}</td>           
             <td>${appinfo.platform}</td>
             <#--
             <td>
             	<#if appinfo.isUpload &gt; 0>已上传
             	<#else>未上传</#if>
			       </td>
			 -->
             <td>${appinfo.downloadURLAD}</td>
             <#--
             <td>${appinfo.downloadURLIOS}</td>
             -->           
             <td>
             <div class="text-overflow">              
                ${appinfo.appDescription}
                </div>
             </td>
             
             <td>${appinfo.appType}</td>
             <td>${appinfo.appLabel}</td>             
             <td>${appinfo.mainUser}</td>
             <td>${appinfo.releaseTime}</td>
             <#--             
             <td>${appinfo.isSdkActivated}</td>
             -->
             <td>${shareCount}</td>
             <td>${clickCount}</td>
             <#--
             <td>${appinfo.acceptCount}</td>
             -->
          <td><a class="app_createTime_select" href="javascript:;">${appinfo.createTime}</a></td>    
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
  <tr><td height="300" colspan="26" style="text-align:center;">暂无数据</td></tr>
</#if>