FROM odoo:latest

USER root

RUN apt-get update && \
    apt-get install -y fonts-thai-tlwg fonts-freefont-ttf && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER odoo

