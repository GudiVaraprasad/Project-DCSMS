# Dining Commons Staff Management System

The ''Dining Commons Staff Management System'' is a comprehensive software solution aimed at automating and optimizing the task assignment process for dining commons staff in a highly efficient manner. This system will address the challenges faced in managing tasks for different sections within the dining commons, including the Kitchen Prep, Buffet Line, GrabnGo, Stir Fry, Pizza, Dishoom, Tables, and Runners, etc.

# Team Members
- Tushar Parmanand Budhwani
- Vara Prasad Gudi
- Isha Anil Nalawade

## Project Goal and Objectives
The Dining Commons Staff Management System aims to streamline daily task assignments, enhance efficiency by optimizing responsibilities based on employee availability and skills, save time through reduced manual planning efforts, and improve communication with clear, real-time task assignments among staff members.

## Functional Requirements / Software Features
The Dining Commons Staff Management System (DCSMS) offers several key features to enhance the management of dining commons staff:
- **User Authentication & Access Controls:** DCSMS ensures system security by authenticating users and granting access based on their roles.
- **Shift Assignment:** Shifts are intelligently assigned to employees within various dining commons sections, improving task distribution.
- **Scheduling:** The system considers employee schedules and shift times to ensure effective task assignments while considering their availability.
- **Shift Management:** Employees can apply for additional shifts or request modifications to their existing shifts.
- **Staff Management:** Managers can add, modify, and delete employee details within the system.
- **Announcements:** Managers can send emails to employees regarding any announcements.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Database Setup](#database-setup)
- [Contributing](#contributing)
- [License](#license)

## Prerequisites
Before you begin, make sure you have the following prerequisites in place:
- **phpMyAdmin**: Ensure you have phpMyAdmin version 5.1.1 installed.
  - Official Website: [phpMyAdmin](https://www.phpmyadmin.net/)
  - Host: 127.0.0.1
  - Server version: 10.4.21-MariaDB
  - PHP Version: 8.0.11

- **XAMPP**: Install [XAMPP](https://www.apachefriends.org/download.html) on your machine.
- **Knowledge**: Basic understanding of PHP and MySQL.

## Installation
1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/GudiVaraprasad/Project-DCSMS
   ```
2. Create a folder named ```WEBDEV``` and place the project files in the XAMPP htdocs directory inside created ```WEBDEV``` Folder.

## Usage
1. Start XAMPP and ensure that Apache and MySQL are running.
2. Open a web browser and navigate to ```http://localhost/WEBDEV/Project-DCSMS/frontend/pages/``` for Manager View.
3. Open a web browser and navigate to ```http://localhost/WEBDEV/Project-DCSMS/frontend/pages/stafflogin.php``` for Staff View.
3. Follow the on-screen instructions or explore the project features.

## Database Setup
1. Open PHPMyAdmin by navigating to ```http://localhost/phpmyadmin```.
2. Create a new database ```project-dcsms``` for your project.
3. Import the database schema from the provided SQL file ```dcsms.sql```.
4. Update the database configuration in the project's configuration file (if required).

## Contributing
1. Fork the project.
2. Create a new branch:
    ```bash
        git checkout -b feature/your-feature
    ```
3. Make your changes and commit:
    ```bash
        git commit -m 'Add some feature'
    ```
4. Push to the branch:
    ```bash
        git push origin feature/your-feature
    ```
5. Submit a pull request.

## License
This project is developed as a part of CS520: Theory and Practice of Software Engineering. Feel free to customize it further based on your project's specific details.
