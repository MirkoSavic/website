<?php require_once('config.php') ?>
<?php require_once(ROOT_PATH . '/includes/public_functions.php') ?>
<?php require_once (ROOT_PATH . '/includes/registration_login.php') ?>

<?php $posts = getPublishedPosts(); ?>
<?php require_once(ROOT_PATH . '/includes/head_section.php') ?>
	<title> Home </title>
</head>
<body>
	
	<div class="container">
		
		<?php include(ROOT_PATH . '/includes/navbar.php') ?>
		
		<?php include(ROOT_PATH . '/includes/banner.php') ?>
		
		<div class="content">
			<h2 class="content-title">Najnovije ...</h2>
			<hr>
			
<?php foreach ($posts as $post): ?>
	<div class="post" style="margin-left: 0px;">
		<img src="<?php echo '/static/images/' . $post['image']; ?>" class="post_image" alt="">
		
		<?php if (isset($post['topic']['name'])): ?>
			<a 
				href="<?php echo 'filtered_posts.php?topic=' . $post['topic']['id'] ?>"
				class="btn category">
				<?php echo $post['topic']['name'] ?>
			</a>
		<?php endif ?>
		
		<a href="single_post.php?post-slug=<?php echo $post['slug']; ?>">
			<div class="post_info">
				<h3><?php echo $post['title'] ?></h3>
				<div class="info">
					<span><?php echo date("F j, Y ", strtotime($post["created_at"])); ?></span>
					<span class="read_more">Dalje...</span>
				</div>
			</div>
		</a>
	</div>
<?php endforeach ?>
		</div>
		<?php include(ROOT_PATH . '/includes/footer.php') ?>
	</div>
</body>
</html>