<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Rental Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #6e7480;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            max-width: 800px;
            margin: 2rem auto;
            padding: 2rem;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        fieldset {
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 1rem;
            padding: 1rem;
        }

        legend {
            font-weight: bold;
            color: #555;
        }

        label {
            display: block;
            margin: 0.5rem 0 0.2rem;
            color: #333;
        }

        input[type="text"],
        input[type="email"],
        input[type="tel"],
        input[type="date"],
        textarea,
        select {
            width: 100%;
            padding: 0.5rem;
            margin: 0.2rem 0 1rem;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        button {
            width: 100%;
            padding: 0.75rem;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: #ffffff;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Car Rental Form</h1>
        <form action="/submit" method="post">
            <fieldset>
                <legend>Personal Information</legend>
                <label for="fullName">Full Name:</label>
                <input type="text" id="fullName" name="fullName" required>
                
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                
                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" required>
            </fieldset>
            
            <fieldset>
                <legend>Rental Details</legend>
                <label for="pickupDate">Pick-up Date:</label>
                <input type="date" id="pickupDate" name="pickupDate" required>
                
                <label for="returnDate">Return Date:</label>
                <input type="date" id="returnDate" name="returnDate" required>
                
                <label for="pickupLocation">Pick-up Location:</label>
                <input type="text" id="pickupLocation" name="pickupLocation" required>
                
                <label for="returnLocation">Return Location:</label>
                <input type="text" id="returnLocation" name="returnLocation" required>
            </fieldset>
            
            <fieldset>
                <legend>Car Preferences</legend>
                <label for="carType">Car Type:</label>
                <select id="carType" name="carType">
                    <option value="economy">Economy</option>
                    <option value="compact">Compact</option>
                    <option value="intermediate">Intermediate</option>
                    <option value="standard">Standard</option>
                    <option value="fullsize">Full-size</option>
                    <option value="luxury">Luxury</option>
                </select>
                
                <label for="transmission">Transmission:</label>
                <select id="transmission" name="transmission">
                    <option value="automatic">Automatic</option>
                    <option value="manual">Manual</option>
                </select>
                
                <label for="additionalOptions">Additional Options:</label>
                <textarea id="additionalOptions" name="additionalOptions" rows="4" placeholder="GPS, child seat, etc."></textarea>
            </fieldset>
            
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>