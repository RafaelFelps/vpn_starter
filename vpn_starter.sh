#!/bin/bash

# Substitua "/path/to/openvpn-config.ovpn" pelo caminho completo do seu arquivo de configuração OpenVPN.
CONFIG_FILE="/path/to/openvpn-config.ovpn"

# Verifica se o OpenVPN já está em execução.
if pgrep -x "openvpn" > /dev/null; then
    echo "OpenVPN já está em execução. Encerrando..."
    sudo killall openvpn
fi

# Inicia a conexão VPN usando o arquivo de configuração especificado.
sudo openvpn --config "$CONFIG_FILE" --daemon

echo "Conexão VPN iniciada."