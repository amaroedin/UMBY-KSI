<div class="col-md-8">
	<ol class="breadcrumb">
		<li><i class="glyphicon glyphicon-home"></i></li>
		<li><a href="<?php echo base_url()?>">Home</a></li>
		<li><a href="#">Sejarah</a></li>
	</ol>
	<div class="panel panel-default">
		<div class="panel-heading"><strong>SEJARAH</strong></div>
		<div class="panel-body">
			<h2><?php echo $data_set->title;?></h2>
			<small>Dipost : <?php echo format_tanggal_indonesia($data_set->date_update);?></small>
			<hr>
			
			<p><img src="<?php echo base_url().'/'.get_image($data_set->image);?>" width="578"></p>
			<p style="text-align:justify;"><?php echo $data_set->content;?></p>
		</div>
	</div>
</div>