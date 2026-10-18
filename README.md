# AWS EC2 Nginx Web Server Automation

## Project Overview
This project uses a Bash script to automate the setup of an Nginx web server on an Ubuntu-based AWS EC2 instance.

## Technologies Used
- AWS EC2
- Ubuntu Linux
- Bash Scripting
- Nginx
- Git and GitHub

## Project Structure
- `setup.sh` — Installs Nginx, creates a website page, and starts the service.
- `index.html` — Website page stored in the project repository.
- `.gitignore` — Helps prevent sensitive files from being committed.

## Prerequisites
- An Ubuntu-based AWS EC2 instance
- SSH access to the instance
- Inbound HTTP traffic allowed on port 80 in the EC2 Security Group
- Internet connectivity for package installation

## Setup Instructions
1. Clone this repository on the EC2 instance.
2. Navigate to the project directory.
3. Run the script:

   ```bash
   sudo bash setup.sh
   ```

4. Check the Nginx service:

   ```bash
   sudo systemctl status nginx
   ```

5. Open `http://YOUR-EC2-PUBLIC-IP/` in a browser.

## Important Notes
- The script is intended for Ubuntu Linux and should be run on the EC2 instance, not Windows or WSL.
- The script backs up an existing `/var/www/html/index.html` before replacing it.
- Configure the EC2 Security Group to allow inbound HTTP on port 80.
- HTTP is not encrypted. HTTPS can be added as a future improvement.
- AWS charges may apply depending on your account, resources, and usage.

## Learning Outcomes
- Basic Bash scripting
- Linux package management
- Nginx service management
- Basic AWS EC2 web-server deployment
