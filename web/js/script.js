document.getElementById("login-form").addEventListener("submit", function(event) {
    event.preventDefault(); // Prevent form submission
  
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
  
    // Check if the entered credentials match the admin account
    if (username === "admin" && password === "password") {
      document.getElementById("message").textContent = "Login successful";
      // Redirect to index.html
      window.location.href = "admin.jsp";
    } else {
      document.getElementById("message").textContent = "Invalid username or password";
    }
  });
  