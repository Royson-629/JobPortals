<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Added - Aero Jobs</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Segoe UI', Tahoma, sans-serif; }
        body { background: linear-gradient(135deg, #0f0c29, #302b63, #24243e); color: #fff; min-height: 100vh; display: flex; flex-direction: column; }

        /* Navbar */
        nav { display: flex; justify-content: space-between; align-items: center; padding: 20px 5%; background: rgba(255, 255, 255, 0.05); backdrop-filter: blur(15px); border-bottom: 1px solid rgba(255, 255, 255, 0.1); position: sticky; top: 0; z-index: 100; }
        .logo { font-size: 26px; font-weight: 800; color: #00e5ff; text-shadow: 0 0 10px rgba(0, 229, 255, 0.6); }
        .nav-links { list-style: none; display: flex; gap: 40px; }
        .nav-links li a { text-decoration: none; color: #d1d5db; transition: 0.3s; padding: 8px 16px; }

        /* Container & Card */
        .container { flex: 1; display: flex; justify-content: center; align-items: center; padding: 20px; position: relative; }
        .status-card { background: rgba(255, 255, 255, 0.03); border: 1px solid rgba(0, 255, 204, 0.3); border-radius: 20px; padding: 50px; width: 100%; max-width: 500px; text-align: center; backdrop-filter: blur(15px); box-shadow: 0 15px 35px rgba(0, 255, 204, 0.15); animation: fadeInUp 0.6s ease-out; }

        /* Success Glow */
        .ambient-glow { position: absolute; width: 300px; height: 300px; background: #00ffcc; border-radius: 50%; filter: blur(150px); z-index: -1; opacity: 0.2; }

        /* Status Elements */
        .icon { font-size: 70px; margin-bottom: 20px; color: #00ffcc; text-shadow: 0 0 20px rgba(0, 255, 204, 0.6); }
        h1 { font-size: 2rem; margin-bottom: 15px; color: #00ffcc; }
        p { color: #cbd5e1; margin-bottom: 30px; font-size: 1.1rem; line-height: 1.5; }

        /* Buttons */
        .btn { display: inline-block; background: transparent; color: #00e5ff; border: 2px solid #00e5ff; padding: 12px 30px; border-radius: 30px; text-decoration: none; font-weight: bold; transition: 0.3s; box-shadow: 0 0 10px rgba(0, 229, 255, 0.2); }
        .btn:hover { background: #00e5ff; color: #0a0a0a; box-shadow: 0 0 20px rgba(0, 229, 255, 0.6); transform: translateY(-3px); }

        @keyframes fadeInUp { from { opacity: 0; transform: translateY(20px); } to { opacity: 1; transform: translateY(0); } }
    </style>
</head>
<body>
<nav>
    <div class="logo">AERO JOBS</div>
    <ul class="nav-links">
        <li><a href="/home">Home</a></li>
        <li><a href="/addjobs">Add Jobs</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
</nav>

<div class="container">
    <div class="ambient-glow"></div>
    <div class="status-card">
        <div class="icon">✓</div>
        <h1>Listing Deployed</h1>
        <p>Your job position has been successfully broadcasted to the Aero network.</p>
        <a href="/index" class="btn">Return to Dashboard</a>
    </div>
</div>
</body>
</html>