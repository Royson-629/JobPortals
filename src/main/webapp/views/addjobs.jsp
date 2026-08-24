<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Job - Aero Jobs</title>
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
            width: 500px;
            height: 500px;
            background: #e000ff;
            border-radius: 50%;
            filter: blur(250px);
            z-index: -1;
            opacity: 0.15;
            top: -10%;
            right: -10%;
        }

        .ambient-glow-2 {
            position: fixed;
            width: 400px;
            height: 400px;
            background: #00e5ff;
            border-radius: 50%;
            filter: blur(200px);
            z-index: -1;
            opacity: 0.15;
            bottom: -10%;
            left: -10%;
        }

        /* Form Container */
        .container {
            padding: 50px 5%;
            display: flex;
            justify-content: center;
            align-items: center;
            animation: fadeInUp 0.8s ease-out;
        }

        .form-wrapper {
            background: rgba(255, 255, 255, 0.03);
            border: 1px solid rgba(255, 255, 255, 0.08);
            border-radius: 20px;
            padding: 40px;
            width: 100%;
            max-width: 800px;
            backdrop-filter: blur(15px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.4);
            position: relative;
            overflow: hidden;
        }

        /* Form Header */
        .form-header {
            text-align: center;
            margin-bottom: 40px;
        }

        .form-header h2 {
            font-size: 2.2rem;
            background: linear-gradient(to right, #00e5ff, #e000ff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 10px;
        }

        .form-header p {
            color: #b3b3b3;
            font-size: 1rem;
        }

        /* Form Grid */
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

        select.form-control {
            appearance: none;
            cursor: pointer;
        }

        select.form-control option {
            background-color: #24243e;
            color: #fff;
        }

        textarea.form-control {
            resize: vertical;
            min-height: 120px;
        }

        /* Submit Button */
        .submit-btn {
            background: linear-gradient(135deg, #00e5ff, #0088ff);
            color: #ffffff;
            border: none;
            padding: 16px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 10px;
            cursor: pointer;
            width: 100%;
            margin-top: 20px;
            transition: all 0.3s ease;
            box-shadow: 0 0 15px rgba(0, 229, 255, 0.4);
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .submit-btn:hover {
            box-shadow: 0 0 25px rgba(0, 229, 255, 0.8);
            transform: translateY(-3px);
        }

        /* Animations */
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-grid { grid-template-columns: 1fr; }
            .form-group.full-width { grid-column: span 1; }
            nav { flex-direction: column; gap: 15px; padding: 15px 5%; }
            .nav-links { flex-wrap: wrap; justify-content: center; gap: 10px; }
        }

        /* Modern Multi-Select Custom Styling */
        .multi-select-wrapper {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
            cursor: text;
            min-height: 52px;
            align-items: center;
            padding: 10px 15px;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(0, 229, 255, 0.2);
            border-radius: 10px;
            transition: all 0.3s ease;
        }

        .multi-select-wrapper:focus-within {
            background: rgba(255, 255, 255, 0.08);
            border-color: #00e5ff;
            box-shadow: 0 0 15px rgba(0, 229, 255, 0.3);
        }

        .tech-search-input {
            background: transparent;
            border: none;
            color: #ffffff;
            font-size: 16px;
            outline: none;
            flex-grow: 1;
            min-width: 150px;
        }

        .tech-search-input::placeholder { color: #6b7280; }

        .selected-tags { display: flex; flex-wrap: wrap; gap: 8px; }

        .tech-tag {
            background: rgba(0, 229, 255, 0.15);
            border: 1px solid rgba(0, 229, 255, 0.4);
            color: #00e5ff;
            padding: 5px 12px;
            border-radius: 20px;
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 8px;
            box-shadow: 0 0 10px rgba(0, 229, 255, 0.1);
        }

        .tech-tag em {
            font-style: normal;
            font-weight: 500;
        }

        .tech-tag .remove-tag {
            cursor: pointer;
            font-weight: bold;
            color: #00e5ff;
            transition: color 0.3s;
            font-size: 16px;
            line-height: 1;
        }

        .tech-tag .remove-tag:hover { color: #e000ff; }

        .tech-dropdown {
            position: absolute;
            top: 100%;
            left: 0;
            width: 100%;
            background: rgba(36, 36, 62, 0.98);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(0, 229, 255, 0.3);
            border-radius: 10px;
            margin-top: 5px;
            max-height: 250px;
            overflow-y: auto;
            z-index: 1000;
            display: none;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.5);
        }

        .tech-dropdown.show { display: block; }

        .tech-option {
            padding: 12px 15px;
            cursor: pointer;
            color: #cbd5e1;
            transition: all 0.3s ease;
            border-bottom: 1px solid rgba(255, 255, 255, 0.05);
            font-size: 15px;
        }

        .tech-option:last-child { border-bottom: none; }
        .tech-option:hover {
            background: rgba(0, 229, 255, 0.15);
            color: #00e5ff;
            padding-left: 25px;
        }

        .tech-dropdown::-webkit-scrollbar { width: 8px; }
        .tech-dropdown::-webkit-scrollbar-track { background: rgba(255,255,255,0.05); border-radius: 10px; }
        .tech-dropdown::-webkit-scrollbar-thumb { background: rgba(0, 229, 255, 0.4); border-radius: 10px; }
        .tech-dropdown::-webkit-scrollbar-thumb:hover { background: #00e5ff; }

        @media (max-width: 768px) {
            nav { flex-direction: column; gap: 15px; padding: 15px 5%; }
            .nav-links { flex-wrap: wrap; justify-content: center; gap: 10px; }
            .search-box { flex-direction: column; background: transparent; border: none; padding: 0; gap: 10px; }
            .search-box input { border-radius: 15px; border: 1px solid rgba(0, 229, 255, 0.3); background: rgba(255, 255, 255, 0.05); }
            .search-btn { padding: 15px; border-radius: 15px; }
            .job-grid { grid-template-columns: 1fr; }

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
        <li><a href="/addjobs" class="active">Add Jobs</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
</nav>

<!-- Job Submission Form -->
<div class="container">
    <div class="form-wrapper">
        <div class="form-header">
            <h2>Broadcast a Position</h2>
            <p>Deploy your requirements to our talent network.</p>
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

                <!-- Custom Modern Multi-Select Section -->
                <div class="form-group full-width" style="position: relative;">
                    <label>Key Technologies / Tags</label>

                    <!-- Visual Input Container -->
                    <div class="multi-select-wrapper" id="techWrapper">
                        <div class="selected-tags" id="selectedTags"></div>
                        <input type="text" id="techSearch" class="tech-search-input" placeholder="Search technologies..." autocomplete="off">
                    </div>

                    <!-- Dropdown List -->
                    <div class="tech-dropdown" id="techDropdown"></div>

                    <!-- Hidden container where real inputs are generated for the servlet -->
                    <div id="hiddenInputsContainer"></div>
                </div>

                <div class="form-group full-width">
                    <label for="jobDescription">Job Description</label>
                    <textarea name="desc" id="jobDescription" class="form-control" placeholder="Describe the responsibilities, requirements, and mission of this role..." required></textarea>
                </div>
            </div>

            <button type="submit" class="submit-btn">Initialize Listing</button>
        </form>
    </div>
</div>

<!-- Robust JavaScript without JSP EL conflicts -->
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

        // Deduplicate list
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
                emptyItem.style.color = '#6b7280';
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
            // Rebuild visible chips safely using DOM methods
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

            // Rebuild hidden form inputs for the Servlet backend
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

        // Open/filter dropdown on focus & input
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

        // Close dropdown when clicking outside
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