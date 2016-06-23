<div class="col-md-8">
	<ol class="breadcrumb">
		<li><i class="glyphicon glyphicon-home"></i></li>
		<li><a href="<?php echo base_url()?>">Home</a></li>
		<li><a href="#">Posting</a></li>
	</ol>
	<div class="panel panel-default">
		<div class="panel-heading"><strong><?php echo strtoupper($title);?></strong></div>
		<div class="panel-body">
			<?php if(count($list_post_category) > 0) {?>
			<?php 	foreach($list_post_category as $category) {?>
					<h4><strong><?php echo $category->name;?></strong></h4>
					<div class="col-md-12">
					<?php foreach($list_post_item as $post) {?>
						<?php if($category->id_category == $post->id_category) {?>
						<p><a href="<?php echo base_url('site/post_detail/'.$post->id_post.'/'.$post->id_category.'/'.url_regex($post->title));?>"><strong><?php echo $post->title;?></strong></a> <span>(<?php echo convert_date($post->post_date);?>)</span></p>
						<?php }?>
					<?php }?>
					<br>
					</div>
			<?php 	}?>
			<?php }else{?>
			<p><?php echo data_empty;?></p>
			<?php }?>
		</div>
	</div>
</div>