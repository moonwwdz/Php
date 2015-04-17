
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Dairy</title>
	<link href="./static/bootstrap.min.css" rel="stylesheet">
	<script src="./static/jquery.min.js"></script>
	<script src="./static/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse" role="navigation">
		<div class="navbar-header"><img src="./static/a.jpg" alt="" class="img-circle" width="50px"><a href="/" class="navbar-brand">Moonwwdz</a></div>
		<div>
			<ul class="nav navbar-nav">
				<li><a href="/myBlog">Blog</a></li>
				<li><a href="/hand">Hand</a></li>
			</ul>
		</div>
	</nav>



	<table class="table table-bordered table-striped">
		<thead>
			<tr class="bg-primary">
				<th>内容</th>
				<th>1<small class="text-danger">(30 mins)</small></th>
				<th>2<small class="text-danger">(12 hours)</small></th>
				<th>3<small class="text-danger">(1 day)</small></th>
				<th>4<small class="text-danger">(2 day)</small></th>
				<th>5<small class="text-danger">(4 day)</small></th>
				<th>6<small class="text-danger">(7 day)</small></th>
				<th>7<small class="text-danger">(15 day)</small></th>	
			</tr>
		</thead>
		<tbody>
		{foreach $data as $v}
			<tr>
				<td>{$v.aim}</td>
				<td>{$v.phase2}</td>
				<td>{$v.phase3}</td>
				<td>{$v.phase4}</td>
				<td>{$v.phase5}</td>
				<td>{$v.phase6}</td>
				<td>{$v.phase7}</td>
				<td>{$v.phase8}</td>
			</tr>
			{/foreach}
		</tbody>
	</table>
</body>
</html>
