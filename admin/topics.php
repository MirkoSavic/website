<?php  include('../config.php'); ?>
<?php  include(ROOT_PATH . '/admin/includes/admin_functions.php'); ?>
<?php include(ROOT_PATH . '/admin/includes/head_section.php'); ?>

<?php $topics = getAllTopics();	?>
	<title>Uredjivanje</title>
</head>
<body>
	
	<?php include(ROOT_PATH . '/admin/includes/navbar.php') ?>
	<div class="container content">
		<?php include(ROOT_PATH . '/admin/includes/menu.php') ?>

		<div class="action">
			<h1 class="page-title">Kreiraj/Uredi Vesti</h1>
			<form method="post" action="topics.php" >
				
				<?php include(ROOT_PATH . '/includes/errors.php') ?>
				
				<?php if ($isEditingTopic === true): ?>
					<input type="hidden" name="topic_id" value="<?php echo $topic_id; ?>">
				<?php endif ?>
				<input type="text" name="topic_name" value="<?php echo $topic_name; ?>" placeholder="Vesti">
				
				<?php if ($isEditingTopic === true): ?> 
					<button type="submit" class="btn" name="update_topic">Uredi</button>
				<?php else: ?>
					<button type="submit" class="btn" name="create_topic">Dodaj </button>
				<?php endif ?>
			</form>
		</div>
		
		<div class="table-div">
			
			<?php include(ROOT_PATH . '/includes/messages.php') ?>
			<?php if (empty($topics)): ?>
				<h1>Nema vesti.</h1>
			<?php else: ?>
				<table class="table">
					<thead>
						<th>N</th>
						<th>Naziv vesti</th>
						<th colspan="2">Action</th>
					</thead>
					<tbody>
					<?php foreach ($topics as $key => $topic): ?>
						<tr>
							<td><?php echo $key + 1; ?></td>
							<td><?php echo $topic['name']; ?></td>
							<td>
								<a class="fa fa-pencil btn edit"
									href="topics.php?edit-topic=<?php echo $topic['id'] ?>">
								</a>
							</td>
							<td>
								<a class="fa fa-trash btn delete"								
									href="topics.php?delete-topic=<?php echo $topic['id'] ?>">
								</a>
							</td>
						</tr>
					<?php endforeach ?>
					</tbody>
				</table>
			<?php endif ?>
		</div>
	</div>
</body>
</html>