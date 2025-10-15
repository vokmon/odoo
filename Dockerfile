FROM odoo:latest

USER root

RUN apt-get update && \
    apt-get install -y fonts-thai-tlwg fonts-freefont-ttf && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install Python packages
RUN pip install --break-system-packages dropbox pyncclient nextcloud-api-wrapper boto3 paramiko

USER odoo

