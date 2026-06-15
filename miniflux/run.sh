#!/usr/bin/with-contenv bashio

# Read config
DB_HOST=$(bashio::config 'DATABASE_HOST')
DB_PORT=$(bashio::config 'DATABASE_PORT')
DB_USER=$(bashio::config 'DATABASE_USER')
DB_PASS=$(bashio::config 'DATABASE_PASSWORD')
DB_NAME=$(bashio::config 'DATABASE_NAME')
DB_SSL=$(bashio::config 'DATABASE_SSLMODE')
RUN_MIGRATIONS=$(bashio::config 'RUN_MIGRATIONS')
CREATE_ADMIN=$(bashio::config 'CREATE_ADMIN')
ADMIN_USER=$(bashio::config 'ADMIN_USERNAME')
ADMIN_PASS=$(bashio::config 'ADMIN_PASSWORD')

# Build DATABASE_URL
export DATABASE_URL="postgres://${DB_USER}:${DB_PASS}@${DB_HOST}:${DB_PORT}/${DB_NAME}?sslmode=${DB_SSL}"

# Set miniflux env vars
if bashio::var.true "${RUN_MIGRATIONS}"; then
    export RUN_MIGRATIONS=1
fi

if bashio::var.true "${CREATE_ADMIN}"; then
    export CREATE_ADMIN=1
    export ADMIN_USERNAME="${ADMIN_USER}"
    export ADMIN_PASSWORD="${ADMIN_PASS}"
fi

# Ingress is handled by HA proxy — no BASE_URL needed for direct access

export LISTEN_ADDR="0.0.0.0:8012"

bashio::log.info "Starting Miniflux..."
exec /usr/bin/miniflux
