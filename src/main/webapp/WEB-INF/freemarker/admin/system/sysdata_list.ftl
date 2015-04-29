<p class="navigator page"></p>
<div class="hide navigatorJson">${(result.object.navigator.htmlJson)!''}</div>
<table class="color" id="sysdata_table">
    <tr>
        <th>统计时间</th><th>应用数 </th><#--<th>活动数</th>--><th>分享数</th><th>点击数</th><#--<th>回流数</th>-->
  </tr>
<#if result??>
<#if result.success>
<#assign dataList=result.object.dataList>
    <#if dataList?size &gt; 0>      
        <#list dataList as data>
           <tr>
             <td>${data.statisticTime}</td>
             <td>${data.totalApp} <#--/ ${data.totalUploadApp}--></td>             
             <#--
             <td>${data.totalActivity}</td>
             -->
             <td>${data.totalShareCount}</td>             
             <td>${data.totalClickCount}</td>
             <#--
             <td>${data.totalAcceptCount}</td>
             -->             
           </tr>
        </#list>
         <#else>
        <tr><td colspan="6">YaDe,no recores</td></tr>
    </#if>
</table>
<p class="navigator page"></p>
<#else>
error:${result.message}
</#if>
<#else>
  <tr><td height="300" colspan="6" style="text-align:center;">暂无数据</td></tr>
</#if>
