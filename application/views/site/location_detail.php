<div class="col-md-8">
	<ol class="breadcrumb">
		<li><i class="glyphicon glyphicon-home"></i></li>
		<li><a href="<?php echo base_url()?>">Home</a></li>
		<li><a href="#">Wisata Sekitar</a></li>
	</ol>
	<div class="panel panel-default">
		<div class="panel-heading"><strong><?php echo strtoupper($title);?></strong></div>
		<div class="panel-body">
			<div class="widget_content_page">
				<div class="well">
					<div class="row">
						<div class="col-md-12" style="text-align:justify;">
							<h2><?php echo $data_set->name;?></h2>
							<hr>
							<!-- <div class="col-md-9"> -->
								<img src="<?php echo base_url(get_image($data_set->image));?>" style="display: inline-block; padding: 10px 0; width: 100%;">
							<!-- </div>
							<div class="col-md-7"> -->
								<p>
									<span>Alamat : <?php echo $data_set->alamat;?></span><br>
									<span>No Telpon : <?php echo $data_set->no_telp;?></span><br>
									<span>Email : <?php echo $data_set->email;?></span><br>
									<span>Website : <a href="<?php echo $data_set->url_website?>" target="_blank"><?php echo $data_set->url_website;?></a></span>
								</p>
								<p><?php echo $data_set->description;?></p>
							<!-- </div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>