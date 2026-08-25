<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Added - Aero Jobs</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Plus Jakarta Sans', sans-serif; }
        :root {
            --primary: #6366f1;
            --text-dark: #0f172a;
            --text-muted: #64748b;
            --bg-page: #f8fafc;
            --border-subtle: #e2e8f0;
        }
        body {
            background-color: var(--bg-page);
            background-image: radial-gradient(at 50% 50%, rgba(99, 102, 241, 0.08) 0px, transparent 60%);
            color: var(--text-dark);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 18px 8%;
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid var(--border-subtle);
        }
        .logo-wrap { display: flex; align-items: center; gap: 10px; text-decoration: none; color: var(--text-dark); }
        .logo-icon { width: 36px; height: 36px; background: linear-gradient(135deg, #6366f1, #8b5cf6); border-radius: 10px; display: flex; align-items: center; justify-content: center; color: #fff; font-weight: 800; font-size: 18px; }
        .logo-text { font-size: 20px; font-weight: 800; }
        .nav-links { list-style: none; display: flex; gap: 32px; }
        .nav-links li a { text-decoration: none; color: var(--text-muted); font-size: 15px; font-weight: 600; }

        .container { flex: 1; display: flex; justify-content: center; align-items: center; padding: 24px; }
        .status-card {
            background: #ffffff;
            border: 1px solid var(--border-subtle);
            border-radius: 24px;
            padding: 50px 40px;
            width: 100%;
            max-width: 480px;
            text-align: center;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.04);
        }
        .icon {
            width: 64px;
            height: 64px;
            background: #dcfce7;
            color: #16a34a;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 28px;
            margin: 0 auto 20px;
            font-weight: bold;
        }
        h1 { font-size: 1.8rem; font-weight: 800; margin-bottom: 10px; color: var(--text-dark); }
        p { color: var(--text-muted); font-size: 15px; line-height: 1.6; margin-bottom: 30px; }
        .btn {
            display: inline-block;
            background: var(--primary);
            color: #ffffff;
            padding: 13px 28px;
            border-radius: 9999px;
            text-decoration: none;
            font-weight: 700;
            font-size: 14px;
            transition: 0.25s;
            box-shadow: 0 4px 12px rgba(99, 102, 241, 0.3);
        }
        .btn:hover { background: #4f46e5; transform: translateY(-2px); }
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
        <li><a href="/contact">Support</a></li>
    </ul>
</nav>

<div class="container">
    <div class="status-card">
        <div class="icon">✓</div>
        <h1>Position Published</h1>
        <p>Your job position has been successfully broadcasted across the Aero network.</p>
        <a href="/home" class="btn">Return to Dashboard</a>
    </div>
</div>
</body>
</html>