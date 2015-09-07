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
    
    <div class="col-md-6">
	<?php echo validation_errors('<div class="alert alert-danger" role="alert">', '</div>'); ?>
    </div>
  	<div class="col-md-10">
		<div class="page-header">  	
		    <?php if (!empty($progress)) { ?> 
		    <div class="col-md-2">
			    <div class="second circle">
			        <strong></strong>
				<span><small>COMPLETED</small></span>
			    </div>
			</div>
		    <?php } ?>
			<?php if ($questionnaires) { ?>
		    <h4>Questionnaires</h4>
			    <form id="form-questionnaire" class="form-horizontal" name="questionnaire" method="POST" action="<?php echo base_url('quest');?>">
				<table class="table table-responsive">
				  <thead>
				    <tr>
				      <th><strong>No</strong></th>
				      <th>Questions</th>
				      <th colspan="5">Options</th>
				    </tr>
				  </thead>
				  <tbody>
				  <?php 
				  $i=1;
				  foreach($questionnaires as $questionnaire) { ?>
			      	<tr>
						<th scope="row"><?php echo $i;?></th>
						<td><?php echo $questionnaire->questionnaire_text;?></td>                               
						<?php foreach ($questions as $question) { 
						  $j = 1;
						  if ($questionnaire->id === $question->questionnaire_id) { ?>
						  <td>
						    <div class="text-center">
					    		<?php if ($question->file_name) { ?>
				    			<div class="center-block">
					    			<img style="height:190px;margin:0 auto 10px auto;" src="<?php echo base_url('uploads/questionnaire/questions/'.$question->file_name);?>" class="img-thumbnail"/>
					    		</div>
					    		<?php } ?>
			  					<input type="radio" <?php echo ($fields['qrid_'.$question->questionnaire_id] == 'qsid_'.$question->id ? 'checked="checked"' : '');?> name="qrid_<?php echo $questionnaire->id;?>" value="qsid_<?php echo $question->id;?>"/><?php echo preg_replace('/(\D+.\:)/','',$question->question_text);?>
						    </div>
						    <?php //echo $errors['qrid_'.$question->questionnaire_id]; ?>
						  </td>
						  <?php 
						  }
						  $j++;
						} ?>
				      </tr>
				  <?php
				  $i++;
				  }
				  ?>
				  </tbody>
				</table>
				<div class="row">
				  <div class="text-center">
				      <button type="submit" name="submit" class="btn btn-primary">SUBMIT</button>
				  </div>
				</div>
			    </form>  
			<?php } else { ?>
			<h1>Hooray, you're done!!!! <small>Thanks for participating!</small></h1>
			<?php } ?>    
	    </div>  
	</div>
</div>