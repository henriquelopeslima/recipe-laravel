# 📘 Receita do Laravel

Este repositório serve como **estrutura inicial** para projetos Laravel, já configurado com o ambiente **Docker** e um **Makefile** para facilitar os comandos mais comuns no dia a dia.

## 📦 Estrutura do Projeto

```
docker/
docker-compose.yml
Makefile
[Arquivos padrões do framework laravel]
```

---

## ⚙️ Requisitos

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- (Opcional) [Make](https://www.gnu.org/software/make/)

---

## 🌱 Primeiros Passos

1. **Clonar o repositório**
   ```bash
   git clone https://github.com/henriquelopeslima/recipe-laravel.git [nome da aplicação]
   cd [nome da aplicação]
   ```

2. **Configurar ambiente inicial do projeto**
   ```bash
   make setup
   ```
   > Isso irá copiar o `.env.example`, instalar dependências, gerar a chave da aplicação e rodar as migrações.

3. **Subir os containers**
   ```bash
   make up
   ```
   > Ou para reconstruir imagens:
   ```bash
   make up_build
   ```

4. **Acessar o container PHP**
   ```bash
   make bash
   ```

---

## 📜 Comandos do Makefile

| Comando         | Descrição                               |
|-----------------|-----------------------------------------|
| `make up`       | Sobe os containers                      |
| `make up_build` | Sobe os containers (força rebuild)      |
| `make bash`     | Acessa o bash do container PHP          |
| `make down`     | Para e remove os containers             |
| `make db`       | Acessa o bash do container MySQL        |
| `make style`    | Verifica o code style                   |
| `make setup`    | Configura o ambiente inicial do Laravel |

---

## 🌐 Acesso ao Projeto

Após subir os containers, o Laravel estará disponível em:
```
http://localhost:8080
```

---

## 🛠️ Customização

Você pode ajustar as configurações no `docker-compose.yml` e nos arquivos da pasta `docker/` conforme necessário para cada projeto.

---

## 📄 Licença

Este projeto está licenciado sob a [MIT License](LICENSE).
