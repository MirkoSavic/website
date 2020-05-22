<?php include('config.php'); ?>
<?php include('includes/public_functions.php'); ?>
<?php include('includes/head_section.php'); ?>
<?php 
	
	if (isset($_GET['topic'])) {
		$topic_id = $_GET['topic'];
		$posts = getPublishedPostsByTopic($topic_id);
	}
?>
	<title>Vesti</title>
</head>
<body>
<div class="container">

	<?php include( ROOT_PATH . '/includes/navbar.php'); ?>

<div class="content">
	<h2 class="content-title">
		Vesti iz <u><?php echo getTopicNameById($topic_id); ?></u>
	</h2>
	<hr>
	<?php foreach ($posts as $post): ?>
		<div class="post" style="margin-left: 0px;">
			
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

	<?php include( ROOT_PATH . '/includes/footer.php'); ?>
