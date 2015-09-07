<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>


<style type="text/css">
.circle {
    width: 100px;
    margin: 6px 6px 20px;
    display: inline-block;
    position: relative;
    text-align: center;
    line-height: 1.2;
}
.circle canvas {
    vertical-align: top;
}
.circle strong {
    position: absolute;
    top: 30px;
    left: 0;
    width: 100%;
    text-align: center;
    line-height: 40px;
    font-size: 30px;
}
.circle strong i {
    font-style: normal;
    font-size: 0.6em;
    font-weight: normal;
}
.circle span {
    display: block;
    color: #aaa;
    margin-top: 12px;
}
</style>
<div class="container-fluid">    
  	<div class="col-md-12">
		<div class="page-header">  	
		    <?php if (!empty($progress)) { ?> 
		    <div class="col-md-12 center-block text-center">
			    <div class="second circle">
			        <strong></strong>
					<span><small>COMPLETED</small></span>
			    </div>
			</div>
		    <?php } ?>
			<div class="col-md-12"><?php echo validation_errors('<div class="alert alert-danger" role="alert">', '</div>'); ?></div>
			<?php if ($questionnaires) { ?>
				<div class="col-md-12">
		    	<!-- <h4>Questionnaires</h4> -->
			    <form id="form-questionnaire" class="form-horizontal" name="questionnaire" method="POST" action="<?php echo base_url('quest');?>">
				  <?php 
				  $i=1;
				  foreach($questionnaires as $questionnaire) { ?>
			      	<div class="container-fluid">
						<h1><?php echo $questionnaire->questionnaire_text;?></h1>
						<ul class="list-inline">
						<?php foreach ($questions as $question) { 
						  $j = 1;
						  if ($questionnaire->id === $question->questionnaire_id) { ?>
						  <li>
						    <div class="text-center">
					    		<?php if ($question->file_name) { ?>
				    			<div class="center-block">
					    			<img style="height:190px;margin:0 auto 10px auto;" src="<?php echo base_url('uploads/questionnaire/questions/'.$question->file_name);?>" class="img-thumbnail"/>
					    		</div>
					    		<?php } ?>
			  					<input type="radio" <?php echo ($fields['qrid_'.$question->questionnaire_id] == 'qsid_'.$question->id ? 'checked="checked"' : '');?> name="qrid_<?php echo $questionnaire->id;?>" value="qsid_<?php echo $question->id;?>"/><h3><?php echo preg_replace('/(\D+.\:)/','',$question->question_text);?></h3>
						    </div>
						    <?php //echo $errors['qrid_'.$question->questionnaire_id]; ?>
						  </li>
						  <?php 
						  }
						  $j++;
						} ?>
						</ul>
				      </div>
				  <?php
				  $i++;
				  }
				  ?>
					<div class="row">
					  <div class="text-center">
					      <button type="submit" name="submit" class="btn btn-primary btn-lg">SUBMIT</button>
					  </div>
					</div>
			    </form>  
				</div>
			<?php } else { ?>
			<div class="page-header">	
				<h1>Hooray, you're done!!!! <small>Thanks for participating!</small></h1>
			</div>	
			<?php } ?>    
	    </div>  
	</div>
</div>