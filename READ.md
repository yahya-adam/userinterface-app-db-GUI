#  GUI Application

A GUI application containerized with Docker for overseeing university records, integrated with a MySQL database. Developed using Python, CustomTkinter, and Docker.

![Docker](https://img.shields.io/badge/Docker-✓-blue?logo=docker)
![MySQL](https://img.shields.io/badge/MySQL-8.0-orange?logo=mysql)

## Features
- Student, tutor, and course management
- Dockerized MySQL database
- X11 GUI interface
- Pre-built database schema with sample data

##  Quick Start

### Prerequisites
- Docker & Docker Compose
- X Server (for GUI):
  - Linux: Xorg (built-in)
  - macOS: [XQuartz](https://www.xquartz.org/)
  - Windows: [WSL2](https://learn.microsoft.com/en-us/windows/wsl/install) or [VcXsrv](https://sourceforge.net/projects/vcxsrv/)

### Installation
```bash
# 1. Clone repository
git clone https://github.com/yourusername/university-management.git
cd university-management

# 2. Start containers
docker-compose up