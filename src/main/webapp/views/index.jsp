<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aero Jobs - Next-Gen Career Portal</title>
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
                    radial-gradient(at 15% 15%, rgba(99, 102, 241, 0.12) 0px, transparent 50%),
                    radial-gradient(at 85% 20%, rgba(168, 85, 247, 0.1) 0px, transparent 50%),
                    radial-gradient(at 50% 80%, rgba(224, 231, 255, 0.5) 0px, transparent 60%);
            color: var(--text-dark);
            min-height: 100vh;
            overflow-x: hidden;
            display: flex;
            flex-direction: column;
        }

        /* SaaS Header Navbar */
        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 18px 8%;
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
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
            color: var(--text-dark);
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

        .nav-links li a:hover {
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

        .nav-right-btn:hover {
            background: #1e293b;
            transform: translateY(-1px);
            box-shadow: 0 4px 12px rgba(15, 23, 42, 0.15);
        }

        /* Hero Section */
        .hero {
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 80px 20px 100px;
            position: relative;
        }

        .announcement-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: #ffffff;
            border: 1px solid var(--border-subtle);
            padding: 6px 16px;
            border-radius: 9999px;
            font-size: 13px;
            font-weight: 600;
            color: var(--primary);
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.04);
            margin-bottom: 24px;
        }

        .hero h1 {
            font-size: 3.8rem;
            font-weight: 800;
            letter-spacing: -1.5px;
            line-height: 1.15;
            color: var(--text-dark);
            max-width: 820px;
            margin-bottom: 20px;
        }

        .hero h1 span {
            background: linear-gradient(135deg, #6366f1 0%, #a855f7 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            font-size: 1.15rem;
            color: var(--text-muted);
            max-width: 620px;
            line-height: 1.6;
            margin-bottom: 40px;
            font-weight: 500;
        }

        .cta-buttons {
            display: flex;
            gap: 16px;
            align-items: center;
        }

        .btn {
            padding: 14px 28px;
            font-size: 15px;
            font-weight: 700;
            text-decoration: none;
            border-radius: 9999px;
            transition: all 0.25s ease;
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }

        .btn-primary {
            background: var(--primary);
            color: #ffffff;
            box-shadow: 0 4px 14px rgba(99, 102, 241, 0.4);
        }

        .btn-primary:hover {
            background: var(--primary-hover);
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(99, 102, 241, 0.5);
        }

        .btn-secondary {
            background: #ffffff;
            color: var(--text-dark);
            border: 1px solid var(--border-subtle);
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.04);
        }

        .btn-secondary:hover {
            background: #f1f5f9;
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.06);
        }

        /* Floating Pill Tags */
        .floating-pill {
            position: absolute;
            background: #ffffff;
            border: 1px solid var(--border-subtle);
            padding: 10px 18px;
            border-radius: 9999px;
            font-size: 13px;
            font-weight: 600;
            color: var(--text-dark);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.05);
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .pill-dot {
            width: 8px;
            height: 8px;
            background: #22c55e;
            border-radius: 50%;
        }

        .pill-1 { top: 22%; left: 10%; }
        .pill-2 { top: 28%; right: 10%; }

        @media (max-width: 900px) {
            .floating-pill { display: none; }
            .hero h1 { font-size: 2.5rem; }
            nav { padding: 15px 5%; }
            .nav-links { gap: 15px; }
        }

        @media (max-width: 600px) {
            nav { flex-direction: column; gap: 15px; }
            .cta-buttons { flex-direction: column; width: 100%; }
            .btn { width: 100%; }
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
        <li><a href="/home">Explore</a></li>
        <li><a href="/addjobs">Add Jobs</a></li>
        <li><a href="/contact">Support</a></li>
        <li><a href="/contact" class="nav-right-btn">Contact Us</a></li>
    </ul>
</nav>

<div class="hero">
    <div class="floating-pill pill-1">
        <span class="pill-dot"></span> Web Developer Roles
    </div>
    <div class="floating-pill pill-2">
        <span class="pill-dot" style="background:#a855f7;"></span> Tech Talent Matched
    </div>

    <div class="announcement-badge">
        <span>✨ Seamless Hiring Platform</span>
    </div>

    <h1>Simplify Tech Recruitment <span>Boost Productivity</span></h1>
    <p>Easily manage job postings and discover top verified developer talent from start to finish.</p>

    <div class="cta-buttons">
        <a href="/home" class="btn btn-primary">Get Started Free</a>
        <a href="/addjobs" class="btn btn-secondary">Post a Position</a>
    </div>
</div>

</body>
</html>