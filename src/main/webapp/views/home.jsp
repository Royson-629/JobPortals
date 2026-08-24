<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Aero Jobs</title>
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

        /* Main Container */
        .container {
            padding: 40px 5%;
            max-width: 1200px;
            margin: 0 auto;
        }

        /* Search Section */
        .search-section {
            display: flex;
            justify-content: center;
            margin-bottom: 50px;
            animation: fadeInDown 0.8s ease-out;
        }

        .search-box {
            display: flex;
            width: 100%;
            max-width: 700px;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(0, 229, 255, 0.3);
            border-radius: 30px;
            padding: 5px;
            backdrop-filter: blur(10px);
            box-shadow: 0 0 20px rgba(0, 229, 255, 0.1);
        }

        .search-box input {
            flex: 1;
            background: transparent;
            border: none;
            padding: 15px 25px;
            color: #fff;
            font-size: 16px;
            outline: none;
        }

        .search-box input::placeholder {
            color: #a0aec0;
        }

        .search-btn {
            background: linear-gradient(135deg, #00e5ff, #0088ff);
            border: none;
            padding: 0 30px;
            border-radius: 25px;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 0 15px rgba(0, 229, 255, 0.4);
        }

        .search-btn:hover {
            box-shadow: 0 0 25px rgba(0, 229, 255, 0.8);
            transform: scale(1.05);
        }

        /* Section Titles */
        .section-title {
            font-size: 24px;
            margin-bottom: 20px;
            color: #fff;
            border-left: 4px solid #e000ff;
            padding-left: 10px;
            text-shadow: 0 0 10px rgba(224, 0, 255, 0.5);
            animation: fadeInUp 1s ease-out;
        }

        /* Job Cards Grid */
        .job-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 25px;
            margin-bottom: 50px;
        }

        .job-card {
            background: rgba(255, 255, 255, 0.03);
            border: 1px solid rgba(255, 255, 255, 0.08);
            border-radius: 15px;
            padding: 25px;
            backdrop-filter: blur(10px);
            transition: all 0.4s ease;
            animation: fadeInUp 1s ease-out;
            cursor: pointer;
        }

        .job-card:hover {
            transform: translateY(-10px);
            border-color: #00e5ff;
            box-shadow: 0 10px 30px rgba(0, 229, 255, 0.2);
            background: rgba(255, 255, 255, 0.08);
        }

        .job-card h3 {
            color: #00e5ff;
            margin-bottom: 10px;
            font-size: 20px;
        }

        .job-card .company {
            color: #e000ff;
            font-weight: bold;
            font-size: 14px;
            margin-bottom: 15px;
        }

        .job-card p {
            color: #cbd5e1;
            font-size: 14px;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        .job-tags {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
        }

        .tag {
            background: rgba(0, 229, 255, 0.1);
            color: #00e5ff;
            padding: 5px 12px;
            border-radius: 20px;
            font-size: 12px;
            border: 1px solid rgba(0, 229, 255, 0.3);
            text-transform: capitalize;
        }

        /* Ambient Glow Effects */
        .ambient-glow-1 {
            position: fixed;
            width: 300px;
            height: 300px;
            background: #00e5ff;
            border-radius: 50%;
            filter: blur(150px);
            z-index: -1;
            opacity: 0.15;
            top: 20%;
            left: 10%;
        }

        .ambient-glow-2 {
            position: fixed;
            width: 400px;
            height: 400px;
            background: #e000ff;
            border-radius: 50%;
            filter: blur(200px);
            z-index: -1;
            opacity: 0.15;
            bottom: 10%;
            right: 5%;
        }

        /* Animations */
        @keyframes fadeInDown {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @media (max-width: 768px) {
            nav { flex-direction: column; gap: 15px; padding: 15px 5%; }
            .nav-links { flex-wrap: wrap; justify-content: center; gap: 10px; }
            .search-box { flex-direction: column; background: transparent; border: none; padding: 0; gap: 10px; }
            .search-box input { border-radius: 15px; border: 1px solid rgba(0, 229, 255, 0.3); background: rgba(255, 255, 255, 0.05); }
            .search-btn { padding: 15px; border-radius: 15px; }
            .job-grid { grid-template-columns: 1fr; }
        }
    </style>
</head>
<body>

<div class="ambient-glow-1"></div>
<div class="ambient-glow-2"></div>

<!-- Top Dashboard Navbar -->
<nav>
    <div class="logo">AERO JOBS</div>
    <ul class="nav-links">
        <li><a href="/home" class="active">Home</a></li>
        <li><a href="/addjobs">Add Jobs</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
</nav>

<div class="container">

    <div class="search-section">
        <div class="search-box">
            <input type="text" id="searchInput" placeholder="Search by job title, skill, or company..." autocomplete="off">

        </div>
    </div>

    <!-- Recent Jobs Section -->
    <h2 class="section-title">Latest Opportunities</h2>
    <div class="job-grid">

        <c:forEach var="job" items="${Jobposts}">
            <div class="job-card">
                <h3>${job.jobtitle}</h3>
                <div class="company">${job.companyname}</div>
                <p>${job.desc}</p>
                <div class="job-tags">
                    <span class="tag">${job.work_model}</span>
                    <c:forEach var="t" items="${job.techs}">
                        <span class="tag">${t}</span>
                    </c:forEach>
                    <span class="tag">${job.emp_type}</span>
                </div>
            </div>
        </c:forEach>

    </div>
</div>
<script>
    document.getElementById('searchInput').addEventListener('input', (e) => {
        const query = e.target.value.toLowerCase().trim();
        document.querySelectorAll('.job-card').forEach(card => {
            card.style.display = card.innerText.toLowerCase().includes(query) ? 'block' : 'none';
        });
    });
</script>
</body>
</html>