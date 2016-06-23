		<!-- right content -->
		<div class="col-md-4" id="sidebar">
			<div class="panel panel-default">
				<div class="panel-heading">
					Event <strong>Terbaru</strong>
				</div>
				<?php if(count($list_event)) {?>
				<?php 	foreach($list_event as $row) {?>
				<div class="panel-body">
					<h4><?php echo $row->title;?></h4>
					<div class="well">
						<strong><?php echo format_tanggal_indonesia($row->post_date);?></strong>
						<img src="<?php echo base_url()?><?php echo get_image($row->image);?>" class="thumbnail img-responsive" style="width:150px;margin: 7px 0">
						<p><?php echo word_limiter($row->content,20);?></p>
						<div class="text-left"><strong><a href="<?php echo base_url('site/post_detail/'.$row->id_post.'/'.$row->id_category.'/'.url_regex($row->title));?>">SELENGKAPNYA</a> &nbsp;<i class="fa fa-chevron-right"></i></strong></div>
					</div>
				</div>
				<?php 	}?>
				<?php }?>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading">
					WISATA <strong>SEKITAR</strong>
				</div>
				<div class="panel-body">
					<?php if(count($list_wisata_sekitar) > 0) {?>
					<?php 	foreach($list_wisata_sekitar as $row) {?>
						<h5><?php echo strtoupper($row->name);?></h5>
						<a href="<?php echo base_url()?>site/location_detail/<?php echo $row->id_location?>">
							<center>
								<img src="<?php echo base_url(get_image($row->image));?>" class="thumbnail" style="display: inline-block; width: 100%;">
							</center>
						</a>
					<?php 	}?>
					<?php }else{?>
						<p><?php echo data_empty;?></p>
					<?php }?>
				</div>
				<div class="panel-footer">
					<div class="text-left"><strong><a href="<?php echo base_url()?>site/location">LAINNYA</a> &nbsp;<i class="fa fa-chevron-right"></i></strong></div>
				</div>
			</div>
		</div>