		<!-- left content -->
		<div class="col-md-8">
			<div class="welcome_content">
				<h2><strong><?php echo $data_set->title;?></strong></h2>
				<br>
				<img src="<?php echo base_url(get_image($data_set->image));?>" class="img-responsive" style="width:100%;">
				<p style="text-align:justify;"><?php echo word_limiter($data_set->content,80);?></p>
				<div class="text-left"><strong><a href="<?php echo base_url()?>site/pages/<?php echo $data_set->name;?>">BACA SELENGKAPNYA</a> &nbsp;<i class="fa fa-chevron-right"></i></strong></div>
				<div class="clearfix"></div>
				<br><br>
			</div>

			<div class="well">
				<div class="row">
					<div class="col-md-4">
						<h2>INFORMASI <strong>TERBARU</strong></h2>
						<div class="text-left"><strong><a href="<?php echo base_url()?>site/post">LIHAT SEMUA INFORMASI</a> &nbsp;<i class="fa fa-chevron-right"></i></strong></div>
						<hr>
						<a href="<?php echo base_url()?>"><img src="<?php echo base_url()?>assets/images/jogja-visit.png" class="thumnail visible-lg" style="display: inline-block; width: 100%;"></a>
					</div>

					<div class="col-md-8">
						<?php if(count($list_news) > 0){?>
						<?php 	foreach($list_news as $news){?>
						<div class="col-md-6">
							<p>
								<a href="<?php echo base_url()?>post/news_detail/<?php echo str_replace(' ', '-', $news->title);?>"><strong><?php echo $news->title;?></strong></a>
								<br>
								<img src="<?php echo base_url(get_image($news->image));?>" class="img-responsive thumbnail" style="margin-bottom: 10px;">
								<span><?php echo word_limiter($news->content,10)?> <a href="<?php echo base_url('site/post_detail/'.$news->id_post.'/'.$news->id_category.'/'.url_regex($news->title));?>">read more</a></span>
							</p>
						</div>
						<?php 	}?>
						<?php }?>
					</div>
				</div>
			</div>
			<br>
		</div>