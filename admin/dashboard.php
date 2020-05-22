<?php  include('../config.php'); ?>
	<?php include(ROOT_PATH . '/admin/includes/admin_functions.php'); ?>
	<?php include(ROOT_PATH . '/admin/includes/head_section.php'); ?>
	<title>Admin </title>
</head>
<body>
	<div class="header">
		<div class="logo">
			<a href="<?php echo BASE_URL .'admin/dashboard.php' ?>">
				<h1>Admin</h1>
			</a>
		</div>
		<?php if (isset($_SESSION['user'])): ?>
			<div class="user-info">
				<span><?php echo $_SESSION['user']['username'] ?></span> &nbsp; &nbsp; 
				<a href="<?php echo  '../logout.php'; ?>" class="logout-btn">logout</a>
			</div>
		<?php endif ?>
	</div>
	<div class="container dashboard">
		<h1>Ciao</h1>
		<div class="stats">
			<a href="users.php" class="first">
				<span>0</span> <br>
				<span>Novi users</span>
			</a>
			<a href="posts.php">
				<span>0</span> <br>
				<span>Objavljeno</span>
			</a>
		</div>
		<br><br><br>
		<div class="buttons">
			<a href="users.php">Dodaj Users</a>
			<a href="posts.php">Dodaj Vesti</a>
		</div>
	</div>
</body>
</html>