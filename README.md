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
Master Password: pkk2-i8wg-b5z3
Database name: odoo
Email: vokmon@gmail.com
Password: password

## Fix report issue style
Go to Configurations/Technical/System parameters and add a new parameter :
Key : report.url , Value : http://0.0.0.0:8069

## Accounting set to Paid
Setting the Bank/Cash Journal's Main Account as the Outstanding Account:
* Go to Accounting > Configuration > Journals.
* Select the journal you are using for customer payments (e.g., your Bank or Cash journal).
* Under the "Incoming Payments" tab (and "Outgoing Payments" for vendor bills), set the Outstanding Receipts Account (or Outstanding Payments Account) to be the same account as your Bank Account (or Cash Account) for that journal.

## Useful apps

- Backup
  - https://apps.odoo.com/apps/modules/18.0/auto_database_backup
- Accounting
  - https://apps.odoo.com/apps/modules/18.0/om_account_accountant
- Quality
  - https://apps.odoo.com/apps/modules/18.0/mgmtsystem_quality
  - https://github.com/OCA/management-system
- Report for Sale + invoice
  - https://apps.odoo.com/apps/modules/18.0/customized_invoice
  - https://www.optima.co.ke/shop/professional-invoice-sales-order-templates-9?attrib=2-5#attr=61
- All reports
  - https://apps.odoo.com/apps/modules/18.0/professional_templates
  - https://www.optima.co.ke/shop/professional-report-templates-2?attrib=2-5#attr=1
