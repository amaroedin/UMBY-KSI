<div class="col-md-8">
	<ol class="breadcrumb">
		<li><i class="glyphicon glyphicon-home"></i></li>
		<li><a href="<?php echo base_url()?>">Home</a></li>
		<li><a href="#"><?php echo $title;?></a></li>
	</ol>
	<div class="panel panel-default">
		<div class="panel-heading"><strong>WISATA SEKITAR</strong></div>
		<div class="panel-body">
			<div class="widget_content_page">
				<div class="well">
					<div class="row">
						<div class="col-md-12">
							<?php if(count($list_location) > 0){?>
							<?php 	foreach($list_location as $location) {?>
								<div class="col-md-6">
									<p class="text-center">
										<img src="<?php echo base_url(get_image($location->image));?>" class="img-responsive thumbnail" style="margin-bottom: 10px;">
										<span><?php echo $location->name;?></span><br>
										<a href="<?php echo base_url()?>site/location_detail/<?php echo $location->id_location;?>"><strong>LIHAT INFORMASI</strong></a><br>
									</p>
								</div>
							<?php 	}?>
							<?php }else{?>
							<li>
								<div class="row"><?php echo data_empty;?></div>
							</li>
							<?php }?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>