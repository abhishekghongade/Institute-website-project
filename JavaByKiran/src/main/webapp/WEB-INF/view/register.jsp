
 <!-- css -->
  <link href="css/register.css" rel="stylesheet" />
  
  
<div class="container" id="container">
	<div class="form-container sign-up-container">
		<form action="register" method="post">
			<h1>Create Account</h1>
			<input type="text" placeholder="Name" name="name" required>
			<input type="email" placeholder="Email" name="email" required>
			<input type="text" placeholder="Username" name="username" required>
			<input type="password" placeholder="Password" name="password" required>
			<input type="password" placeholder="Confirm Password" name="confirmpass" required>
			<button>Sign Up</button>
	     	<% if(request.getAttribute("msg")!=null){
	     		out.println(request.getAttribute("msg"));
	     	}
	     	if(request.getAttribute("emailmsg")!=null){
	     		out.println(request.getAttribute("emailmsg"));
	     	}
	     	if(request.getAttribute("unamemsg")!=null){
	     		out.println(request.getAttribute("unamemsg"));
	     	}
	     	if(request.getAttribute("created")!=null){
	     		out.println(request.getAttribute("created"));
	     	}
	     	%>	
			<a href="/" >Go to Home Page</a>
		</form>
	</div>
	<div class="form-container sign-in-container">
		<form action="checksignin" method="post">
			<h1>Sign in</h1>
			<input type="text" placeholder="Username"  name="username" required>
			<input type="password" placeholder="Password" name="password" required>
			<button>Sign In</button>
			<% if(request.getAttribute("wrong")!=null){
	     		out.println(request.getAttribute("wrong"));
	     	}
	     	%>	
			<a href="/" >Go to Home Page</a>
			<a href="/admin-register" >Admin Login</a>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				<button class="ghost" id="signIn">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Hello, User!</h1>
				<p>Enter your personal details and start journey with us</p>
				<button class="ghost" id="signUp">Sign Up</button>
			</div>
		</div>
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
