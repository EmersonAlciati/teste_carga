

Criar imagem docker:
  docker build -t my/jmeter .

Executar o compose, ou desligar
  docker-compose -f ./docker-compose-jmeter.yaml up -d
  docker-compose -f ./docker-compose-jmeter.yaml down

Executar no container "master"
  jmeter -n -Jrampup=5 -Jusers=48  -Jduration=180 -Jthroughput=1500 -t 001_perf_test_south_system.jmx -l perf_reports/output25.jtl -e -o perf_reports/report25

Após Executar pode pegar os resultado da pasta "/opt/apache-jmeter-5.5/bin/perf_reports" clicando com o botão direito, e apagar o conteúdo com:
  rm -r perf_reports/*

