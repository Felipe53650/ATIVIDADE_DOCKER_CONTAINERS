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

Mais adiante eu criei um segundo par de chaves SSH, nomeado como projeto2b.

![6](https://github.com/user-attachments/assets/2e2ca6ff-9c4c-4571-be13-921564dad45e)

![8](https://github.com/user-attachments/assets/83317914-df0e-4557-a433-0a37ae38f552)

![9](https://github.com/user-attachments/assets/44c69698-aea5-4406-8b93-de188e79b01d)



### 3. PASSO - Configurar um Load Balancer

![13](https://github.com/user-attachments/assets/eb2a9b81-ccee-4199-8bfe-62279e678d52)

![14](https://github.com/user-attachments/assets/7e21f245-c9cc-4ad0-bf26-0bcb73a4bde1)

![image](https://github.com/user-attachments/assets/1d25eb8a-b31c-47eb-8c97-bf315c0d8eee)


### 4. PASSO - Criar um Banco de Dados (RDS)

![15](https://github.com/user-attachments/assets/666386c2-b054-4dc4-b29b-be59704b500d)

![16](https://github.com/user-attachments/assets/8b4361ba-754d-49c0-8b70-da858edcc996)

![17](https://github.com/user-attachments/assets/e0d625e5-920a-4543-98d9-35b601336670)

![image](https://github.com/user-attachments/assets/37d7d5e4-37d8-4db7-8648-1b3bd288b66e)

![image](https://github.com/user-attachments/assets/a1c269a7-ad4d-4ac8-bcab-9081798dcd80)


### 5. PASSO - Criar um Sistema Elástico de Arquivos (EFS)

![21](https://github.com/user-attachments/assets/454b09f3-50ad-45fb-9282-01a2b7e8ab10)

![image](https://github.com/user-attachments/assets/1fbcdbfe-74a2-4c8c-9268-df778192d867)

![image](https://github.com/user-attachments/assets/d0b39d54-ec04-4797-8b83-e351541614d2)







