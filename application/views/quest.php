<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<script type="text/javascript">
window.onload = function() {
    FB.Canvas.setSize({ width: 810, height: 900 });
    // Place following code after FB.init call.
    function onLogin(response) {
      if (response.status == 'connected') {
        FB.api('/me?fields=first_name', function(data) {
          //var welcomeBlock = document.getElementById('fb-welcome');
          //welcomeBlock.innerHTML = 'Hello, ' + data.first_name + '!';
		  <?php /*if ( $this->participant == '') { ?>
		  var url = '<?php echo base_url("hauth/login/Facebook") ?>';
                var form = $('<form action="' + url + '" method="post">' +
                        '<input type="hidden" name="signed_request" value="' + response.authResponse.signedRequest + '" />' +
                        '</form>');
                $('body').append(form);
                $(form).submit();
		  <?php }*/ ?>	
        });
      }
    }
    FB.getLoginStatus(function(response) {
      // Check login status on load, and if the user is
      // already logged in, go directly to the welcome message.
      if (response.status == 'connected') {
        onLogin(response);
      } else {
        // Otherwise, show Login dialog first.
        FB.login(function(response) {
            // handle the response
            if (response.status == 'connected') {
                var url = '<?php echo base_url("hauth/login/Facebook") ?>';
                var form = $('<form action="' + url + '" method="post">' +
                        '<input type="hidden" name="signed_request" value="' + response.authResponse.signedRequest + '" />' +
                        '</form>');
                $('body').append(form);
                $(form).submit();
            } else {
                top.location.reload();
            }
            console.log(response);
        }, {scope: 'read_stream,email,user_friends'});
        // Additional initialization code here
      }
    });
    //FB.AppEvents.activateApp();
    //FB.AppEvents.logEvent('account');    
    //console.log( FB.getLoginStatus());
}
</script>
<div class="container">
     <div class="center-block">
        <h2 class="headline">Di mana tempat paling unik nikmati <big>Pocky Matcha</big> ala kamu? Jawab kuis ini untuk tahu jawabannya.</h2>
    </div>
    <!-- Page Content -->
    <div class="row-fluid">
        <div class="center-block">
            <div class="col-lg-12 text-center ostrich_sansblack">
                <div class="center-block clearfix main-handler">
                    <div class="col-lg-12 col-md-12 col-xs-12">                		
    					<div class="col-lg-12 col-md-12 col-xs-12 error-handler ostrich_sansblack">
                            <?php if (!empty($progress)) { ?> 
                            <div class="col-md-12 center-block text-center">
                                <div class="second circle">
                                    <strong></strong>
                                    <span><small>COMPLETED</small></span>
                                </div>
                            </div>
                            <?php } ?>
                            <div class="clearfix"></div>
                            <?php echo validation_errors('<div class="alert alert-danger" role="alert"><span>', '</span></div>'); ?>
                        </div>
                        <h3 class="quiz-head">Pertanyaan Kuis It’s Matcha Time</h3>
                        <div class="row-fluid">
    						<?php if ($questionnaires) { ?>
    								<div class="row">
    						    	<!-- <h4>Questionnaires</h4> -->
    							    <form id="form-questionnaire" class="form-inline form-quiz-pocky" name="questionnaire" method="POST" action="<?php echo base_url('quest');?>">
    							    	<ol class="text-left">
    									  <?php 
    									  $i=1;
    									  foreach($questionnaires as $questionnaire) { ?>
    									   <li>
    						                    <h3><?php echo $questionnaire->questionnaire_text;?></h3>
    						                    <?php if ($questions) { ?>
    						                    <ul class="list-inline qrid_<?php echo $questionnaire->id;?>">
    						                    <?php foreach ($questions as $question) { 
    											  $j = 1;
    											  if ($questionnaire->id === $question->questionnaire_id) { ?>
    											  <li>
    											    <div class="text-left">											    		
    									    			<label for="qsid_<?php echo $question->id;?>">
    									    				<?php if ($question->file_name) {  /* ?>
    										    			<div class="center-block">
    											    			<img style="height:160px;margin:0 auto 10px auto;" src="<?php echo base_url('uploads/questionnaire/questions/'.$question->file_name);?>" class="img-thumbnail"/>
    											    		</div>
    											    		<?php */} ?>
    								  						<input type="radio" <?php echo ($fields['qrid_'.$question->questionnaire_id] == 'qsid_'.$question->id ? 'checked="checked"' : '');?> name="qrid_<?php echo $questionnaire->id;?>" id="qsid_<?php echo $question->id;?>" value="qsid_<?php echo $question->id;?>" class="check_box"/>
    								  						<?php echo preg_replace('/(\D+.\:)/','',strip_tags($question->question_text));?>
    								  					</label>
    											    </div>
    											    <?php //echo $errors['qrid_'.$question->questionnaire_id]; ?>
    											  </li>
    											  <?php 
    											  }
    											  $j++;
    											} ?>
    											</ul>
    											<?php } ?>
    						                </li>					
    									  <?php
    									  $i++;
    									  }
    									  ?>
    									</ol>
    						   			<div class="center-block submit-block">
    						                <button class="btn btn-default btn-lg">Pilih Teman <span class="glyphicon glyphicon-chevron-right"></span></button>                                     
    						                <button class="btn btn-default btn-lg" name="submit">Kirim</button>
    						            </div>
    							    </form>  
    								</div>
    							<?php } else { ?>
    							<div class="">	
    								<h1>Hooray, you're done!!!! <small>Thanks for participating!</small></h1>
    							</div>	
    						<?php } ?>    
                            <h4><a href="#inline" class="terms">TERMS & CONDITION</a></h4>
                            <div class="terms-content" id="inline">
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                                <br/><br/>
                                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                                <br/>
                                 <br/>
                                Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
                                <br/><br/>
                                The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
                            </div>
                        </div>
                    </div>
                </div>                        
            </div>                
        </div>
    </div>
    <!-- /.row -->
    <div class="roll-note">
        <!-- <div class="roll-note-top"></div> -->
            <div class="roll-note-mid center-block">
                <p>
                    Dapatkan hadiah menarik jika kamu dan temanmu
                    kirim foto dari tempat hasil dari quiz ini.
                    foto gak harus foto langsung di tempatnya, bisa juga
                    kreasiin seolah-olah kamu di tempat hasilnya.
                </p>    
            </div>
        <!-- </div class="roll-note-bot"></div> -->
    </div>
</div>    