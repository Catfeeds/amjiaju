<template file="Wap/header.php" />
<div class="content">
    <div class="about">
        <h1>{$title}</h1>
        <center>
        </center>
        <span class="picContent">
                {$content}
            </span>
    </div>
</div>
<template file="Wap/footer.php" />
<script tylpe="text/javascript">

    $('.picContent').find('img').css({'width': '100%', 'height': 'auto', 'border': 0});

</script>