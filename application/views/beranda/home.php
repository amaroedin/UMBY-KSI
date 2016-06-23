<div id="main-container">
	<div class="row">
		<!-- left content -->
		<div class="col-md-8">
			<div class="welcome_content">
				<h2><?php echo $get_data->name;?> <strong><?php echo $get_data->title;?></strong></h2>
				<br>
				<img src="<?php echo base_url()?><?php echo $get_data->image;?>" class="img-responsive">
				<p><?php echo word_limiter($get_data->content,80);?></p>
				<div class="text-left"><strong><a href="<?php echo base_url()?>tentang/profil">BACA SELENGKAPNYA</a> &nbsp;<i class="fa fa-chevron-right"></i></strong></div>
				<div class="clearfix"></div>
				<br><br>
			</div>

			<div class="well">
				<div class="row">
					<div class="col-md-4">
						<h2>INFORMASI <strong>TERBARU</strong></h2>
						<div class="text-left"><strong><a href="#">LIHAT SEMUA INFORMASI</a> &nbsp;<i class="fa fa-chevron-right"></i></strong></div>
						<hr>
						<a href="#"><img src="<?php echo base_url()?>assets/images/jogja-visit.png" class="thumnail visible-lg" style="display: inline-block; width: 100%;"></a>
					</div>

					<div class="col-md-8">
						<div class="col-md-6">
							<p>
								<a href="#"><strong>Book Earlier, Save More</strong></a>
								<br>
								<img src="<?php echo base_url()?>assets/images/banner.jpg" class="img-responsive thumbnail" style="margin-bottom: 10px;">
								Create your booking 21 days in advance.... <a href="#">(read more)</a>
							</p>
						</div>

						<div class="col-md-6">
							<p>
								<a href="#"><strong>Bali Escape, Starting from IDR 250.000</strong></a>
								<br>
								<img src="<?php echo base_url()?>assets/images/banner.jpg" class="img-responsive thumbnail" style="margin-bottom: 10px;">
								Plan your trip to Bali and stay at one of our hotels, enjoy Plan your trip to Bali... <a href="#">(read more)</a>
							</p>
						</div>

						<div class="col-md-6">
							<p>
								<a href="#"><strong>Stay Two Nights, Free SIP Membership</strong></a>
								<br>
								<img src="<?php echo base_url()?>assets/images/banner.jpg" class="img-responsive thumbnail" style="margin-bottom: 10px;">
								Stay at least two continues night of one of our hotels...  <a href="#">(read more)</a>
							</p>
						</div>

						<div class="col-md-6">
							<p>
								<a href="#"><strong>Get 10% Discount for SIP Membership</strong></a>
								<br>
								<img src="<?php echo base_url()?>assets/images/banner.jpg" class="img-responsive thumbnail" style="margin-bottom: 10px;">
								We award 10% additional discount from Best Available ...  <a href="#">(read more)</a>
							</p>
						</div>										
					</div>
				</div>
			</div>
			<br>
		</div>

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
						<div class="text-left"><strong><a href="#">SELENGKAPNYA</a> &nbsp;<i class="fa fa-chevron-right"></i></strong></div>
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
					<h5>CANDI PRAMBANAN</h5>
					<a href="#">
						<center>
							<img src="<?php echo base_url()?>assets/images/banner.jpg" class="thumbnail" style="display: inline-block; width: 100%;">
						</center>
					</a>

					<h5>CANDI PRAMBANAN</h5>
					<a href="#">
						<center>
							<img src="<?php echo base_url()?>assets/images/banner.jpg" class="thumbnail" style="display: inline-block; width: 100%;">
						</center>
					</a>
				</div>
				<div class="panel-footer">
					<div class="text-left"><strong><a href="#">LAINNYA</a> &nbsp;<i class="fa fa-chevron-right"></i></strong></div>
				</div>
			</div>
		</div>
	</div>
</div>