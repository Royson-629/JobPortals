<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Post a Position - Aero Jobs</title>
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

        .form-wrapper {
            background: #ffffff;
            border: 1px solid var(--border-subtle);
            border-radius: 24px;
            padding: 44px;
            width: 100%;
            max-width: 760px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.04);
        }

        .form-header {
            text-align: center;
            margin-bottom: 36px;
        }

        .form-header h2 {
            font-size: 2rem;
            font-weight: 800;
            color: var(--text-dark);
            letter-spacing: -0.8px;
            margin-bottom: 8px;
        }

        .form-header p {
            color: var(--text-muted);
            font-size: 15px;
        }

        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            margin-bottom: 20px;
        }

        .form-group.full-width {
            grid-column: span 2;
        }

        .form-group label {
            color: var(--text-dark);
            font-size: 13px;
            font-weight: 700;
            margin-bottom: 8px;
            letter-spacing: 0.3px;
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

        select.form-control {
            cursor: pointer;
        }

        textarea.form-control {
            resize: vertical;
            min-height: 120px;
        }

        .submit-btn {
            background: var(--primary);
            color: #ffffff;
            border: none;
            padding: 15px;
            font-size: 16px;
            font-weight: 700;
            border-radius: 9999px;
            cursor: pointer;
            width: 100%;
            margin-top: 15px;
            transition: all 0.25s ease;
            box-shadow: 0 4px 14px rgba(99, 102, 241, 0.35);
        }

        .submit-btn:hover {
            background: var(--primary-hover);
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(99, 102, 241, 0.45);
        }

        /* Multi-Select Tags */
        .multi-select-wrapper {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
            cursor: text;
            min-height: 50px;
            align-items: center;
            padding: 8px 14px;
            background: #f8fafc;
            border: 1px solid var(--border-subtle);
            border-radius: 12px;
            transition: all 0.2s ease;
        }

        .multi-select-wrapper:focus-within {
            background: #ffffff;
            border-color: var(--primary);
            box-shadow: 0 0 0 4px rgba(99, 102, 241, 0.12);
        }

        .tech-search-input {
            background: transparent;
            border: none;
            color: var(--text-dark);
            font-size: 15px;
            outline: none;
            flex-grow: 1;
            min-width: 140px;
        }

        .tech-search-input::placeholder { color: #94a3b8; }

        .selected-tags { display: flex; flex-wrap: wrap; gap: 8px; }

        .tech-tag {
            background: #e0e7ff;
            border: 1px solid #c7d2fe;
            color: var(--primary);
            padding: 4px 12px;
            border-radius: 9999px;
            font-size: 13px;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .tech-tag em { font-style: normal; }

        .tech-tag .remove-tag {
            cursor: pointer;
            font-weight: bold;
            color: var(--primary);
            transition: color 0.2s;
            font-size: 14px;
            line-height: 1;
        }

        .tech-tag .remove-tag:hover { color: #ef4444; }

        .tech-dropdown {
            position: absolute;
            top: 100%;
            left: 0;
            width: 100%;
            background: #ffffff;
            border: 1px solid var(--border-subtle);
            border-radius: 12px;
            margin-top: 6px;
            max-height: 220px;
            overflow-y: auto;
            z-index: 1000;
            display: none;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
        }

        .tech-dropdown.show { display: block; }

        .tech-option {
            padding: 10px 16px;
            cursor: pointer;
            color: #334155;
            transition: all 0.2s ease;
            font-size: 14px;
            font-weight: 500;
        }

        .tech-option:hover {
            background: #f1f5f9;
            color: var(--primary);
            padding-left: 20px;
        }

        @media (max-width: 768px) {
            .form-grid { grid-template-columns: 1fr; }
            .form-group.full-width { grid-column: span 1; }
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
        <li><a href="/addjobs" class="active">Add Jobs</a></li>
        <li><a href="/contact">Support</a></li>
        <li><a href="/contact" class="nav-right-btn">Contact Us</a></li>
    </ul>
</nav>

<div class="container">
    <div class="form-wrapper">
        <div class="form-header">
            <h2>Broadcast a Position</h2>
            <p>Deploy your requirements to our verified technical talent network.</p>
        </div>

        <form action="handleform" method="POST">
            <div class="form-grid">
                <div class="form-group">
                    <label for="jobTitle">Job Title</label>
                    <input type="text" name="jobtitle" id="jobTitle" class="form-control" placeholder="e.g. Senior Frontend Developer" required>
                </div>

                <div class="form-group">
                    <label for="companyName">Company Name</label>
                    <input type="text" name="companyname" id="companyName" class="form-control" placeholder="e.g. Nexus Tech Corp" required>
                </div>

                <div class="form-group">
                    <label for="workModel">Work Model</label>
                    <select name="work_model" id="workModel" class="form-control" required>
                        <option value="" disabled selected>Select Model</option>
                        <option value="remote">Fully Remote</option>
                        <option value="hybrid">Hybrid</option>
                        <option value="onsite">On-Site</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="jobType">Employment Type</label>
                    <select name="emp_type" id="jobType" class="form-control" required>
                        <option value="" disabled selected>Select Type</option>
                        <option value="fulltime">Full-Time</option>
                        <option value="parttime">Part-Time</option>
                        <option value="contract">Contract</option>
                        <option value="freelance">Freelance</option>
                    </select>
                </div>

                <div class="form-group full-width" style="position: relative;">
                    <label>Key Technologies / Tags</label>
                    <div class="multi-select-wrapper" id="techWrapper">
                        <div class="selected-tags" id="selectedTags"></div>
                        <input type="text" id="techSearch" class="tech-search-input" placeholder="Search technologies..." autocomplete="off">
                    </div>
                    <div class="tech-dropdown" id="techDropdown"></div>
                    <div id="hiddenInputsContainer"></div>
                </div>

                <div class="form-group full-width">
                    <label for="jobDescription">Job Description</label>
                    <textarea name="desc" id="jobDescription" class="form-control" placeholder="Describe the responsibilities, requirements, and mission of this role..." required></textarea>
                </div>
            </div>

            <button type="submit" class="submit-btn">Publish Position</button>
        </form>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', () => {
        const availableTech = [
            "Java", "JavaScript", "Swift", "TypeScript", "Go", "Kotlin", "Rust", "PHP",
            "HTML5", "CSS3", "GraphQL", "Raspberry Pi", "Arduino", "IoT (Internet of Things)",
            "Apache Kafka", "Elasticsearch", "Unity", "Game Development", "Vue.js", "Angular",
            "React Native", "Flutter", "Node.js", "Express.js", "Django", "Flask",
            "Ruby on Rails", "Laravel", "TensorFlow", "PyTorch", "Kubernetes", "Docker",
            "Jenkins", "AWS (Amazon Web Services)", "Azure", "Google Cloud", "DevOps",
            "Blockchain", "Machine Learning", "Artificial Intelligence", "Cybersecurity",
            "CISSP (Certified Information Systems Security Professional)",
            "CompTIA Security+", "Certified Ethical Hacker (CEH)", "Scrum", "Agile", "Kanban"
        ];

        const uniqueTechList = [...new Set(availableTech)];
        const selectedTech = [];

        const techWrapper = document.getElementById('techWrapper');
        const techSearch = document.getElementById('techSearch');
        const techDropdown = document.getElementById('techDropdown');
        const selectedTagsContainer = document.getElementById('selectedTags');
        const hiddenInputsContainer = document.getElementById('hiddenInputsContainer');

        function renderDropdown(filterText = "") {
            techDropdown.innerHTML = "";

            const filtered = uniqueTechList.filter(tech =>
                !selectedTech.includes(tech) &&
                tech.toLowerCase().includes(filterText.trim().toLowerCase())
            );

            if (filtered.length === 0) {
                const emptyItem = document.createElement('div');
                emptyItem.className = 'tech-option';
                emptyItem.style.color = '#94a3b8';
                emptyItem.style.cursor = 'default';
                emptyItem.textContent = 'No matching technologies';
                techDropdown.appendChild(emptyItem);
                return;
            }

            filtered.forEach(tech => {
                const option = document.createElement('div');
                option.className = 'tech-option';
                option.textContent = tech;
                option.addEventListener('click', (e) => {
                    e.stopPropagation();
                    selectTech(tech);
                });
                techDropdown.appendChild(option);
            });
        }

        function selectTech(tech) {
            if (!selectedTech.includes(tech)) {
                selectedTech.push(tech);
                techSearch.value = "";
                updateUI();
            }
        }

        function removeTech(tech) {
            const index = selectedTech.indexOf(tech);
            if (index > -1) {
                selectedTech.splice(index, 1);
                updateUI();
            }
        }

        function updateUI() {
            selectedTagsContainer.innerHTML = "";
            selectedTech.forEach(tech => {
                const tag = document.createElement('div');
                tag.className = 'tech-tag';

                const label = document.createElement('em');
                label.textContent = tech;

                const removeBtn = document.createElement('span');
                removeBtn.className = 'remove-tag';
                removeBtn.innerHTML = '&times;';
                removeBtn.addEventListener('click', (e) => {
                    e.stopPropagation();
                    removeTech(tech);
                });

                tag.appendChild(label);
                tag.appendChild(removeBtn);
                selectedTagsContainer.appendChild(tag);
            });

            hiddenInputsContainer.innerHTML = "";
            selectedTech.forEach(tech => {
                const input = document.createElement('input');
                input.type = 'hidden';
                input.name = 'techs';
                input.value = tech;
                hiddenInputsContainer.appendChild(input);
            });

            renderDropdown(techSearch.value);
            techSearch.focus();
        }

        techSearch.addEventListener('focus', () => {
            renderDropdown(techSearch.value);
            techDropdown.classList.add('show');
        });

        techSearch.addEventListener('input', (e) => {
            renderDropdown(e.target.value);
            techDropdown.classList.add('show');
        });

        techWrapper.addEventListener('click', () => {
            techSearch.focus();
        });

        document.addEventListener('click', (e) => {
            if (!techWrapper.contains(e.target) && !techDropdown.contains(e.target)) {
                techDropdown.classList.remove('show');
            }
        });

        renderDropdown();
    });
</script>

</body>
</html>