#!/bin/bash

#
# Usage examples:
#   ./odoo.sh up
#   ./odoo.sh down
#   ./odoo.sh down -v
#   ./odoo.sh rebuild
#   ./odoo.sh help
#

WORKDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
COMPOSE_FILE="odoo-docker-compose.yml"
ENV_FILE="$WORKDIR/env"

print_help() {
  echo ""
  echo "Usage: ./odoo.sh [command]"
  echo ""
  echo "Commands:"
  echo "  up              Start Odoo stack (detached mode)"
  echo "  down            Stop and remove containers"
  echo "  down -v         Stop and remove containers and volumes"
  echo "  rebuild         Rebuild images without cache and restart stack"
  echo "  help            Show this help message"
  echo ""
}

# Load environment variables
if [[ -f "$ENV_FILE" ]]; then
  echo "✅ Loading environment variables from $ENV_FILE"
  export $(grep -v '^#' "$ENV_FILE" | xargs)
else
  echo "⚠️  Environment file '$ENV_FILE' not found. Continuing without loading custom variables."
fi

case "$1" in
  up)
    echo "🚀 Starting Odoo stack in $WORKDIR ..."
    docker compose -f "$COMPOSE_FILE" up -d
    ;;
  down)
    if [[ "$2" == "-v" ]]; then
      echo "🧹 Stopping and removing containers and volumes in $WORKDIR ..."
      docker compose -f "$COMPOSE_FILE" down -v
      rm -rf odoo_data
      rm -rf odoo_postgres_data
    else
      echo "🛑 Stopping and removing containers in $WORKDIR ..."
      docker compose -f "$COMPOSE_FILE" down
    fi
    ;;
  rebuild)
    echo "🔧 Rebuilding Odoo image without cache in $WORKDIR ..."
    docker compose -f "$COMPOSE_FILE" build --no-cache
    docker compose -f "$COMPOSE_FILE" up -d --force-recreate
    ;;
  help|--help|-h|"")
    print_help
    ;;
  *)
    echo "❌ Unknown command: $1"
    print_help
    ;;
esac
