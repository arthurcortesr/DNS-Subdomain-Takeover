# DNS-Subdomain-Takeover

O script ```dns_subdomain_takeover.sh``` é uma ferramenta projetada em bash para identificar potenciais subdomínios vulneráveis a ataques de "subdomain takeover". Esse tipo de ataque ocorre quando um subdomínio de um domínio personalizado pode ser associado a um serviço externo, como um serviço de hospedagem desativado, permitindo que um invasor assuma o controle desse subdomínio.

<br>

---

<br>

## **Modo de uso**

```bash
./dns_subdomain_takeover.sh <domínio> <wordlist>
```

## **Exemplo**

```bash
./dns_subdomain_takeover.sh businesscorp.com.br lista.txt
```

## **Exemplo de saída**

```bash
------------------------------------------------------------------------------------
| Pk's Academy - DNS Subdomain Takeover |
------------------------------------------------------------------------------------
Potencial subdomain takeover: subdomain.businesscorp.com.br
Detalhes: subdomain.businesscorp.com.br is an alias for external-service.com.
---------------------------------------------
```

<br>

---

<br>

## **Funcionalidades**

1. Verifica subdomínios na lista fornecida para possíveis ataques de subdomain takeover.
2. Exibe informações detalhadas sobre subdomínios potencialmente vulneráveis.

<br>

---

<br>

## **Observação**

1. Certifique-se de ajustar os valores conforme necessário para a sua rede ou teste específico.

<br>

---

<br>

## **Avisos**

1. O uso indevido desta ferramenta pode resultar em consequências legais. Certifique-se de compreender e seguir as leis e regulamentos locais antes de realizar quaisquer testes de segurança.
2. Este script deve ser usado apenas em ambientes autorizados e para fins educacionais.
3. Certifique-se de ter permissão adequada antes de realizar testes de subdomain takeover em sistemas ou redes.
4. A utilização irresponsável de ferramentas de ataque pode violar leis e regulamentos.



















