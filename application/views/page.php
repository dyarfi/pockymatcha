<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<script type="text/javascript">
window.onload = function() {
    FB.Canvas.setSize({ width: 810, height: 780 });
}
</script>
<div class="container">
    <div class="page-header">
        <?php 
        if ($menu->title && $menu->media) { echo '<img class="kisah-title" src="'.base_url('uploads/pages/'.$menu->media).'" alt="'.$menu->title.'">'; }  
        ?>
        <div class="mechanism">
             <?php
            if ($menu->title) { echo '<h2>'.$menu->title.'</h2>'; }
            ?>
            <?php if ($menu->synopsis) { ?>
            <div class="col-xs-7"><?php echo strip_tags($menu->synopsis);?></div>
            <?php
            }
            if ($pages) { ?>
                <div class="col-xs-5 sub-mekanisme submit-color">
                    <ul class="nav navbar-nav vag-font">
                    <?php foreach ($pages as $val) { ?>    
                        <li><a style="font-size:0.7em;" href="<?php echo base_url($menu->url.'/view/'.$val->url);?>"><?php echo $val->subject;?></a></li>
                    <?php } ?>
                    </ul>                            
                </div>    
                <?php
                }
            ?>
        <?php
        if ($menu->description) { echo $menu->description; }
        ?>
        </div>
    </div>
</div>