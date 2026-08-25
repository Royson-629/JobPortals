<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Support - Aero Jobs</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Plus Jakarta Sans', -apple-system, BlinkMacSystemFont, sans-serif;
        }

        :root {
            --primary: #6366f1;
            --primary-hover: #4f46e5;
            --dark-btn: #0f172a;
            --text-dark: #0f172a;
            --text-muted: #64748b;
            --bg-page: #f8fafc;
            --card-bg: #ffffff;
            --border-subtle: #e2e8f0;
        }

        body {
            background-color: var(--bg-page);
            background-image:
                    radial-gradient(at 10% 10%, rgba(99, 102, 241, 0.08) 0px, transparent 50%),
                    radial-gradient(at 90% 20%, rgba(168, 85, 247, 0.08) 0px, transparent 50%);
            color: var(--text-dark);
            min-height: 100vh;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 18px 8%;
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid var(--border-subtle);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .logo-wrap {
            display: flex;
            align-items: center;
            gap: 10px;
            text-decoration: none;
            color: var(--text-dark);
        }

        .logo-icon {
            width: 36px;
            height: 36px;
            background: linear-gradient(135deg, #6366f1, #8b5cf6);
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            font-weight: 800;
            font-size: 18px;
            box-shadow: 0 4px 12px rgba(99, 102, 241, 0.3);
        }

        .logo-text {
            font-size: 20px;
            font-weight: 800;
            letter-spacing: -0.5px;
        }

        .nav-links {
            list-style: none;
            display: flex;
            align-items: center;
            gap: 32px;
        }

        .nav-links li a {
            text-decoration: none;
            color: var(--text-muted);
            font-size: 15px;
            font-weight: 600;
            transition: all 0.2s ease;
        }

        .nav-links li a.active, .nav-links li a:hover {
            color: var(--primary);
        }

        .nav-right-btn {
            background: var(--dark-btn);
            color: #ffffff !important;
            padding: 10px 22px;
            border-radius: 9999px;
            font-size: 14px;
            font-weight: 600;
            text-decoration: none;
            transition: all 0.25s ease;
        }

        .container {
            padding: 50px 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .contact-wrapper {
            display: flex;
            background: #ffffff;
            border: 1px solid var(--border-subtle);
            border-radius: 24px;
            width: 100%;
            max-width: 960px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.04);
            overflow: hidden;
        }

        .contact-info {
            flex: 1;
            background: #f8fafc;
            padding: 48px 36px;
            border-right: 1px solid var(--border-subtle);
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .contact-info h2 {
            font-size: 1.8rem;
            font-weight: 800;
            color: var(--text-dark);
            margin-bottom: 12px;
            letter-spacing: -0.5px;
        }

        .contact-info p {
            color: var(--text-muted);
            font-size: 14px;
            line-height: 1.6;
            margin-bottom: 36px;
        }

        .info-item {
            display: flex;
            align-items: center;
            margin-bottom: 22px;
        }

        .info-icon {
            width: 40px;
            height: 40px;
            background: #e0e7ff;
            border-radius: 10px;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-right: 14px;
            color: var(--primary);
            font-weight: bold;
            font-size: 16px;
        }

        .info-text h4 {
            color: var(--text-dark);
            font-size: 14px;
            font-weight: 700;
            margin-bottom: 2px;
        }

        .info-text span {
            color: var(--text-muted);
            font-size: 13px;
        }

        .contact-form {
            flex: 1.4;
            padding: 48px 40px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            margin-bottom: 20px;
        }

        .form-group label {
            color: var(--text-dark);
            font-size: 13px;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .form-control {
            background: #f8fafc;
            border: 1px solid var(--border-subtle);
            border-radius: 12px;
            padding: 13px 16px;
            color: var(--text-dark);
            font-size: 15px;
            outline: none;
            transition: all 0.2s ease;
        }

        .form-control::placeholder {
            color: #94a3b8;
        }

        .form-control:focus {
            background: #ffffff;
            border-color: var(--primary);
            box-shadow: 0 0 0 4px rgba(99, 102, 241, 0.12);
        }

        textarea.form-control {
            resize: vertical;
            min-height: 130px;
        }

        .submit-btn {
            background: var(--dark-btn);
            color: #ffffff;
            border: none;
            padding: 14px 30px;
            font-size: 15px;
            font-weight: 700;
            border-radius: 9999px;
            cursor: pointer;
            transition: all 0.25s ease;
            float: right;
            box-shadow: 0 4px 12px rgba(15, 23, 42, 0.15);
        }

        .submit-btn:hover {
            background: #1e293b;
            transform: translateY(-2px);
        }

        @media (max-width: 850px) {
            .contact-wrapper { flex-direction: column; }
            .contact-info { border-right: none; border-bottom: 1px solid var(--border-subtle); }
            nav { flex-direction: column; gap: 15px; padding: 15px 5%; }
            .nav-links { flex-wrap: wrap; justify-content: center; gap: 10px; }
        }
    </style>
</head>
<body>

<nav>
    <a href="/home" class="logo-wrap">
        <div class="logo-icon">✦</div>
        <div class="logo-text">AeroJobs</div>
    </a>
    <ul class="nav-links">
        <li><a href="/home">Home</a></li>
        <li><a href="/addjobs">Add Jobs</a></li>
        <li><a href="/contact" class="active">Support</a></li>
        <li><a href="/contact" class="nav-right-btn">Contact Us</a></li>
    </ul>
</nav>

<div class="container">
    <div class="contact-wrapper">
        <div class="contact-info">
            <h2>Get in Touch</h2>
            <p>Have questions regarding an open role or need portal support? Send us a quick note and we'll reply shortly.</p>

            <div class="info-item">
                <div class="info-icon">@</div>
                <div class="info-text">
                    <h4>Direct Email</h4>
                    <span>support@aerojobs.tech</span>
                </div>
            </div>

            <div class="info-item">
                <div class="info-icon">#</div>
                <div class="info-text">
                    <h4>Phone Frequency</h4>
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

        <div class="contact-form">
            <form action="handleformcontact" method="POST">
                <div class="form-group">
                    <label for="name">Operator Name</label>
                    <input type="text" id="name" class="form-control" placeholder="Identify yourself..." required>
                </div>

                <div class="form-group">
                    <label for="email">Return Email</label>
                    <input type="email" id="email" class="form-control" placeholder="your@email.com" required>
                </div>

                <div class="form-group">
                    <label for="message">Message</label>
                    <textarea id="message" class="form-control" placeholder="Enter your transmission here..." required></textarea>
                </div>

                <button type="submit" class="submit-btn">Send Message</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>