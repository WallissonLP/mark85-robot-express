# 🚀 mark85-robot-express

Projeto de automação de testes de interface web desenvolvido durante o curso **Robot eXpress** (Fernando Papito), com ênfase em:

- **Robot Framework** (linguagem de alto nível para testes)  
- **SeleniumLibrary** (navegador/Web UI)  
- Estrutura organizada com boas práticas e versionamento completo  

---

## 📁 Estrutura do projeto

```
mark85-robot-express/
├── tests/                  # Arquivos .robot com casos de teste automatizados
├── resources/              # Keywords customizadas e reutilizáveis
├── variables/              # Dados de teste reutilizáveis
├── results/                # Relatórios de execução (HTML, XML, LOG)
├── requirements.txt        # Dependências (Robot Framework, SeleniumLibrary, etc.)
└── .gitignore
```

---

## ⚙️ Configuração do ambiente

1. Faça clone:
   ```bash
   git clone https://github.com/WallissonLP/mark85-robot-express.git
   cd mark85-robot-express
   ```

2. Crie e ative seu ambiente virtual:
   ```bash
   python -m venv venv
   . venv/bin/activate        # macOS/Linux
   .\venv\Scripts\Activate    # Windows
   ```

3. Instale dependências:
   ```bash
   pip install -r requirements.txt
   ```

---

## ▶️ Execução de testes

Para executá-los e gerar relatórios, use:

```bash
robot -d results tests/
```

A pasta `results/` terá:
- `log.html`  
- `report.html`  
- `output.xml`  

Abra `report.html` no navegador para uma visão detalhada dos resultados.

---

## 📊 Relatórios e erros identificados

De acordo com a última execução:
- O teste **“Não deve cadastrar com senha de 5 dígitos”** falhou  
- **Erro registrado:** `Test cannot be empty.`

---

## 🔧 Melhorias planejadas

- [x] Configuração completa (Robot + Selenium)  
- [x] Estrutura de pastas e versionamento no Git  
- [x] Teste básico de interface (abrir navegador, preencher, clicar)  
- [ ] Parametrização de dados de teste (CSV, XLSX)  
- [ ] Reuso de keywords profissionais  
- [ ] Casos funcionais de ponta a ponta  

---

## 🧠 O que aprendi com o curso

- Instalação e configuração do Robot Framework  
- Uso intensivo da SeleniumLibrary (locators, ações, validações)  
- Criação de estrutura modular de testes  
- Solução de erros comuns, como `EADDRINUSE` em ambiente API local  
- Criação e interpretação de relatórios de teste  

---

## 📦 Primeira Release

Versão inicial entregue com:

- Estrutura básica do projeto  
- Ambiente de testes configurado  
- Casos automatizados com interface  
- Relatórios de execução disponíveis  

🔗 [Acesse o repositório](https://github.com/WallissonLP/mark85-robot-express)

---

## 📜 Certificado

**Curso concluído:**  
🎓 Robot eXpress – Automação de testes com Robot Framework + Selenium (Fernando Papito)  
🏅 Certificado: UC-1f578496-bf7c-4704-9bb4-bdcfcc33946e  
🔗 [Ver certificado na Udemy](https://ude.my/UC-1f578496-bf7c-4704-9bb4-bdcfcc33946e)

---

## 🤝 Próximos passos

- [ ] Adicionar novos testes (login, formulários, fluxos dinâmicos)  
- [ ] Explorar integração com **CI/CD (GitHub Actions)**  
- [ ] Considerar uso de **Playwright** como alternativa moderna ao Selenium  
