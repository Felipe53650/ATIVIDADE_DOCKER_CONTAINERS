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

![28](https://github.com/user-attachments/assets/9e38c4c2-6474-42be-a024-289c81d38168)


### 4. PASSO - Criar um Banco de Dados (RDS)

![15](https://github.com/user-attachments/assets/666386c2-b054-4dc4-b29b-be59704b500d)

![16](https://github.com/user-attachments/assets/8b4361ba-754d-49c0-8b70-da858edcc996)

![17](https://github.com/user-attachments/assets/e0d625e5-920a-4543-98d9-35b601336670)

![18](https://github.com/user-attachments/assets/ac3629b2-7d03-439e-8c21-435a6b1642c1)

![19](https://github.com/user-attachments/assets/c9c48c7b-4c48-4216-838a-cd7edfa609df)

![20](https://github.com/user-attachments/assets/74f097a6-54f7-4c1e-9e58-8fe52b9083ac)

![image](https://github.com/user-attachments/assets/37d7d5e4-37d8-4db7-8648-1b3bd288b66e)

![image](https://github.com/user-attachments/assets/a1c269a7-ad4d-4ac8-bcab-9081798dcd80)


### 5. PASSO - Criar um Sistema Elástico de Arquivos (EFS)

![21](https://github.com/user-attachments/assets/454b09f3-50ad-45fb-9282-01a2b7e8ab10)

![image](https://github.com/user-attachments/assets/1fbcdbfe-74a2-4c8c-9268-df778192d867)

![image](https://github.com/user-attachments/assets/d0b39d54-ec04-4797-8b83-e351541614d2)

### 6. PASSO - Criar um Modelo de Execução

![22](https://github.com/user-attachments/assets/09fb9fe0-eba3-4da2-a324-5d90c9992d2b)

![23](https://github.com/user-attachments/assets/9c7a70b9-8013-4e2b-be79-11e444c8c81c)

![24](https://github.com/user-attachments/assets/426494d0-ced8-4f98-9b55-f0abbcb885d5)

![29](https://github.com/user-attachments/assets/9b5fe9a3-74d8-41d9-b80c-4aaec11894ff)

![30](https://github.com/user-attachments/assets/e15db0c0-5367-430f-9f60-18e9c6f3e264)

![31](https://github.com/user-attachments/assets/631aa658-8a45-4d84-b9f3-a5939fa2bb3d)


### 7. PASSO - Criar um grupo de auto scaling

![25](https://github.com/user-attachments/assets/cabbdd7f-f740-42f4-bdd2-96decf5b96c4)

![26](https://github.com/user-attachments/assets/ede53ceb-ce39-42c0-a420-619050548898)

A capacidade desejada ficou em 2 instâncias. A capacidade MÍNIMA desejada também ficou em 2 instâncias, e a capacidade MÁXIMA também em 2 instâncias. Se o usuário for encerrar uma instância, ele pode optar por reduzir a capacidade para 1 ou 0 e salvar. Caso queira abrir novamente as instâncias, deverá aumentar a capacidade para 2 novamente. Assim, o auto scaling irá criar duas novas instâncias para substituir.

![image](https://github.com/user-attachments/assets/ef59a73d-c186-41f5-a3c6-8285910e43f1)

### 8. PASSO - Criar um Grupo de Destino

![27](https://github.com/user-attachments/assets/2330a120-3104-4671-a552-693ebae7ace7)


### 9. PASSO - Conectar as instâncias EC2 via Endpoint

![image](https://github.com/user-attachments/assets/6c2608f3-b3bf-444e-ae4d-4b12d0255b3d)


### 10. PASSO - Criar um script executável via nano 

`sudo nano docker-compose.yml`

Usei o script abaixo:

```
version: '3.8'

services:
  wordpress:
    image: wordpress
    container_name: wordpress
    ports:
      - "80:80"
    environment:
      WORDPRESS_DB_HOST: "db"
      WORDPRESS_DB_USER: "wordpress"
      WORDPRESS_DB_PASSWORD: "wordpress"
      WORDPRESS_DB_NAME: "wordpress"
      TZ: "America/Sao_Paulo"
    volumes:
      - /mnt/efs:/var/www/html
    networks:
      - wp-network

  db:
    image: mysql:5.7
    container_name: db
    environment:
      MYSQL_DATABASE: "wordpress"
      MYSQL_USER: "wordpress"
      MYSQL_PASSWORD: "wordpress"
      MYSQL_ROOT_PASSWORD: "root_password"
    volumes:
      - db_data:/var/lib/mysql
    networks:
      - wp-network

volumes:
  db_data:

networks:
  wp-network:

```
Salva com CTRL+O, ENTER e CTRL+X


### 11. PASSO - Montar o sistema de arquivos EFS 

`sudo mount -t efs -o tls fs-033d3aab5cdc7030e:/ /mnt/efs`

Esse comando é encontrado no menu da opção ANEXAR, na aba de Elastic File System

Agora deve ser verificado o status do mesmo:

`df -h`

![image](https://github.com/user-attachments/assets/e77b05ce-f66f-4d38-9bea-0ab6d0e13b95)


### 12. PASSO - Verifique o DNS do Load Balancer se está correto

`nslookup <seu-dns>` (o seu dns você copia do dns mostrado no load balancer)

![image](https://github.com/user-attachments/assets/a6154172-fc54-4483-9490-fd3f8b693fbb)


### 13. PASSO - Logar o container dentro do banco de dados

`docker run -it --rm mysql:5.7 mysql -h wordpress.ct2mimkcu79c.us-east-1.rds.amazonaws.com -u wordpress -p`  (vai no RDS e pega o endpoint do banco de dados)

### 14. PASSO - Verificar o status e os logs do container

`docker ps` (verifica o status)

![image](https://github.com/user-attachments/assets/d06cfdf1-7757-4af4-8f69-d7675d6a1d76)


`docker logs wordpress` (verifica os logs)

![image](https://github.com/user-attachments/assets/296a0e2e-db6f-4d2d-ad79-5735c038e918)


### 15. PASSO - Subir o container

`docker-compose up`

O terminal provavelmente irá iniciar vários downloads entre outras coisas, e quando começar a vir os logs, você abre uma nova aba no navegador e cola o seu DNS no campo da URL. Talvez irá aparecer algum erro como 502 Bad Gateway ou 503 Service unavailable, caso aconteça, vai atualizando a página com F5 ou CTRL+R até aparecer as telas do WordPress.

## RESULTADOS

![Captura de tela 2024-10-07 100349](https://github.com/user-attachments/assets/a2b0a6e2-6b87-4534-8c71-d6845f7a0ed3)

![Captura de tela 2024-10-07 100432](https://github.com/user-attachments/assets/db6b8195-af33-4636-a0be-b7c132eb9239)

![Captura de tela 2024-10-07 100452](https://github.com/user-attachments/assets/b3fc24b7-d394-4c80-8159-20e7f5805367)

![Captura de tela 2024-10-06 203331](https://github.com/user-attachments/assets/ce4d824c-f745-4561-b802-6ade99d65152)

De acordo com as imagens mostradas, o container subiu e está rodando com sucesso. O WordPress está interativo e de acordo com o esperado.




