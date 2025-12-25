# PHP 8.2 + Apache in Docker

This project runs a PHP 8.2 application inside a Docker container with Apache.  
It serves the files in this folder (`/home/memz/projects/myapp`) directly in the browser.

---

## 🚀 Getting Started

### 1. Build the Docker image

From the root of your project (where the _Dockerfile_ is located):

```bash
docker build -t my-php-app .
```

## 2. Run the container

```bash
docker run --rm -it -p 8080:80 my-php-app
```

## 3. Open in your browser

visit:

```bash
http://localhost:8080
```

Your **index.php** file will be served automatically.

### 🛠️ Customization

- Add PHP extensions: Edit the `Dockerfile` and include lines like:

```Dockerfile
RUN docker-php-ext-install mysqli pdo pdo_mysql
```

- Change port: If `8080` is busy, map another port:

```Dockerfile
docker run --rm -it -p 8081:80 my-php-app
```

### 📂 Project Structure

```Code
myapp/
├── Dockerfile
├── index.php
└── other-php-files.php
```

- Place all your PHP files in this folder.
- `index.php` will be the default entry point when visiting `/`.

### ✅ Notes

- The container uses the official `php:8.2-apache` image.
- Apache automatically serves files from `/var/www/html`, which is populated by your project folder.
- Use `--rm` so the container is cleaned up after stopping.

Enjoy coding with PHP 8.2 in Docker 🎉
