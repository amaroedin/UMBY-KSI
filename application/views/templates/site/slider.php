			<!-- imageslideshow -->
			<div id="imageslideshow" class="carousel slide" data-ride="carousel">
				<div id="reserveoverlay" class="visible-lg">
					<div class="container">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 style="margin: 0;"><strong><i class="glyphicon glyphicon-tower"></i>&nbsp; Situs</strong> Candi SambiSari</h4>
							</div>
							<div class="panel-body" style="padding: 5px;">
								<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1606.8672626759528!2d110.4470457!3d-7.7626394!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a5a39b544a4ab%3A0xd8f5c2d79ac124f3!2sCandi+Sambisari!5e1!3m2!1sen!2sid!4v1417939208369" width="100%" height="250" frameborder="0" style="border:0"></iframe>
							</div>
							<div class="panel-footer">
								<a href="<?php echo base_url()?>site/map" class="btn btn-warning">Lihat Lokasi &rarr;</a>
							</div>
						</div>
					</div>
				</div>

				<div class="container">

					<?php if(count($list_banners) > 0) {?>
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<?php 	foreach($list_banners as $key=>$banner) {?>
							<li data-target="#imageslideshow" data-slide-to="<?php echo $key;?>" class="<?php echo ($key == '0' ? 'active' : '');?>"></li>
							<?php 	}?>
						</ol>
					<?php }?>

					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<?php if(count($list_banners) > 0) {?>
						<?php 	foreach($list_banners as $key=>$banner) {?>
						<div class="item <?php echo ($key == 0 ? 'active' : '');?>">
							<img src="<?php echo base_url(get_image($banner->image));?>" alt="<?php echo $banner->title;?>" border="0">
						</div>
						<?php 	}?>
						<?php }?>
					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#imageslideshow" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left"></span>
					</a>
					<a class="right carousel-control" href="#imageslideshow" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div>
			</div>
			<!-- /imageslideshow -->

			<!-- mainwrapper -->
			<div id="mainwraper">
				<div class="well" id="info-bar">
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<span class="text-left">
									Selamat Datang di Website Pusat Informasi<br>
									<strong style="font-size: 16px;color: #eb9316;">Candi SambiSari Yogyakarta</strong>
									<div class="sr-only"><br><br></div>
								</span>
							</div>
							<div class="col-md-6 text-right">
								<strong>Informasi Terbaru</strong> dapat anda ikuti juga di :&nbsp;  
								<div class="btn-group">
									<a href="#" class="btn btn-default" title="Youtube.com"><i class="fa fa-youtube-square" style="font-size: 20px;line-height: normal;"></i></a>
									<a href="#" class="btn btn-default" title="Twitter.com"><i class="fa fa-twitter-square" style="font-size: 20px;line-height: normal;"></i></a>
									<a href="#" class="btn btn-default" title="Facebook.com"><i class="fa fa-facebook-square" style="font-size: 20px;line-height: normal;"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="container">
					<div id="main-container">
						<div class="row">