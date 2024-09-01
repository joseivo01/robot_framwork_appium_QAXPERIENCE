# YODAPP-ROBOT

Este repositório contém o progresso do uso da biblioteca Appium no Robot Framework para automação de testes em dispositivos Android e iOS. O objetivo é criar e evoluir scripts automatizados para testar a aplicação YODAPP.

## Estrutura do Repositório

- **app/**: Contém o APK do aplicativo para ser testado.
- **logs/**: Diretório onde os logs de execução dos testes são armazenados.
- **resources/**: Arquivos de recursos utilizados nos testes.
- **tests/**: Scripts de teste automatizados usando Robot Framework.
- **node_modules/**: Dependências do projeto (não versionadas).

## Aplicativo

Você pode baixar o aplicativo necessário para os testes através do link abaixo:

[Download do Aplicativo](https://drive.google.com/file/d/1aPJJhU2RRBLx6fU90f2e_s_ejIyLgkQe/view?usp=sharing)

## Como Executar os Testes

1. Instale as dependências do projeto:
    ```bash
    npm install
    ```

2. Execute os testes com o Robot Framework:
    ```bash
    robot -d logs tests/
    ```

3. Veja os resultados no arquivo `report.html` dentro do diretório `logs/`.

## Contribuição

Sinta-se à vontade para abrir issues e pull requests para contribuir com o progresso do projeto. Vamos melhorar a automação juntos! :)

## Licença

Este projeto está licenciado sob a [Nome da Licença].

---

Siga o repositório para acompanhar os avanços!
