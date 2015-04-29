<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WeLcOmE-(System)</title>
<#include "/admin/include/admin-css.html"> 	
</head>
<body>    
    <div style="margin:33px">
        <a href="javascript:;" id="reinit_sys_config_a">重新读取zf/sys-config.xml文件信息</a>  
        [[[[]]]]]]]]]]
        <a href="javascript:;" id="reinit_order_config_a">重新读取版本配置信息(zf/order-config.xml文件)</a>
        [[[[]]]]]]]]]]
        <a href="javascript:;" id="reinit_cacheinfo_config_a">重新读取缓存配置信息(zf/cache-info-config.xml文件)</a>             
    </div>    
    <div id="system_config_content"> 
       <ul class="u_sub_nav" style="clear:both" id="horizontal_nav_ul">
            <li><a href="#zf_config_div">zf/zf-config.xml</a></li>
            <li><a href="#sys_config_div">zf/sys-config.xml</a></li>
            <li><a href="#order_config_div">zf/order-config.xml</a></li>
            <li><a href="#cache_info_config_div">zf/cache-info-config.xml</a></li>
       </ul>
        
       <#assign maps = result.object>      
       <div id="zf_config_div" class="u_content">
            <pre>${(maps.zfConfig)?html}</pre>
       </div>        
       <div id="sys_config_div" class="hide u_content">
            <pre>${(maps.sysConfig)?html}</pre>
       </div>
       <div id="order_config_div" class="hide u_content">
            <pre>${(maps.orderConfig)?html}</pre>
       </div>
       <div id="cache_info_config_div" class="hide u_content">
            <pre>${(maps.cacheInfoConfig)?html}</pre>
       </div>      
    </div>    
</body>
<#include "/include/js_basic.html">
<script type="text/javascript" src="${jsRoot}/admin/config.js"></script>
</html>
