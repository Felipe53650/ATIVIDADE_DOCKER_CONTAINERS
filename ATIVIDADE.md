## ATIVIDADE DOCKER & CONTAINERS - AWS & DevSecOps 2024

### SEGUIR A TOPOLOGIA PROPOSTA NA IMAGEM ABAIXO:

(![image](https://github.com/user-attachments/assets/bff21e5e-2596-4db9-8124-317e3349c75d)

## Requisitos
1. Instalação e configuração do Docker ou Containerd no Host EC2;
2. Efetuar deploy de uma aplicação Wordprewss com: container de aplicação RDS database Mysql;
3. configuração da utilização do serviço EFS AWS para estáticos do container da aplicação Wordpress;
4. Configuração do serviço de Load Balancer AWS para aplicação Wordpress.



### 1. PASSO - criar e configurar a VPC

![Captura de tela 2024-10-03 173618](https://github.com/user-attachments/assets/6aa3b0e0-5f94-4ab0-9345-91352f68df52)

Aqui nós criamos uma VPC com tamanho 16 do bloco CIDR IPv4.




![Captura de tela 2024-10-03 173659](https://github.com/user-attachments/assets/daf5a288-3e3f-445e-b0c6-92d511693561)

Aqui definimos as zonas de disponibilidade, quantidade de subnets públicas e privadas e o gateway NAT.




![Captura de tela 2024-10-03 173941](https://github.com/user-attachments/assets/4b5819a1-21cc-46b1-8961-6373aab636e7)

Criando fluxo em que a VPC irá trabalhar.




![Captura de tela 2024-10-03 174012](https://github.com/user-attachments/assets/86bf65d2-2946-48b3-b747-bb0cab0e178d)

O esquema ficou assim no início, mas na metade do projeto eu fiz algumas alterações e deletei uma tabela de rotas que estava atrapalhando, além de fazer algumas alterações no trajeto dos recursos.



o mapa de recursos foi finalizado, eis o resultado: 

![image](https://github.com/user-attachments/assets/99ebfd2f-0dc1-46aa-b465-05847a5b8ea0)


### 2. PASSO - Criar duas instâncias EC2

![Captura de tela 2024-10-03 210007](https://github.com/user-attachments/assets/7c343594-9916-4a5c-8009-6754aa68a2b2)

![Captura de tela 2024-10-03 210056](https://github.com/user-attachments/assets/9049cd36-6346-4841-9c45-227d7175f0f1)

![Captura de tela 2024-10-03 210130](https://github.com/user-attachments/assets/48d4a6c2-570e-4d37-805f-790ddfe4e04e)





