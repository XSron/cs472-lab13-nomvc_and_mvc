<!DOCTYPE html>
<html>
	<head>
		<title>Contact Form</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	</head>
<body>
	<%! 
		int hitCount = 0; 
		public synchronized int getHitCount() {
			return ++hitCount;
		}
	%>
	<header>
	 	<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="../lab12-mvc">CS472-WAP ::: Lab12</a>
		 	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			 	<span class="navbar-toggler-icon"></span>
		 	</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
			    <ul class="navbar-nav mr-auto">
			      <li class="nav-item active">
			        <a class="nav-link" href="../lab12-mvc">Home <span class="sr-only">(current)</span></a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="#">About</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="../lab12-mvc/contactform">Contact Us</a>
			      </li>
			    </ul>
			    <form class="form-inline my-2 my-lg-0">
			      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
			      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			    </form>
			  </div>
		 </nav>
 	</header>
	 <section>
		 <div class="container">
		  	<%= request.getAttribute("error") == null? "": request.getAttribute("error") %>
			 <form action="process-contact-form" method="POST">
				 <div class="row">
					 <div class="col-md-12">
						 <h3>Contact Form</h3>
						 <label for="name">* Name</label>
						 <input type="text" class="form-control" value="<%= request.getAttribute("name") == null? "": request.getAttribute("name") %>"  name="fullname" aria-describedby="nameHelp" placeholder="Enter your Name">
						 <small id="fullNameHelp" class="form-text text-muted">Enter your fullname</small>
					 </div>
				 </div>
				 <div class="row">
					 <div class="col-md-6">
						 <label for="gender">* Gender</label><br/>
						 <%
						 	Object gender = request.getAttribute("gender");
						 %>
						 <label><input type="radio" value="Male" name="gender" <%= gender!=null && gender.equals("Male")? "checked": "" %>>Male</label>
						 <label><input type="radio" value="Male" name="gender" <%= gender!=null && gender.equals("Female")? "checked": "" %>>Female</label>
					 </div>
				 </div>
				 <div class="row">
					 <div class="col-md-12">
						 <label for="category">* Category</label><br/>
						 <select id="category" name="category" class="form-control">
						 	<%
						 		Object category = request.getAttribute("category");
						 	%>
							 <option <%= category!=null && category.equals("Feedback")? "selected": "" %>>Feedback</option>
							 <option <%= category!=null && category.equals("Inquiry")? "selected": "" %>>Inquiry</option>
							 <option <%= category!=null && category.equals("Complaint")? "selected": "" %>>Complaint</option>
						 </select>
					 </div>
				 </div>
				 <div class="row">
					 <div class="col-md-12">
						 <label for="message">* Message</label><br/>
						 <textarea class="form-control" row="10" name="message"> 
						 	<%= request.getAttribute("message") == null? "": request.getAttribute("message") %> 
						 </textarea>
					 </div>
				 </div>
				 <div class="row">
					 <div class="col-md-12">
						 <input type="submit" value="Submit" class="btn btn-primary">
					 </div>
				 </div>
			 </form>
		</div>
		 <div class="container">
			 <div class="row">
				 <div class="col-md-6">
					 <p>Hit Count For this Page:  <%= getHitCount() %> </p>
				 </div>
				 <div class="col-md-6">
					 <p>Hit Count For Web App: <%= request.getServletContext().getAttribute("hitCounter") == null? 0: request.getServletContext().getAttribute("hitCounter") %></p>
				 </div>
			 </div>
		 </div>
	 </section>
</body>
<footer>
	 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5Kk" crossorigin="anonymous"></script>
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js integrity=sha384-ApNbgh9BY1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js integrity=sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar576PVCmYl" crossorigin="anonymous"></script>
</footer>
</html>