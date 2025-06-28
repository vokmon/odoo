# 🚀 Odoo Docker Setup

This repository provides a ready-to-use Docker Compose setup for running **Odoo** with **PostgreSQL**.

## 📦 Services

- **odoo**: Latest official Odoo image  
- **postgres**: PostgreSQL database for Odoo

## 🧱 Folder Structure

```
project-root/
├── odoo-docker-compose.yml
├── env
├── addons/                  # Optional: custom Odoo modules
├── odoo.sh                  # Helper script to manage stack
└── README.md
```

## ⚙️ Prerequisites

- Docker & Docker Compose V2+
- Bash (for `odoo.sh` script)

## 📄 env Example

Create a `env` file in the project root with the following content:

```env
# PostgreSQL
POSTGRES_USER=odoo
POSTGRES_PASSWORD=myodoo
POSTGRES_DB=postgres
POSTGRES_PORT=5432
POSTGRES_HOST=postgres

# Odoo
ODOO_PORT=8069
```

## ▶️ Usage

Use the `odoo.sh` script to manage your Docker stack:

```bash
./odoo.sh up         # Start Odoo and PostgreSQL in detached mode
./odoo.sh down       # Stop and remove containers
./odoo.sh down -v    # Stop and remove containers + volumes
./odoo.sh rebuild    # Rebuild images and restart stack
./odoo.sh help       # Show usage instructions
```

## 🌐 Access

Once running, access Odoo at:

```
http://localhost:8069
```

## 📁 Addons

To use custom modules, place them in the `./addons` folder.  
This is mounted automatically to `/mnt/extra-addons` inside the container.

## 🧹 Cleanup

To remove everything including volumes:

```bash
./odoo.sh down -v
```

## 📜 License

MIT (or your preferred license)

---

## 🛠️ Tips

- Use `.env` to manage environment-specific configuration
- For production deployments, consider using Docker volumes and setting secure passwords

## Odoo
Master Password: 7mbb-c5a4-8ngg
Database name: odoo
Email: vokmon@gmail.com
Password: password


