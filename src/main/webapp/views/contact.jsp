<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact - Aero Jobs</title>
    <style>
        /* Reset & Basics */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #0f0c29, #302b63, #24243e);
            color: #ffffff;
            min-height: 100vh;
            overflow-x: hidden;
        }

        /* Glassmorphism Navbar */
        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 5%;
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(15px);
            -webkit-backdrop-filter: blur(15px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
            position: sticky;
            top: 0;
            z-index: 100;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.3);
        }

        .logo {
            font-size: 26px;
            font-weight: 800;
            color: #00e5ff;
            text-shadow: 0 0 10px rgba(0, 229, 255, 0.6);
            letter-spacing: 2px;
            cursor: pointer;
        }

        .nav-links {
            list-style: none;
            display: flex;
            gap: 40px;
        }

        .nav-links li a {
            text-decoration: none;
            color: #d1d5db;
            font-size: 16px;
            font-weight: 500;
            transition: all 0.3s ease;
            padding: 8px 16px;
            border-radius: 8px;
        }

        .nav-links li a.active, .nav-links li a:hover {
            color: #ffffff;
            background: rgba(0, 229, 255, 0.1);
            box-shadow: 0 0 15px rgba(0, 229, 255, 0.3);
            text-shadow: 0 0 5px rgba(255, 255, 255, 0.8);
        }

        /* Ambient Glow Effects */
        .ambient-glow-1 {
            position: fixed;
            width: 450px;
            height: 450px;
            background: #00e5ff;
            border-radius: 50%;
            filter: blur(200px);
            z-index: -1;
            opacity: 0.15;
            top: 10%;
            left: -5%;
        }

        .ambient-glow-2 {
            position: fixed;
            width: 450px;
            height: 450px;
            background: #e000ff;
            border-radius: 50%;
            filter: blur(200px);
            z-index: -1;
            opacity: 0.15;
            bottom: 5%;
            right: -5%;
        }

        /* Contact Container */
        .container {
            padding: 60px 5%;
            display: flex;
            justify-content: center;
            align-items: center;
            animation: fadeInUp 0.8s ease-out;
        }

        .contact-wrapper {
            display: flex;
            background: rgba(255, 255, 255, 0.03);
            border: 1px solid rgba(255, 255, 255, 0.08);
            border-radius: 20px;
            width: 100%;
            max-width: 1000px;
            backdrop-filter: blur(15px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.4);
            overflow: hidden;
        }

        /* Contact Info Panel */
        .contact-info {
            flex: 1;
            background: rgba(0, 229, 255, 0.05);
            padding: 50px 40px;
            border-right: 1px solid rgba(255, 255, 255, 0.08);
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .contact-info h2 {
            font-size: 2.2rem;
            color: #00e5ff;
            margin-bottom: 20px;
            text-shadow: 0 0 10px rgba(0, 229, 255, 0.4);
        }

        .contact-info p {
            color: #cbd5e1;
            font-size: 1.1rem;
            line-height: 1.6;
            margin-bottom: 40px;
        }

        .info-item {
            display: flex;
            align-items: center;
            margin-bottom: 25px;
        }

        .info-icon {
            width: 40px;
            height: 40px;
            background: rgba(224, 0, 255, 0.1);
            border: 1px solid rgba(224, 0, 255, 0.3);
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-right: 15px;
            color: #e000ff;
            font-weight: bold;
            font-size: 18px;
            box-shadow: 0 0 10px rgba(224, 0, 255, 0.2);
        }

        .info-text h4 {
            color: #ffffff;
            font-size: 16px;
            margin-bottom: 5px;
        }

        .info-text span {
            color: #a0aec0;
            font-size: 14px;
        }

        /* Contact Form Panel */
        .contact-form {
            flex: 1.5;
            padding: 50px 40px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            margin-bottom: 25px;
        }

        .form-group label {
            color: #00e5ff;
            font-size: 14px;
            font-weight: 600;
            margin-bottom: 8px;
            letter-spacing: 1px;
            text-transform: uppercase;
        }

        .form-control {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(0, 229, 255, 0.2);
            border-radius: 10px;
            padding: 15px;
            color: #ffffff;
            font-size: 16px;
            outline: none;
            transition: all 0.3s ease;
        }

        .form-control::placeholder {
            color: #6b7280;
        }

        .form-control:focus {
            background: rgba(255, 255, 255, 0.08);
            border-color: #00e5ff;
            box-shadow: 0 0 15px rgba(0, 229, 255, 0.3);
        }

        textarea.form-control {
            resize: vertical;
            min-height: 150px;
        }

        .submit-btn {
            background: linear-gradient(135deg, #e000ff, #7b00ff);
            color: #ffffff;
            border: none;
            padding: 16px 30px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 10px;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 0 15px rgba(224, 0, 255, 0.4);
            text-transform: uppercase;
            letter-spacing: 1.5px;
            float: right;
        }

        .submit-btn:hover {
            box-shadow: 0 0 25px rgba(224, 0, 255, 0.8);
            transform: translateY(-3px);
        }

        /* Animations */
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Responsive */
        @media (max-width: 900px) {
            .contact-wrapper {
                flex-direction: column;
            }
            .contact-info {
                border-right: none;
                border-bottom: 1px solid rgba(255, 255, 255, 0.08);
            }
        }

        /* Paste this at the bottom of the CSS in all 4 Status JSPs */
        @media (max-width: 768px) {
            nav { flex-direction: column; gap: 15px; padding: 15px 5%; }
            .nav-links { flex-wrap: wrap; justify-content: center; gap: 10px; }
            .status-card { padding: 30px 20px; margin: 10px; }
            h1 { font-size: 1.6rem; }
            .icon { font-size: 50px; }
            .btn { width: 100%; text-align: center; }
        }
    </style>
</head>
<body>

<!-- Ambient Background Glows -->
<div class="ambient-glow-1"></div>
<div class="ambient-glow-2"></div>

<!-- Top Dashboard Navbar -->
<nav>
    <div class="logo">AERO JOBS</div>
    <ul class="nav-links">
        <li><a href="/home">Home</a></li>
        <li><a href="/addjobs">Add Jobs</a></li>
        <li><a href="/contact" class="active">Contact</a></li>
    </ul>
</nav>

<!-- Contact Section -->
<div class="container">
    <div class="contact-wrapper">

        <!-- Left Panel: Info -->
        <div class="contact-info">
            <h2>Initiate Comm Link</h2>
            <p>Have a question about a job posting or need technical support? Transmit your message to our core team.</p>

            <div class="info-item">
                <div class="info-icon">@</div>
                <div class="info-text">
                    <h4>Transmission Array</h4>
                    <span>support@aerojobs.tech</span>
                </div>
            </div>

            <div class="info-item">
                <div class="info-icon">#</div>
                <div class="info-text">
                    <h4>Direct Frequency</h4>
                    <span>+1 (800) 555-AERO</span>
                </div>
            </div>

            <div class="info-item">
                <div class="info-icon">📍</div>
                <div class="info-text">
                    <h4>Central Hub</h4>
                    <span>Cyber Valley, Sector 7</span>
                </div>
            </div>
        </div>

        <!-- Right Panel: Form -->
        <div class="contact-form">
            <form action="handleformcontact" method="POST">

                <div class="form-group">
                    <label for="name">Operator Name</label>
                    <input type="text" id="name" class="form-control" placeholder="Identify yourself..." required>
                </div>

                <div class="form-group">
                    <label for="email">Return Signal (Email)</label>
                    <input type="email" id="email" class="form-control" placeholder="your@email.com" required>
                </div>

                <div class="form-group">
                    <label for="message">Data Payload (Message)</label>
                    <textarea id="message" class="form-control" placeholder="Enter your transmission here..." required></textarea>
                </div>

                <button type="submit" class="submit-btn">Send Transmission</button>
            </form>
        </div>

    </div>
</div>

</body>
</html>