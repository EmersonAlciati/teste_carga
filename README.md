# Executar jmeter

Executar o script: `pathText.bat`

Necessário que o comando `jmeter` esteja disponível no CMD (variáveis de ambiente).

Resultados estão na pasta `perf_reports`.

# Jenkins

O arquivo `Jenkisfile` contém as tarefas para executar em uma tarefa do Jenkins.

Necessário configurar uma pipeline (Job) Multibranch para executar o `Jenkinsfile`.

# Docker

Na pasta `jmeter-docker` está o `README.MD` com os passos para criar a imagem e executar com o docker-compose.
