
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Dairy</title>
	<link href="./static/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="./static/boxs.css">
	<script src="./static/jquery.min.js"></script>
	<script src="./static/bootstrap.min.js"></script>
	<script src="./static/boxs.js"></script>
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
			<button id="btn" class="btn btn-primary btn-lg"  data-toggle="modal"  data-target="#myModal">Add Plan</button>
			<button id="btn2" class="btn btn-primary btn-lg "  data-toggle="modal"  data-target="#myModal2">Update</button>
		</div>
	</nav>


	<form method="post" role="form" action="./index.php">
	<input id="hiddenId" name="hiddenId" value="" class="hidden">
		<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times; </button>
						<h4 class="modal-title" id="myModalLabel"> 添加新的内容</h4>
					</div>
					<div class="modal-body">
						<div class="input-group">
							<input class="hidden"  name="contentFlg" value="true">
							<textarea class="form-control"  name="myPlan2" id="myPlan2" rows="12" cols="72"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭 </button>
						<button type="submit" class="btn btn-primary"> 提交更改 </button>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
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
				
				{assign var="index" value="0"}
                                {foreach $data as $v}
                                <tr name="planList" class="planList">
                                        <td>{$v.aim}</td>
					<td {if $v.colorflag2}style="background-color:red;"{/if}>{$v.phase2}</td>
					<td {if $v.colorflag3}style="background-color:red;"{/if}>{$v.phase3}</td>
					<td {if $v.colorflag4}style="background-color:red;"{/if}>{$v.phase4}</td>
					<td {if $v.colorflag5}style="background-color:red;"{/if}>{$v.phase5}</td>
					<td {if $v.colorflag6}style="background-color:red;"{/if}>{$v.phase6}</td>
					<td {if $v.colorflag7}style="background-color:red;"{/if}>{$v.phase7}</td>
					<td {if $v.colorflag8}style="background-color:red;"{/if}>{$v.phase8}</td>
					<td class="hidden"><span>{$v.id}</span></td>
					<td class="hidden"><div>{$v.contents}</div></td>
                                </tr>
                                <tr name="hiddenBox" id="hiddenBox{$index}" hidden="hidden">
                                        {$index = $index+1}
                                        <td colspan="8">
                                                <div class="top"></div>
                                                <span name="detail" class="form-control" style="height:400px;">{$v.contents_md}</span>
                                        </td>
                                </tr>
                                {/foreach}

			</tbody>
		</table>
	</form>
</body>
</html>
