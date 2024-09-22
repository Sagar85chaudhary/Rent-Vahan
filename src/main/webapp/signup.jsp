<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body>
<body style="background-color: #f0f1f2;">

	<%@include file="all_component/navbar.jsp"%>

	<div class="continer-fluid">
		<div class="row p-4">

			<div class="col-md-4 offset-md-4">

				<div class="card">

					<div class="card-body">

						<div class="text-center">

							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>

							<h5>Registration</h5>

						</div>

						<%
						String succMsg = (String) session.getAttribute("succMsg");

						if (succMsg != null && !succMsg.isEmpty()) {
						%>
						<h4 class="text-center text-success"><%=succMsg%></h4>
						<%
						session.removeAttribute("succMsg");
						}
						%>
						<form action="add_user" method="post">

							<div class="form-group">

								<label>Enter Full Name</label> <input type="text"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="name">

							</div>
							<div class="form-group">
								<input type="hidden" required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" name="qua"
									value="bgbg">
							</div>

							<div class="form-group">

								<label>Enter Email</label> <input type="email"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="email">

							</div>

							<div class="form-group">

								<label for="exampleInputPassword1">Enter Password</label> <input
									required="required" type="password" class="form-control"
									id="exampleInputPassword1" name="ps">

							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>

						</form>

					</div>

				</div>

			</div>

		</div>

	</div>

	<div style="margin-top: 50px;">

		<%@include file="all_component/footer.jsp"%>

	</div>
</body>
</html>