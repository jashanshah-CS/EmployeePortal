<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Registration - Modern Design</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
            padding: 40px 20px;
            overflow-x: hidden;
        }

        .container {
            background: rgba(255, 255, 255, 0.98);
            backdrop-filter: blur(10px);
            padding: 45px;
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            max-width: 700px;
            width: 100%;
            position: relative;
            z-index: 1;
            animation: slideIn 0.6s ease-out;
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h1 {
            text-align: center;
            background: linear-gradient(135deg, #667eea, #764ba2);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 10px;
            font-size: 32px;
            font-weight: 700;
        }

        .subtitle {
            text-align: center;
            color: #666;
            margin-bottom: 35px;
            font-size: 14px;
        }

        .form-group {
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #333;
            font-weight: 600;
            font-size: 14px;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"],
        input[type="tel"],
        select,
        textarea {
            width: 100%;
            padding: 14px 18px;
            border: 2px solid #e0e0e0;
            border-radius: 10px;
            font-size: 15px;
            transition: all 0.3s ease;
            background-color: #f8f9fa;
        }

        input:focus,
        select:focus,
        textarea:focus {
            border-color: #667eea;
            outline: none;
            background-color: white;
            box-shadow: 0 8px 20px rgba(102, 126, 234, 0.25);
        }

        .row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 25px;
        }

        .submit-btn {
            width: 100%;
            padding: 16px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border: none;
            border-radius: 12px;
            font-size: 17px;
            font-weight: 700;
            cursor: pointer;
            transition: all 0.4s ease;
            margin-top: 15px;
        }

        .submit-btn:hover {
            transform: translateY(-4px);
            box-shadow: 0 12px 35px rgba(102, 126, 234, 0.6);
        }

        .required {
            color: #e74c3c;
            font-weight: bold;
        }

        hr {
            border: none;
            border-top: 2px solid #f0f0f0;
            margin: 35px 0;
            position: relative;
        }

        hr::after {
            content: 'Employment Information';
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: white;
            padding: 0 15px;
            color: #999;
            font-size: 13px;
            font-weight: 600;
        }

        @media (max-width: 600px) {
            .row {
                grid-template-columns: 1fr;
            }
        }

        /* ------------------- Employee Table ------------------- */
        .employee-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 40px;
            background: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        .employee-table th,
        .employee-table td {
            padding: 14px 18px;
            text-align: left;
            border-bottom: 1px solid #eee;
        }

        .employee-table th {
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 14px;
        }

        .employee-table tr:hover {
            background-color: #f9f9ff;
        }

        .action-buttons a {
            text-decoration: none;
            color: white;
            padding: 8px 14px;
            border-radius: 8px;
            font-size: 13px;
            font-weight: 600;
            transition: all 0.3s ease;
            margin-right: 6px;
        }

        .edit-btn {
            background: #4CAF50;
        }

        .edit-btn:hover {
            background: #45a049;
        }

        .delete-btn {
            background: #e74c3c;
        }

        .delete-btn:hover {
            background: #c0392b;
        }

        h2 {
            margin-top: 60px;
            text-align: center;
            color: #fff;
            font-weight: 600;
            font-size: 26px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Employee Registration</h1>
        <p class="subtitle">Join our team - Fill in your details below</p>

        <form action="submit_employee.php" method="POST">
            <div class="row">
                <div class="form-group">
                    <label for="first_name">First Name <span class="required">*</span></label>
                    <input type="text" id="first_name" name="first_name" value = "firstname" placeholder="Enter first name" required>
                </div>
                <div class="form-group">
                    <label for="last_name">Last Name <span class="required">*</span></label>
                    <input type="text" id="last_name" name="last_name" value = "lastname" placeholder="Enter last name" required>
                </div>
            </div>

            <div class="row">
                <div class="form-group">
                    <label for="date_of_birth">Date of Birth <span class="required">*</span></label>
                    <input type="date" id="date_of_birth" value = "dob" name="date_of_birth" required>
                </div>
                <div class="form-group">
                    <label for="gender">Gender</label>
                    <select id="gender" name="gender" value = "gender">
                        <option value="">Select Gender</option>
                        <option>Male</option>
                        <option>Female</option>
                        <option>Other</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="form-group">
                    <label for="phone_number">Phone Number</label>
                    <input type="tel" id="phone_number" name="phone_number" value = "phone" placeholder="+1 (234) 567-8900">
                </div>
                <div class="form-group">
                    <label for="email">Email Address <span class="required">*</span></label>
                    <input type="email" id="email" name="email" value = "email" placeholder="your.email@company.com" required>
                </div>
            </div>

            <div class="form-group">
                <label for="address">Residential Address</label>
                <textarea id="address" name="address" value = "address" placeholder="Street, City, State, ZIP Code"></textarea>
            </div>

            <hr>

            <div class="row">
                <div class="form-group">
                    <label for="job_title">Job Title</label>
                    <input type="text" id="job_title" name="job_title" value = "title" placeholder="e.g., Software Engineer">
                </div>
                <div class="form-group">
                    <label for="department">Department <span class="required">*</span></label>
                    <select id="department" name="department" value = "department" required>
                        <option value="">Select Department</option>
                        <option>HR</option>
                        <option>IT</option>
                        <option>Finance</option>
                        <option>Marketing</option>
                        <option>Sales</option>
                    </select>
                </div>
            </div>

            <button type="submit" class="submit-btn"><span>Register Employee</span></button>
        </form>
    </div>
</body>
</html>
    