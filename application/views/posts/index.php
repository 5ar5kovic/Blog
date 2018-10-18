

<?php foreach($posts as $post) : ?>
	<a href="<?php echo site_url('/posts/'.$post['slug']); ?>">
		<h3 class="col-md-8 col-md-offset-2"> <?php echo $post['title']; ?></h3>
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<?php echo word_limiter($post['body'], 10); ?>
	</a>
				<small class="post-date">Posted on: <?php echo $post['created_at']; ?> in <strong><?php echo $post['name']; ?></strong></small>
				<!--<p><a class="btn btn-default" href="<?php echo site_url('/posts/'.$post['slug']); ?>">Read More</a></p>-->
			</div>
		</div>

<?php endforeach; ?>

<div class="pagination-links col-md-8 col-md-offset-2">
	<?php echo $this->pagination->create_links(); ?>
</div>
