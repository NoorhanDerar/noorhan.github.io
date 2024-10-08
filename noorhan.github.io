<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Scrumble</title>
    <script src="https://cdn.jsdelivr.net/npm/js-confetti@latest/dist/js-confetti.browser.js"></script>
    <style>
        @import url('https://fonts.cdnfonts.com/css/futura-std-4');
        @import url('https://fonts.cdnfonts.com/css/bukhari-script');
        

        body {
            font-family: 'Futura', sans-serif; 
            line-height: 1.6;
            background-color: #ffffff;
            color: #6ec6e6;
            padding-left: 5rem;
            padding-right: 5rem;
            padding-top: 1.5rem;
        }

        header {
            font-family: "Bukhari Script", cursive; 
            font-size: 40px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            color: #6ec6e6;
            padding-bottom: 1rem;
            position: relative;
        }

        nav {
            display: flex;
            gap: 5.0rem;
        }

        nav a {
            font-family: 'Futura', sans-serif;
            color: #6f85a6;
            text-decoration: none;
            font-size: 23px;
            transition: color 0.3s;
        }

        nav a:hover {
            color: #6ec6e6;
        }

        .user-logo {
            width: 50px;
            height: 50px;
            background-image: url('user-icon.png'); 
            background-size: cover;
            background-position: center;
            border-radius: 50%;
            border: none;
            transition: color 0.3s;
        }

        .user-logo:hover {
            color: #6ec6e6;
        }

        hr {
            height: 4px;
            background-color: #6ec6e6;
            border-color: #6ec6e6;
            border: none;
            border-radius: 20px;
        }

        .container {
            display: flex;
            gap: 20px;
            padding: 25px;
            justify-content: center;
        }

        .card {
            background: #e8f6fb;
            border-radius: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 310px;
            height: 540px;
            text-align: left;
            position: relative;
        }

        .small-box {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: auto;
            background: #e8f6fb;
            border: 1px solid #6ec6e6;
            border-radius: 20px;
            padding: 10px;
            width: 90%;
        }

        .small-box p {
            color: #508dbc;
        }

        .menu-btn {
            background: none;
            border: none;
            cursor: pointer;
            font-size: 20px;
            color: #333;
            position: relative;
        }

        .menu-btn:hover {
            color: #6ec6e6;
        }

        .dropdown {
            display: none;
            position: absolute;
            top: 40px;
            right: 0;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            z-index: 1;
            width: 250px;
        }

        .show {
            display: block;
        }

        .dropdown a {
            display: block;
            padding: 10px 15px;
            text-decoration: none;
            color: #333;
            font-size: 16px;
            font-weight: normal;
        }

        .dropdown a:hover {
            background-color: #e3f2fd;
            color: #6ec6e6;
        }

        .nested-dropdown {
            display: none;
            position: absolute;
            left: 100%;
            top: 0;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            z-index: 1;
            width: 250px;
        }

        .dropdown-item {
            position: relative;
        }

        .dropdown-item:hover .nested-dropdown {
            display: block;
        }

        .dropdown-item > a::after {
            content: '▶';
            float: right;
        }

        /* Task Styles */

        .task {
            position: relative;
            border: 2px solid #94b5d0; /* Light blue border */
            border-radius: 20px; /* Rounded corners */
            background-color: #94b5d0; /* Background color inside */
            padding: 15px;
            margin-bottom: 20px; /* Spacing between task cards */
            max-width: 300px; /* Set the width */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            transition: transform 0.3s ease, box-shadow 0.3s ease; /* Animation */
        }

        .inside-task {
            background-color: #f5f9fc; /* Slightly lighter blue */
            border-radius: 15px; /* Rounded corners */
            padding: 10px;
            margin-bottom: -10px; /* Adds some space between the white box and the bottom of the task */
            
        }

        .task h3 {
            font-size: 16px;
            font-weight: bold;
            margin: 0;
            color: #40556e; /* Text color */
            padding-bottom: 5px; /* Space below heading */
        }

        .task .three-dots {
            position: absolute;
            top: -5px;
            right: 5px;
            cursor: pointer;
            font-size: 30px;
            color: #f2f6f9;
        }

  

        .tag {
            border-radius: 20px;
            color: white;
            padding: 3px 10px;
            font-size: 12px;
            font-weight: bold;
            display: inline-block;
            margin-top: 10px;
            top: 5px; /* Align 10px from the top */
            right: -179px; /* Align 10px from the right */
            position: relative;
        }


        .tag-front-end {
            background-color: #ffd561; /* Light orange */
        }

        .tag-back-end {
            background-color: #66ccff; /* Light blue */
        }

        .tag-ui {
            background-color: #ff99cc; /* Light pink */
        }

        .tag-ux {
            background-color: #cc99ff; /* Light purple */
        }

        .tag-database {
            background-color: #66e91b; /* Lavender */
        }

        .tag-api {
            background-color: #ff5757; /* Light green */
        }

        .tag-framework {
            background-color: #ff914d; /* Peach */
        }

        .tag-testing {
            background-color: #5271ff; /* Light red */
        }

        .story-points {
            background-color: #a0c6e6; /* Light blue */
            color: white;
            border-radius: 15px;
            padding: 5px 10px;
            font-size: 12px;
            position: absolute;
            top: 30px;
            right: 30px;
            font-weight: bold;
        }

        .priority {
            position: absolute; /* Enable absolute positioning */
            bottom: 10px; /* Align to the bottom */
            left: 20px; /* Align to the far left */
            font-size: 14px;
            color: #8398b1; /* Dark blue text */
            margin-top: 10px; 
            font-weight: bold;
        }

        .task:hover {
            transform: scale(1.05); /* Slight scaling on hover */
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15); /* Enhanced shadow on hover */
        }

        .hidden {
            display: none;
        }

        .drag-over {
            border: 2px dashed #6ec6e6; /* Change border style on drag over */
        }

        .popup {
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%) scale(0);;
        background-color: #ffffff;
        border: 2px solid #6ec6e6;
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        z-index: 1000; /* Make sure it is above other content */
        text-align: center;
        opacity: 0; /* Start hidden */
        transition: opacity 0.5s ease; /* Smooth transition */
    }

    .popup.show {
        opacity: 1; /* Fully visible */
        animation: pop-in 0.5s forwards; /* Animation for appearing */
    }

    @keyframes pop-in {
        0% {
            transform: translate(-50%, -60%); /* Start a bit higher */
            opacity: 0; /* Start hidden */
        }
        100% {
            transform: translate(-50%, -50%); /* Move to center */
            opacity: 1; /* Fully visible */
        }
    }

    .popup.hide {
        animation: pop-out 0.5s forwards; /* Animation for disappearing */
    }

    @keyframes pop-out {
        0% {
            opacity: 1; /* Fully visible */
        }
        100% {
            opacity: 0; /* Fade out */
            transform: translate(-50%, -60%); /* Move a bit higher */
        }
    }
    </style>
</head>

<body>




    <div id="popup" class="popup hidden">
        <p>Keep Going!</p>
    </div>

    <header>
        <div class="logo">Scrumble</div>
        <nav>
            <a href="#">Product Backlog</a>
            <a href="#">Sprint Board</a>
            <a href="#">My Team</a>
        </nav>
        <div class="user-logo"></div>
    </header>
    <hr>
    
    <div class="container">
        <!-- Not Started Column -->
        <div class="card" ondrop="drop(event)" ondragover="allowDrop(event)">
            <div class="small-box">
                <p>Not Started</p>
                <button class="menu-btn" onclick="toggleDropdown(this)">
                    &#8942;
                </button>
                <div class="dropdown">
                    <div class="dropdown-item">
                        <a href="#">Sort by</a>
                        <div class="nested-dropdown">
                            <a href="#">Story Points (Low-to-High)</a>
                            <a href="#">Priority (Low-to-High)</a>
                            <a href="#">Story Points (High-to-Low)</a>
                            <a href="#">Priority (High-to-Low)</a>
                        </div>
                    </div>
                    <div class="dropdown-item">
                        <a href="#">Filter by</a>
                        <div class="nested-dropdown">
                            <a href="#">Front End</a>
                            <a href="#">Back End</a>
                            <a href="#">UI</a>
                            <a href="#">UX</a>
                            <a href="#">Database</a>
                            <a href="#">API</a>
                            <a href="#">Framework</a>
                            <a href="#">Testing</a>
                        </div>
                    </div>
                    
                </div>
            </div>
            
    
            <div id="not-started-tasks" class="task-container">
                <div id="task-1" class="task" draggable="true" ondragstart="drag(event)">
                    <div class="inside-task">
                        <h3>Task 1</h3>
                        <span class="tag tag-front-end">Front End</span>
                        <span class="story-points">3 SP</span>
                        <span class="priority">Priority: High</span>
                    </div>
                    <span class="three-dots" onclick="toggleTaskMenu(this)">&#8942;</span>
                </div>
                <div id="task-2" class="task" draggable="true" ondragstart="drag(event)">
                    <div class="inside-task">
                        <h3>Task 2</h3>
                        <span class="tag tag-back-end">Back End</span>
                        <span class="story-points">9 SP</span>
                        <span class="priority">Priority: Medium</span>
                    </div>
                    <span class="three-dots" onclick="toggleTaskMenu(this)">&#8942;</span>
                </div>
                <div id="task-3" class="task" draggable="true" ondragstart="drag(event)">
                    <div class="inside-task">
                        <h3>Task 3</h3>
                        <span class="tag tag-testing">Testing</span>
                        <span class="story-points">8 SP</span>
                        <span class="priority">Priority: Low</span>
                    </div>
                    <span class="three-dots" onclick="toggleTaskMenu(this)">&#8942;</span>
                </div>
            </div>
        </div>
        
        <!-- In Progress Column -->
        <div class="card" ondrop="drop(event)" ondragover="allowDrop(event)">
            <div class="small-box">
                <p>In Progress</p>
                <button class="menu-btn" onclick="toggleDropdown(this)">
                    &#8942;
                </button>
                <div class="dropdown">
                    <div class="dropdown-item">
                        <a href="#">Sort by</a>
                        <div class="nested-dropdown">
                            <a href="#">Story Points (Low-to-High)</a>
                            <a href="#">Priority (Low-to-High)</a>
                            <a href="#">Story Points (High-to-Low)</a>
                            <a href="#">Priority (High-to-Low)</a>
                        </div>
                    </div>
                    <div class="dropdown-item">
                        <a href="#">Filter by</a>
                        <div class="nested-dropdown">
                            <a href="#">Front End</a>
                            <a href="#">Back End</a>
                            <a href="#">UI</a>
                            <a href="#">UX</a>
                            <a href="#">Database</a>
                            <a href="#">API</a>
                            <a href="#">Framework</a>
                            <a href="#">Testing</a>
                        </div>
                    </div>
                </div>
            </div>

            <div id="in-progress-tasks" class="task-container">
                <div id="task-4" class="task" draggable="true" ondragstart="drag(event)">
                    <div class="inside-task">
                        <h3>Task 4</h3>
                        <span class="tag tag-back-end">Back End</span>
                        <span class="story-points">1 SP</span>
                        <span class="priority">Priority: Medium</span>
                    </div>
                    <span class="three-dots" onclick="toggleTaskMenu(this)">&#8942;</span>
                </div>
            </div>
        </div>

        <!-- Completed Column -->
        <div class="card" ondrop="drop(event)" ondragover="allowDrop(event)">
            <div class="small-box">
                <p>Completed</p>
                <button class="menu-btn" onclick="toggleDropdown(this)">
                    &#8942;
                </button>
                <div class="dropdown">
                    <div class="dropdown-item">
                        <a href="#">Sort by</a>
                        <div class="nested-dropdown">
                            <a href="#">Story Points (Low-to-High)</a>
                            <a href="#">Priority (Low-to-High)</a>
                            <a href="#">Story Points (High-to-Low)</a>
                            <a href="#">Priority (High-to-Low)</a>
                        </div>
                    </div>
                    <div class="dropdown-item">
                        <a href="#">Filter by</a>
                        <div class="nested-dropdown">
                            <a href="#">Front End</a>
                            <a href="#">Back End</a>
                            <a href="#">UI</a>
                            <a href="#">UX</a>
                            <a href="#">Database</a>
                            <a href="#">API</a>
                            <a href="#">Framework</a>
                            <a href="#">Testing</a>
                        </div>
                    </div>
                </div>
            </div>

            <div id="completed-tasks" class="task-container">
                <div id="task-5" class="task" draggable="true" ondragstart="drag(event)">
                    <div class="inside-task">
                        <h3>Task 5</h3>
                        <span class="tag tag-framework">Framework</span>
                        <span class="story-points">2 SP</span>
                        <span class="priority">Priority: High</span>
                    </div>
                    <span class="three-dots" onclick="toggleTaskMenu(this)">&#8942;</span>
                </div>
            </div>
        </div>
    </div>


    <script>
        const jsConfetti = new JSConfetti();

       

        const priorityValues = {
            'High': 3,
            'Medium': 2,
            'Low': 1
        };

        function toggleDropdown(button) {
            const dropdown = button.nextElementSibling;
            dropdown.classList.toggle('show');

            // Corrected dropdown interaction for both sort and filter options
            dropdown.querySelectorAll('.nested-dropdown a').forEach(link => {
                if (link.innerText.includes('Story Points') || link.innerText.includes('Priority')) {
                    link.onclick = handleSortClick;
                } else {
                    link.onclick = handleFilterClick;
                }
            });
        }

        function handleSortClick(event) {
            const sortType = event.target.innerText;
            const containerId = event.target.closest('.card').querySelector('.task-container').id;
            sortTasks(sortType, containerId);
            
            // Close dropdown after  sorting
            event.target.closest('.dropdown').classList.remove('show');
        }

        function handleFilterClick(event) {
            const tag = event.target.innerText;
            const containerId = event.target.closest('.card').querySelector('.task-container').id;
            filterTasks(tag, containerId);
            
            // Close dropdown after filtering
            event.target.closest('.dropdown').classList.remove('show');
        }

        // Sorting Logic
        function sortTasks(sortType, containerId) {
            const container = document.getElementById(containerId);
            const tasks = Array.from(container.getElementsByClassName('task'));

            tasks.sort((a, b) => {
                const aPoints = parseInt(a.querySelector('.story-points').innerText.split(': ')[1]);
                const bPoints = parseInt(b.querySelector('.story-points').innerText.split(': ')[1]);
                const aPriority = priorityValues[a.querySelector('.priority').innerText.split(': ')[1]];
                const bPriority = priorityValues[b.querySelector('.priority').innerText.split(': ')[1]];

                if (sortType.includes('Story Points')) {
                    return sortType.includes('Low-to-High') ? aPoints - bPoints : bPoints - aPoints;
                } else if (sortType.includes('Priority')) {
                    return sortType.includes('Low-to-High') ? aPriority - bPriority : bPriority - aPriority;
                }
            });

            tasks.forEach(task => container.appendChild(task)); // Re-append sorted tasks
        }

        // Filtering Logic
        function filterTasks(tag, containerId) {
            const container = document.getElementById(containerId);
            const tasks = Array.from(container.getElementsByClassName('task'));

            tasks.forEach(task => {
                const taskTag = task.querySelector('.tag').innerText; // Get the tag text
                if (taskTag.includes(tag)) {
                    task.classList.remove('hidden');
                } else {
                    task.classList.add('hidden');
                }
            });
        }


        function allowDrop(event) {
            event.preventDefault();
            // Add a visual cue for drag over
            event.currentTarget.classList.add('drag-over');
        }

        function drop(event) {
            event.preventDefault();
            // Remove the visual cue
            event.currentTarget.classList.remove('drag-over');

            const data = event.dataTransfer.getData("text");
            const draggedElement = document.getElementById(data);
            event.currentTarget.querySelector('.task-container').appendChild(draggedElement);

            if (event.currentTarget.querySelector('.task-container').id === 'in-progress-tasks') {
                // Show the popup
                showPopup();
            }

                    // Check if dropped in the completed column
            if (event.currentTarget.querySelector('.task-container').id === 'completed-tasks') {
            // Trigger confetti animation
                jsConfetti.addConfetti({
                    emojis: ['🎉', '✨', '🎊'],
                    confettiNumber: 100,
                    confettiColors: ['#ff0a54', '#ff477e', '#ff7096'],
                    confettiRadius: 6
                });
            }
        }
        function showPopup()
        {
            const popup = document.getElementById('popup');
            popup.classList.remove('hidden'); // Show the popup
            popup.classList.add('show'); // Add the show class for animation

            // Automatically hide the popup after 3 seconds
            setTimeout(() => {
                popup.classList.remove('show'); // Start hiding animation
                popup.classList.add('hide'); // Add hide class for animation
            }, 3000); // Change the time as needed (3000ms = 3 seconds)

            // Remove the popup from the DOM after the animation is done
            setTimeout(() => {
                popup.classList.add('hidden'); // Actually hide the popup
                popup.classList.remove('hide'); // Remove hide class for next use
            }, 3500); // 3500ms
        }

        function drag(event) {
            event.dataTransfer.setData("text", event.target.id);
        }

    </script>
</body>
</html>
