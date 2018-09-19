<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<title>考勤系统</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link  type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="css/normalize.css">
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>
-->
<link rel="stylesheet" href="css/homestyle.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</head>
<body>
	<%-- <div class="container">
		<ul class="nav nav-tabs" role="tablist">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" href="#sign">签到</a></li>
			<li class="nav-item"><a class="nav-link " data-toggle="tab"
				href="#schedule">课程表</a></li>
			<li class="nav-item"><a class="nav-link " data-toggle="tab"
				href="#teacher">教师操作模块</a></li>
			<li class="nav-item"><a class="nav-link " data-toggle="tab"
				href="#administrator">管理员操作模块</a></li>
			<li class="nav-item"><a class="nav-link " data-toggle="tab"
				href="#info">个人信息与设置</a></li>


		</ul>

		<!-- 签到模块 -->
		<div class="tab-content">
			<div id="sign" class="container tab-pane active">
				<br>
				<h3>欢迎你！XX同学！</h3>
				<br>
				<h4>当前课程:XXX</h4>
				<button class="btn btn-primary">签到</button>

			</div>


			<!-- 	课程表模块 -->
			<div id="schedule" class="container tab-pane fade">
				<br>
				<form role="form">
					<div class="form-group">
						<label for="name">选择列表</label> <select class="form-control">
							<%for(int i=1;i<=18;i++){ %>
							<option><%=i %></option>
							<%} %>
						</select>
				</form>



			</div>


			

			<!-- 个人信息界面 -->
			<div id="info" class="container tab-pane fade">
				<br>
				<h3>这里是个人信息界面</h3>
			</div>




		</div>

	</div> --%>


	<div class="container">
		<img  src="images/bluelogo.png" class="col-4" ><span class="banner-style">|  考勤签到界面</span>

		<br>
		<!-- Nav pills -->
		<ul class="nav nav-pills" role="tablist">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="pill" href="#sign">签到</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="pill"
				href="#schedule">课程表</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="pill"
				href="#teacher">教师管理模块</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="pill"
				href="#administractor">管理员模块</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="pill"
				href="#info">个人信息</a></li>
		</ul>

		<!-- Tab panes -->
		
		<!-- 签到模块 -->
		<div class="tab-content">
			<div id="sign" class="container tab-pane active">
				<br> 
				<h2>欢迎你，XXX!</h2>
				<h3>当前课程:XXX</h3>
				<button class="btn btn-primary">签到</button>
				
			</div>
			
			
			
			<!-- 课程表模块 -->
			<div id="schedule" class="container tab-pane fade">
				<br>
				<label for="name">周数</label> <select class="form-control">
					<%
						for (int i = 1; i <= 18; i++) {
					%>
					<option><%=i%></option>
					<%
						}
					%>
				</select>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th></th>
							<th>星期一</th>
							<th>星期二</th>
							<th>星期三</th>
							<th>星期四</th>
							<th>星期五</th>
							<th>星期六</th>
							<th>星期天</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>上午</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>下午</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>晚上</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>

			</div>
			
		<!-- 	教师管理模块 -->
			<div id="teacher" class="container tab-pane fade">
				<br>
				<h3>这里是教师管理模块</h3>
				
			</div>
			
			<div id="administractor" class="container tab-pane fade">
				<br>
				<h3>这里是管理员模块</h3>
				
			</div>
			<div id="info" class="container tab-pane fade">
				<br>
				<h3>这里是个人信息模块</h3>
				
			</div>
		</div>
	</div>


</body>
</html>
