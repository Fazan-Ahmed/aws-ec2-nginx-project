#!/usr/bin/env bash
set -Eeuo pipefail

if [[ "$EUID" -ne 0 ]]; then
    echo "Please run: sudo bash setup.sh"
    exit 1
fi
#!/usr/bin/env bash
set -Eeuo pipefail

if [[ "$EUID" -ne 0 ]]; then
    echo "Please run: sudo bash setup.sh"
    exit 1
fi

echo "=== Updating package lists ==="
apt-get update

echo "=== Installing Nginx ==="
apt-get install -y nginx

echo "=== Creating website page ==="
mkdir -p /var/www/html

if [[ -f /var/www/html/index.html ]]; then
    cp /var/www/html/index.html \
       "/var/www/html/index.html.backup.$(date +%Y%m%d%H%M%S)"
fi

cat > /var/www/html/index.html <<'HTML'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My AWS EC2 Project</title>
</head>
<body>
    <h1>Hello from AWS EC2!</h1>
    <h2>My First DevOps Project</h2>
    <p>This website is hosted on AWS EC2.</p>
    <p>Web Server: Nginx</p>
    <p>Operating System: Ubuntu Linux</p>
</body>
</html>
HTML

echo "=== Starting Nginx ==="
systemctl enable --now nginx

echo "=== Checking Nginx configuration ==="
nginx -t

systemctl is-active --quiet nginx

echo "SUCCESS: Nginx is running!"
echo "Open http://YOUR-EC2-PUBLIC-IP/"
echo "Ensure inbound HTTP port 80 is allowed in the EC2 Security Group."
echo "=== Updating package lists ==="
apt-get update

echo "=== Installing Nginx ==="
apt-get install -y nginx

echo "=== Creating website page ==="
mkdir -p /var/www/html

if [[ -f /var/www/html/index.html ]]; then
    cp /var/www/html/index.html \
       "/var/www/html/index.html.backup.$(date +%Y%m%d%H%M%S)"
fi

cat > /var/www/html/index.html <<'HTML'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My AWS EC2 Project</title>
</head>
<body>
    <h1>Hello from AWS EC2!</h1>
    <h2>My First DevOps Project</h2>
    <p>This website is hosted on AWS EC2.</p>
    <p>Web Server: Nginx</p>
    <p>Operating System: Ubuntu Linux</p>
</body>
</html>
HTML

echo "=== Starting Nginx ==="
systemctl enable --now nginx

echo "=== Checking Nginx configuration ==="
nginx -t

systemctl is-active --quiet nginx

echo "SUCCESS: Nginx is running!"
echo "Open http://YOUR-EC2-PUBLIC-IP/"
echo "Ensure inbound HTTP port 80 is allowed in the EC2 Security Group."
