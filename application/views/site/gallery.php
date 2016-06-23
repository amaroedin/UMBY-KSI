<div class="col-md-8">
	<ol class="breadcrumb">
		<li><i class="glyphicon glyphicon-home"></i></li>
		<li><a href="<?php echo base_url()?>">Home</a></li>
		<li><a href="#"><?php echo $title;?></a></li>
	</ol>
	<div class="panel panel-default">
		<div class="panel-heading"><strong><?php echo strtoupper($title);?></strong></div>
		<div class="panel-body">
			<?php if(count($list_gallery) > 0) {?>
			<ul class="gallery_cover">
				<?php foreach($list_gallery as $gallery) {?>
				<li class="col-md-6 col-sm-6 col-xs-12 no-left">
					<div class="cover">
						<span><a href="<?php echo base_url('site/gallery_detail/'.$gallery->id_post)?>" title="<?php echo $gallery->title;?>"></a></span>
					</div>
					<h4><?php echo $gallery->title;?></h4>
				</li>
				<?php }?>
			</ul>
			<?php }else{?>
			<p><?php echo data_empty;?></p>
			<?php }?>
		</div>
	</div>
</div>