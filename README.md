# Aplicação Web em Java de controle de lista de tarefas (to-do list).

API Projeto Controle de lista de tarefas (to-do list)

> Projeto em andamento!

## 🎯 Objetivo

Implementar uma API RESTful em Java para manter uma lista simples de tarefas TO-DO List, com uso
do Spring Boot, Spring Framework, Spring Data JPA e Hibernate Validator. A implementação da API
deve utilizar o diagrama de classe abaixo e fornecer as operações para criar, listar, buscar, atualizar e
remover os recursos: Tarefa (Task), Etiqueta (Tag) e Usuário (User).

<img src="https://github.com/EnzowMb/To-do-list-Security/assets/89809584/5bc453fa-ac37-4317-b914-fb767f421cf9" width="800px">

Acrescentar as técnicas de Segurança da API para a aplicação Web em Java de controle de lista de tarefas (to-do list), com uso de Spring Security, OAuth 2 e JWT.

## 🔨 Tecnologias utilizadas:
<br>
<div align="center">
  <img src="https://media.giphy.com/media/hO8uTzEOefFh3Yv5gm/giphy.gif" width="80px"><br>Java<br><br>
  <img src="https://github.com/EnzowMb/EnzowMb/assets/89809584/4f3d4387-46e5-4b82-ac9a-13848cf7ca41" width="80px"><br>Spring Boot<br><br>
</div>

Banco de dados:
```bash 
MySQL
```
[![My Skills](https://skillicons.dev/icons?i=mysql)](https://skillicons.dev)

Dependências:
```bash 
Spring Security
Flyway
Bcrypt
Spring Data JPA
Bean Validation
OAuth2
```
## 🤓 Conhecimentos Adquiridos:

1. API RESTful, Spring Data JPA e Hibernate:
   - `JPA` é uma especificação com o objetivo de definir e padronizar a forma como os desenvolvedores resolvem determinada coisa.
     - A implementação mais famosa é o **Hibernate**.<br><br>
   - O **Hibernate** facilita o mapeamento dos atributos entre uma base tradicional de dados
      relacional e o modelo de objeto de uma aplicação, mediante o uso de arquivos
      (XML) ou anotações Java.<br><br>
   - `Spring Data JPA` ajuda os desenvolvedores padronizando o uso de algumas funcionalidades, e isso faz com que
      tenhamos menos esforço para implementar as mesmas coisas de antes.
     - Um exemplo disso seria a implementação padrão que ele já nos dá em repositórios
       (`JpaRepository`) para métodos como `save, delete, findOne`, entre outros.<br><br>
2. Bean Validation e Hibernate Validator:
   - `Jakarta Bean Validation API` (anteriormente conhecido como `Bean Validation
      API`) permite definir validações de dados usando anotações em seus Java Beans.
     - Seu lema é _"restrinja uma vez, valide em todos os lugares"_ (_"constrain once,
        validate everywhere"_).<br><br>
   - **Hibernate Validator** é um projeto open source conduzido pela empresa _Red Hat_, que permite a
      validação dos dados, presentes nas classes que modelam o domínio da aplicação,
      em qualquer arquitetura (Web, Desktop, etc.) e em tempo de execução.<br><br>
3. Mapeamento de relacionamentos entre entidades com Hibernate:
   - O relacionamento um-para-um, também conhecido como oneto-one, pode ser usado para dividir uma entidade em duas
      (criando duas tabelas), para ficar mais normalizado e
      organizado.<br><br>
   - A anotação `@OneToMany` deve ser utilizada para mapear coleções.<br><br>
4. Segurança da aplicação com Spring Security, OAuth 2 e JWT:
   - `Spring Security` fornece suporte excelente para autenticação e autorização.
     - Com algumas poucas configurações, já podemos ter uma autenticação via banco de dados, `LDAP` (_Lightweight Directory Access Protocol_), etc.
     - Através das permissões que atribuímos aos usuários autenticados, podemos proteger as
        requisições web, a simples invocação de um método e até a instância de um objeto.
     - Além disso, fornece proteção contra diversos ataques conhecidos, como o `Session Fixation`
        (fixação de sessão), `clickjacking` (roubo de clique) e o `Cross Site Request Forgery` (CSRF -
        falsificação de solicitação entre sites).<br><br>
    - `OAuth 2` é um framework de autorização que permite que os aplicativos obtenham
        acesso limitado a contas de usuário em um serviço HTTP, como Facebook,
        GitHub, entre outros.
      - Fornece fluxos de autorização para aplicativos da web e de desktop, e dispositivos móveis.
      - OAuth define quatro funções:
        - Proprietário do recurso;
        - Cliente;
        - Servidor de Recursos;
        - Servidor de Autorização.
      - Tipo de concessão: **Credenciais de senha do proprietário do recurso**.<br><br>
    - `JSON Web Token (JWT)` é um padrão aberto que define uma maneira compacta e
        independente para transmitir informações com segurança entre as partes como
        um objeto `JSON`.
      - Os `JWTs` podem ser assinados usando um segredo (com o `algoritmo HMAC` ) ou um par de chaves pública/privada usando `RSA` ou `ECDSA`.<br><br>

### 🤖 Pré-requisitos

Requisitos para o software e outras ferramentas para desenvolver e testar.
- IDE Java;
- JDK 17;
- Spring Boot;
- Postman
- MySQL

[![My Skills](https://skillicons.dev/icons?i=mysql,java,postman,spring)](https://skillicons.dev)

### 🎲 Instalando e executando
```bash 
# Clonar este repositório
$ git clone https://github.com/ViniciusFausto/Task-Management.git

#Exportando o projeto
- Exporte o projeto como maven project na sua IDE de preferencia.


```
## 👥 Autor
  - **Enzo Martinelli**
