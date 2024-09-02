# Trip Planner API

Este é um projeto de estudo, desenvolvido durante a NLW Journey da [RocketSeat](https://github.com/rocketseat-education). O projeto é uma API de planejador de viagens desenvolvida em Go, utilizando Docker e PostgreSQL. 

## Índice

- [Sobre](#sobre)
- [Tecnologias](#tecnologias)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Configuração do Ambiente](#configuração-do-ambiente)
- [Rodando a Aplicação](#rodando-a-aplicação)
- [Contribuição](#contribuição)

## Sobre

A API de planejador de viagens tem como objetivo fornecer funcionalidades para gerenciar e organizar viagens. O projeto foi desenvolvido utilizando o Go (Golang), utiliza PostgreSQL como banco de dados e é configurado para ser executado em um ambiente Docker.

## Tecnologias

- **Go (Golang)**
- **Docker**
- **PostgreSQL**
- **pgAdmin**
- **Mailpit**

## Estrutura do Projeto

- `main.go`: Ponto de entrada da API.
- `internal/`: Contém o código da aplicação.
  - `api/`: Código relacionado à API.
  - `pgstore/`: Código relacionado ao banco de dados PostgreSQL.
- `Dockerfile`: Arquivo para construir a imagem Docker da aplicação.
- `compose.yml`: Arquivo para orquestrar os containers Docker.
- `.env`: Arquivo para variáveis de ambiente.

## Configuração do Ambiente

1. **Clone o repositório:**

   ```bash
   git clone https://github.com/Larissatds/trip-planner-api-golang.git
   cd trip-planner-api-golang

2. **Crie um arquivo .env com as seguintes variáveis de ambiente:**
   ```bash
   JOURNEY_DATABASE_HOST=db
   JOURNEY_DATABASE_PORT=5432
   JOURNEY_DATABASE_NAME=seubanco
   JOURNEY_DATABASE_USER=seuusuario
   JOURNEY_DATABASE_PASSWORD=suasenha

  3. **Inicie os containers Docker:**
     ```bash
     docker-compose up -d

  4. **Comandos `go generate`:**
    
     Este projeto utiliza `go generate` para executar comandos de geração de código. Os seguintes comandos são configurados:

      * `goapi-gen`: Gera o código a partir dos arquivos de especificação.
      * `tern migrate`: Executa as migrações de banco de dados.
      * `sqlc generate`: Gera o código de acesso ao banco de dados a partir dos arquivos de configuração.
              
      Certifique-se de que todas as ferramentas necessárias estão instaladas e configuradas corretamente.

## Rodando a Aplicação

1. **Para gerar os arquivos necessários, execute:**
   ```bash
   go generate ./...
   
2. **Inicie o aplicativo:**
    ```bash
    go run main.go
3. **Acesso ao Banco de Dados:**

   **pgAdmin:** Acesse o pgAdmin na URL http://localhost:8081 com as credenciais definidas em compose.yml.

   **PostgreSQL:** O banco de dados PostgreSQL está disponível na URL localhost:5432 com as credenciais definidas em .env.
  
## Contribuição

Sinta-se à vontade para enviar sugestões, relatórios ou bugs. Basta abrir uma issue.

Espero que este documento seja útil para entender e configurar o projeto. Se você tiver alguma dúvida ou precisar de assistência adicional, entre em contato comigo.
