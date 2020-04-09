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
			 <a class="navbar-brand" href="../lab11">CS472-WAP ::: Lab10</a>
			 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				 <span class="navbar-toggler-icon"></span>
			 </button>
			 <div class="collapse navbar-collapse" id="navbarSupportedContent">
			    <ul class="navbar-nav mr-auto">
			      <li class="nav-item active">
			        <a class="nav-link" href="../lab12-nomvc">Home <span class="sr-only">(current)</span></a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="#">About</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="../lab12-nomvc/ContactForm.jsp">Contact Us</a>
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
			 <p>Name: <b><%= request.getParameter("name") %></b></p>
			 <p>Gender: <b><%= request.getParameter("gender") %></b></p>
			 <p>Category: <b><%= request.getParameter("category") %></b></p>
			 <p>Message: <b><%= request.getParameter("message") %></b></p>

			 <div class="row">
				 <div class="col-md-6">
					 <p>Hit Count For this Page: <%= getHitCount() %></p>
				 </div>
				 <div class="col-md-6">
					 <p>Hit Count For Web App: <%= request.getServletContext().getAttribute("hitCounter") == null? 0: request.getServletContext().getAttribute("hitCounter") %></p>
				 </div>
		 	</div>
	 	</div>
	 </section>
 </body>
	 <footer>
		 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	 </footer>
 </html>