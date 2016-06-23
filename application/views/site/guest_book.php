<div class="col-md-8">
	<ol class="breadcrumb">
		<li><i class="glyphicon glyphicon-home"></i></li>
		<li><a href="<?php echo base_url()?>">Home</a></li>
		<li><a href="#">Kontak Kami</a></li>
	</ol>
	<div class="panel panel-default">
		<div class="panel-heading"><strong><?php echo strtoupper($title);?></strong></div>
		<div class="panel-body">
			<p><?php echo $map_set->info;?></p>
			<h5>Lengkapi Form Di Bawah untuk menghubungi kami melalui email</h5>
			<div class="well">
				<?php echo form_open('site/guest_book',array('class'=>'form-horizontal','role'=>'form'));?>
				<div class="form-group" style="margin-bottom: 5px;">
					<?php echo form_label('Nama <sup class="require">*</sup>','name',array('class'=>'col-sm-3 control-label'));?>
					<div class="col-sm-9">
						<?php echo inputText('GuestBooks','name','',array('class'=>'form-control input-sm'));?>
					</div>
				</div>
				<div class="form-group" style="margin-bottom: 5px;">
					<?php echo form_label('Email <sup class="require">*</sup>','email',array('class'=>'col-sm-3 control-label'));?>
					<div class="col-sm-9">
						<?php echo inputText('GuestBooks','email','',array('class'=>'form-control input-sm'));?>
					</div>
				</div>
				<div class="form-group" style="margin-bottom: 5px;">
					<?php echo form_label('Telepon','no_telp',array('class'=>'col-sm-3 control-label'));?>
					<div class="col-sm-5">
						<?php echo inputText('GuestBooks','no_telp','',array('class'=>'form-control input-sm'));?>
					</div>
				</div>
				<div class="form-group" style="margin-bottom: 5px;">
					<?php echo form_label('Pesan <sup class="require">*</sup>','message',array('class'=>'col-sm-3 control-label'));?>
					<div class="col-sm-9">
						<?php echo inputTextArea('GuestBooks','message','',array('rows'=>5,'class'=>'form-control input-sm'));?>
					</div>
				</div>
				<hr>
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-9">
						<button type="reset" class="btn btn-default">Batal</button>
						<button type="submit" class="btn btn-warning">Kirim</button>
					</div>
				</div>
				<?php echo form_close();?>
			</div>
		</div>
	</div>
</div>