<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Rental Registration</title>
    <link rel="stylesheet" href="assets/register/u login.css">
    <script>
        function validateForm() {
            var firstname = document.forms["registrationForm"]["firstname"].value;
            var lastname = document.forms["registrationForm"]["lastname"].value;
            var email = document.forms["registrationForm"]["email"].value;
            var phone = document.forms["registrationForm"]["phone"].value;
            var username = document.forms["registrationForm"]["username"].value;
            var password = document.forms["registrationForm"]["password"].value;
            var confirm_password = document.forms["registrationForm"]["confirm_password"].value;

            // Basic validation - checking if fields are empty
            if (firstname == "" || lastname == "" || email == "" || phone == "" || username == "" || password == "" || confirm_password == "") {
                alert("All fields must be filled out");
                return false;
            }

            // Phone number validation
            if (!/^(9|7|6)\d{8,9}$/.test(phone)) {
                alert("Phone number should start with 9, 7, or 6 and be 9 to 10 digits long");
                return false;
            }

            // Password validation - basic check for length
            if (password.length < 6) {
                alert("Password must be at least 6 characters long");
                return false;
            }
u
            // Checking if passwords match
            if (password !== confirm_password) {
                alert("Passwords do not match");
                return false;
            }

            // You can add more specific validations here if needed, such as email format validation, etc.

            // If all validations pass, return true to allow form submission
            return true;
        }
    </script>
</head>
<body class="register-page">
    <div>
         <h2>Register to Forza Motors</h2>
     
        <form name="registrationForm" method="post" onsubmit="return validateForm()">
            
           <div class="textbox">
                <input type="text" placeholder="First Name" name="firstname" required>
            </div>
            <div class="textbox">
                <input type="text" placeholder="Last Name" name="lastname" required>
            </div>
            <div class="textbox">
                <input type="email" placeholder="Email" name="email" required>
            </div>
            <div class="textbox">
                <input type="tel" placeholder="Phone Number" name="phone" required>
            </div>
            <div class="textbox">
                <input type="text" placeholder="Username" name="username" required>
            </div>
            <div class="textbox">
                <input type="password" placeholder="Password" name="password" required>
            </div>
            <div class="textbox">
                <input type="password" placeholder="Confirm Password" name="confirm_password" required>
            </div>
            <input type="submit" class="btn" value="Register">
            <p class="login-link"><center>Already have an account?<a href="index.php">Login</a></center></p>
        </form>
    </div>
    
    <?php
    // Database connection parameters
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "forza motors";
    
    // Create connection
    $conn = new mysqli($servername, $username, $password, $database);
    
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    
    // Function to sanitize user input
    function sanitize_input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    
    // Retrieve form data
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $firstname = sanitize_input($_POST['firstname']);
        $lastname = sanitize_input($_POST['lastname']);
        $email = sanitize_input($_POST['email']);
        $phone = sanitize_input($_POST['phone']);
        $username = sanitize_input($_POST['username']);
        $password = sanitize_input($_POST['password']);
        $confirm_password = sanitize_input($_POST['confirm_password']);
    
        // Check if passwords match
        if ($password !== $confirm_password) {
            echo "<script>alert('Passwords do not match.');</script>";
        } else {
            // Hash password
            $hashed_password = password_hash($password, PASSWORD_DEFAULT);
    
            // SQL query to insert data into database
            $sql = "INSERT INTO users_data (firstname, lastname, email, phoneno, username, password,confirm_password) 
                    VALUES ('$firstname', '$lastname', '$email', '$phone', '$username', '$hashed_password','$password')";
    
            // Execute query
            if ($conn->query($sql) === TRUE) {
                echo "<script>alert('New record created successfully');</script>"; 
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        }
    }
    
    // Close connection
    $conn->close();
    ?>
</body>
</html>
