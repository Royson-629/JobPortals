<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Opportunities - Aero Jobs</title>
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

        /* Navbar */
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

        .nav-right-btn:hover {
            background: #1e293b;
            transform: translateY(-1px);
        }

        /* Container */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 40px 24px 80px;
        }

        .page-header {
            text-align: center;
            margin-bottom: 36px;
        }

        .page-header h1 {
            font-size: 2.4rem;
            font-weight: 800;
            letter-spacing: -1px;
            color: var(--text-dark);
            margin-bottom: 8px;
        }

        .page-header p {
            color: var(--text-muted);
            font-size: 1rem;
        }

        /* Search Section */
        .search-section {
            display: flex;
            justify-content: center;
            margin-bottom: 40px;
        }

        .search-box {
            display: flex;
            width: 100%;
            max-width: 650px;
            background: #ffffff;
            border: 1px solid var(--border-subtle);
            border-radius: 9999px;
            padding: 6px 18px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.04);
            align-items: center;
        }

        .search-box input {
            flex: 1;
            background: transparent;
            border: none;
            padding: 12px 10px;
            color: var(--text-dark);
            font-size: 15px;
            outline: none;
        }

        .search-box input::placeholder {
            color: #94a3b8;
        }

        /* Board Headers */
        .board-top-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 24px;
        }

        .board-title {
            font-size: 1.25rem;
            font-weight: 700;
            color: var(--text-dark);
        }

        /* Job Grid */
        .job-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(340px, 1fr));
            gap: 22px;
        }

        .job-card {
            background: #ffffff;
            border: 1px solid var(--border-subtle);
            border-radius: 18px;
            padding: 24px;
            transition: all 0.25s ease;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.02);
            position: relative;
        }

        .job-card:hover {
            transform: translateY(-4px);
            border-color: #c7d2fe;
            box-shadow: 0 12px 28px rgba(99, 102, 241, 0.08);
        }

        .job-header {
            margin-bottom: 14px;
        }

        .job-card h3 {
            color: var(--text-dark);
            font-size: 1.15rem;
            font-weight: 700;
            margin-bottom: 4px;
        }

        .job-card .company {
            color: var(--primary);
            font-weight: 600;
            font-size: 13px;
        }

        .job-card p {
            color: var(--text-muted);
            font-size: 14px;
            line-height: 1.6;
            margin-bottom: 20px;
            flex-grow: 1;
        }

        .job-tags {
            display: flex;
            gap: 8px;
            flex-wrap: wrap;
            border-top: 1px solid #f1f5f9;
            padding-top: 14px;
        }

        .tag {
            background: #f1f5f9;
            color: #475569;
            padding: 4px 12px;
            border-radius: 9999px;
            font-size: 12px;
            font-weight: 600;
            text-transform: capitalize;
        }

        .tag-model {
            background: #e0e7ff;
            color: var(--primary);
        }

        .tag-type {
            background: #fdf2f8;
            color: #db2777;
        }

        @media (max-width: 768px) {
            nav { flex-direction: column; gap: 15px; padding: 15px 5%; }
            .nav-links { flex-wrap: wrap; justify-content: center; gap: 12px; }
            .job-grid { grid-template-columns: 1fr; }
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
        <li><a href="/home" class="active">Home</a></li>
        <li><a href="/addjobs">Add Jobs</a></li>
        <li><a href="/contact">Support</a></li>
        <li><a href="/contact" class="nav-right-btn">Contact Us</a></li>
    </ul>
</nav>

<div class="container">
    <div class="page-header">
        <h1>Latest Opportunities</h1>
        <p>Explore high-impact technical roles verified across leading engineering teams.</p>
    </div>

    <div class="search-section">
        <div class="search-box">
            <input type="text" id="searchInput" placeholder="Search by job title, skill, or company..." autocomplete="off">
        </div>
    </div>

    <div class="board-top-bar">
        <div class="board-title">Open Positions</div>
    </div>

    <div class="job-grid">
        <c:forEach var="job" items="${Jobposts}">
            <div class="job-card">
                <div class="job-header">
                    <h3>${job.jobtitle}</h3>
                    <div class="company">${job.companyname}</div>
                </div>
                <p>${job.desc}</p>
                <div class="job-tags">
                    <span class="tag tag-model">${job.work_model}</span>
                    <c:forEach var="t" items="${job.techs}">
                        <span class="tag">${t}</span>
                    </c:forEach>
                    <span class="tag tag-type">${job.emp_type}</span>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<script>
    document.getElementById('searchInput').addEventListener('input', (e) => {
        const query = e.target.value.toLowerCase().trim();
        document.querySelectorAll('.job-card').forEach(card => {
            card.style.display = card.innerText.toLowerCase().includes(query) ? 'flex' : 'none';
        });
    });
</script>
</body>
</html>