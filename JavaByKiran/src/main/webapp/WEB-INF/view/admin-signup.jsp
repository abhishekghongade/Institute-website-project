
 <!-- css -->
  <link href="css/register.css" rel="stylesheet" />
  
  
<div class="container" id="container">
	
		<form action="admin-register" method="post">
			<h1>Create Account</h1>
			<input type="text" placeholder="Name" name="name" required>
			<input type="email" placeholder="Email" name="email" required>
			<input type="text" placeholder="Username" name="username" required>
			<input type="password" placeholder="Password" name="password" required>
			<input type="password" placeholder="Confirm Password" name="confirmpass" required>
			<button>Sign Up</button>
	     	<% if(request.getAttribute("msg1")!=null){
	     		out.println(request.getAttribute("msg1"));
	     	}
	     	if(request.getAttribute("emailmsg1")!=null){
	     		out.println(request.getAttribute("emailmsg1"));
	     	}
	     	if(request.getAttribute("unamemsg1")!=null){
	     		out.println(request.getAttribute("unamemsg1"));
	     	}
	     	if(request.getAttribute("created1")!=null){
	     		out.println(request.getAttribute("created1"));
	     	}
	     	%>	
			<a href="/admin-home" >Go to Home Page</a>
		</form>
	</div>

	
</div>

<script type="text/javascript">
const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});
</script>
