<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<Admintemplate file="Common/Head"/>
<body>
<div class="wrap">
  <div id="home_toptip"></div>
  <h2 class="h_a">留言详情</h2>
  <div class="home_info">
    <ul>
        <li> <em>姓名：</em> <span>{$message.name}</span> </li>
        <li> <em>电话：</em> <span>{$message.telephone}</span> </li>
        <li> <em>Eamil：</em> <span>{$message.email}</span> </li>
        <li> <em>留言：</em> <span>{$message.info}</span> </li>
    </ul>
  </div>
</div>

</body>
</html>