
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
		<div class="navbar-header"><img src="http://7xi4ih.com1.z0.glb.clouddn.com/6980631ejw1e8udbwerwyj20qo0qodit.jpg" alt="" class="img-circle" width="50px"><a href="/" class="navbar-brand">Moonwwdz</a></div>
		<div>
			<ul class="nav navbar-nav">
				<li><a href="/myBlog">Blog</a></li>
				<li><a href="/hand">Hand</a></li>
			</ul>
		</div>
		<div class="pull-right">
			<button class="btn btn-primary btn-lg"  data-toggle="modal"  data-target="#myModal">Add Plan</button>
		</div>
	</nav>


	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<form method="post" role="form" action="./index.php">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times; </button>
						<h4 class="modal-title" id="myModalLabel"> 新的记录 </h4>
					</div>
					<div class="modal-body">
						<div class="input-group">
							<textarea class="form-control"  name="myPlan" id="myPlan" rows="8" cols="72"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭 </button>
						<button type="submit" class="btn btn-primary"> 提交更改 </button>
					</div>
				</form>
			</div>
		</div>
	</div>

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
