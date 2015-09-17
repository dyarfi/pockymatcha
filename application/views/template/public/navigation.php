<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top hidden" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- <a class="navbar-brand" href="#">Home</a> -->
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                  <li class="<?php echo ($this->uri->uri_string() == '') ? 'active' :'';?>"><a href="<?php echo base_url();?>">Home</a></li>
                  <li class="<?php echo ($this->uri->uri_string() == 'read/mechanism' || $this->uri->segment(1) == 'mechanism') ? 'active' :'';?>"><a href="<?php echo base_url('read/mechanism');?>">Mekanisme</a></li>
                  <li class="<?php echo ($this->uri->segment(1) == 'quest' || $this->uri->segment(2) == 'quest') ? 'active' :'';?>"><a href="<?php echo base_url('quest');?>">Daftar</a></li>            
                  <li class="<?php echo ($this->uri->uri_string() == 'read/prize') ? 'active' :'';?>"><a href="<?php echo base_url('read/prize');?>">Hadiah</a></li>
                  <!--li class="<?php echo ($this->uri->segment(1) == 'photo_gallery') ? 'active' :'';?>"><a href="<?php echo base_url('photo_gallery');?>">Galeri</a></li-->
                  <li class="<?php echo ($this->uri->uri_string() == 'read/terms') ? 'active' :'';?>"><a href="<?php echo base_url('read/terms');?>">Syarat &amp; Ketentuan</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>