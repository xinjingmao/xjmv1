<table class="color">
    <tr><td>管理员</td>
    <td>添加时间</td>
    <td>操作</td></tr>
    <#if managers?size &gt; 0>
    
    <#list managers as m>
    <tr>
    <td>${m.managerId}</td>                    
    <td>${(m.addTime)}</td>
    <td><#if managerId != m.managerId><a class="delmanager" id="${m.managerId}">删除</a><#else><span>删除</span></#if></td>
    </tr>
    </#list>
    <#else>
        <tr><td colspan="2">暂无数据</td></tr>
    </#if>
</table>
