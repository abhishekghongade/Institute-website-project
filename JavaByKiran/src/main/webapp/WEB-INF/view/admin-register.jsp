
 <!-- css -->
  <link href="css/register.css" rel="stylesheet" />
  
  
<div class="container" id="container">
	
	<div class="form-container sign-in-container">
		<form action="checkadmin" method="post">
			<h1>Admin Sign in</h1>
			<input type="text" placeholder="Username"  name="username" required>
			<input type="password" placeholder="Password" name="password" required>
			<button>Sign In</button>
			<% if(request.getAttribute("wrong1")!=null){
	     		out.println(request.getAttribute("wrong1"));
	     	}
	     	%>	
			<a href="/" >Go to Home Page</a>
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
				<h1>Hello, Admin!</h1>
				<p>Existing Admin creates new admin registeration.</p>
				<p>Please Contact Existing Admin</p>
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
