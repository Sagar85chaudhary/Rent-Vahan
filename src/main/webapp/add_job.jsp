<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><%@include
	file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%
	// Check if the user is not logged in, then redirect to login page
	if (session.getAttribute("userobj") == null) {
		response.sendRedirect("login.jsp");
	}
	%>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-car fa-3x"></i>
						<%
						// Display success message if it exists
						String succMsg = (String) session.getAttribute("succMsg");
						if (succMsg != null && !succMsg.isEmpty()) {
						%>
						<div class="alert alert-success" role="alert">
							<%=succMsg%>
						</div>
						<%
						// Remove success message from session
						session.removeAttribute("succMsg");
						%>
						<%
						}
						%>
						<h5>Add Car Rental</h5>
					</div>

					<form action="add_job" method="post">
						<div class="form-group">
							<label>Enter Car Model</label> <input type="text" name="title"
								required class="form-control">
						</div>

						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label> <select name="location"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option selected>Choose...</option>
									<option value="Odisha">Odisha</option>
									<option value="Jharkhand">Jharkhand</option>
									<option value="Gujarat">Gujarat</option>
									<option value="Bhubaneswar">Bhubaneswar</option>
									<option value="Delhi">Delhi</option>
									<option value="Bangalore">Bangalore</option>
									<option value="Chennai">Chennai</option>
									<option value="Hyderabad">Hyderabad</option>
									<option value="Varanasi">Varanasi</option>
									<option value="Ghaziabad">Ghaziabad</option>
								</select>
							</div>

							<div class="form-group col-md-4">
								<label>Seating Capacity</label> <select class="custom-select"
									name="category">
									<option selected>Choose...</option>
									<option value="2 Seater">2 Seater</option>
									<option value="5 Seater">5 Seater</option>
									<option value="8 Seater">8 Seater</option>
									<option value="10 Seater">10 Seater</option>
									<option value="Bus">Bus</option>
								</select>
							</div>

							<div class="form-group col-md-4">
								<label>Status</label> <select class="form-control" name="status">
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label>Enter Description</label>
							<textarea required rows="6" name="desc" class="form-control"></textarea>
						</div>

						<button class="btn btn-success">Publish Car Rental</button>
					</form>

				</div>
			</div>
		</div>
	</div>
	</div>

	<%@include file="all_component/footer.jsp"%>
</body>
</html>
