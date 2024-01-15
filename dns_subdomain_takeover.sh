#!/bin/bash

# Definindo códigos de cor ANSI
COR_PKAS="\033[38;5;220m"  # FEB63E
COR_DNS="\033[38;5;197m"  # F5055C
COR_VERDE="\033[92m"  # 00FF00
COR_ERRO="\033[38;5;196m"  # E10406
RESET="\033[0m"  # Reset para as configurações padrão de cor

# Verifica se o número correto de argumentos foi fornecido
if [ "$#" -ne 2 ]; then
   echo -e "------------------------------------------------------------------------------------"
   echo -e "${COR_PKAS}Pk's Academy${RESET} - ${COR_DNS}DNS Subdomain Takeover${RESET}"
   echo -e "------------------------------------------------------------------------------------"
   echo "Modo de uso: $0 <domínio> <wordlist>"
   echo -e "------------------------------------------------------------------------------------"
   echo "Exemplo: $0 businesscorp.com.br lista.txt"
   echo -e "------------------------------------------------------------------------------------"
   exit 1
fi

dominio_principal=$1
lista=$2

# Exibe a mensagem de cabeçalho
echo -e "------------------------------------------------------------------------------------"
echo -e "| ${COR_PKAS}Pk's Academy${RESET} - ${COR_DNS}DNS Subdomain Takeover${RESET} |"
echo -e "------------------------------------------------------------------------------------"

# Lê cada palavra da lista e verifica se é um subdomínio vulnerável
while read -r palavra; do
    resultado=$(host -t cname "$palavra.$dominio_principal")
    if echo "$resultado" | grep -q "alias for"; then
        echo -e "${COR_VERDE}Potencial subdomain takeover: $palavra.$dominio_principal${RESET}"
        echo -e "Detalhes: $resultado"
        echo -e "---------------------------------------------"
    fi
done < "$lista"
