<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Futuristic Job Portal</title>
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
            padding: 20px 5% ;
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

        .nav-links li a:hover {
            color: #ffffff;
            background: rgba(0, 229, 255, 0.1);
            box-shadow: 0 0 15px rgba(0, 229, 255, 0.3);
            text-shadow: 0 0 5px rgba(255, 255, 255, 0.8);
        }

        /* Hero Section */
        .hero {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 120px 20px;
            min-height: calc(100vh - 80px);
            position: relative;
        }

        .hero h1 {
            font-size: 4rem;
            margin-bottom: 25px;
            background: linear-gradient(to right, #00e5ff, #e000ff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: fadeInDown 1s ease-out;
        }

        .hero p {
            font-size: 1.2rem;
            color: #b3b3b3;
            max-width: 650px;
            margin-bottom: 45px;
            line-height: 1.7;
            animation: fadeInUp 1s ease-out 0.2s both;
        }

        /* Interactive Buttons */
        .cta-buttons {
            display: flex;
            gap: 25px;
            animation: fadeInUp 1s ease-out 0.4s both;
        }

        .btn {
            padding: 15px 35px;
            font-size: 16px;
            font-weight: 600;
            text-decoration: none;
            border-radius: 30px;
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            cursor: pointer;
        }

        .btn-primary {
            background: transparent;
            color: #00e5ff;
            border: 2px solid #00e5ff;
            box-shadow: 0 0 15px rgba(0, 229, 255, 0.2), inset 0 0 10px rgba(0, 229, 255, 0.1);
        }

        .btn-primary:hover {
            background: #00e5ff;
            color: #0a0a0a;
            box-shadow: 0 0 25px rgba(0, 229, 255, 0.8), inset 0 0 15px rgba(255, 255, 255, 0.5);
            transform: translateY(-5px);
        }

        .btn-secondary {
            background: rgba(255, 255, 255, 0.05);
            color: #ffffff;
            border: 2px solid rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(5px);
        }

        .btn-secondary:hover {
            background: rgba(255, 255, 255, 0.15);
            border-color: rgba(255, 255, 255, 0.3);
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        /* Ambient Glow Effects */
        .ambient-glow {
            position: absolute;
            width: 400px;
            height: 400px;
            background: #e000ff;
            border-radius: 50%;
            filter: blur(200px);
            z-index: -1;
            opacity: 0.2;
            top: 10%;
            left: 50%;
            transform: translateX(-50%);
            animation: pulse 6s infinite alternate;
        }

        /* Simple Animations */
        @keyframes fadeInDown {
            from { opacity: 0; transform: translateY(-30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes pulse {
            0% { opacity: 0.1; transform: translateX(-50%) scale(0.9); }
            100% { opacity: 0.3; transform: translateX(-50%) scale(1.1); }
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

<!-- Top Dashboard Navbar -->
<nav>
    <div class="logo">AERO JOBS</div>
    <ul class="nav-links">
        <li><a href="/home">Home</a></li>
        <li><a href="/addjobs">Add Jobs</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
</nav>

<!-- Main Landing Area -->
<div class="hero">
    <div class="ambient-glow"></div>
    <h1>Next-Gen Career Portal</h1>
    <p>Discover top opportunities or recruit the brightest minds. Our intelligent ecosystem connects talent with visionary companies instantly. The future of your career begins here.</p>
    <div class="cta-buttons">
        <a href="/home" class="btn btn-primary">Search Jobs</a>
        <a href="/addjobs" class="btn btn-secondary">Add a Job</a>
    </div>
</div>

</body>
</html>