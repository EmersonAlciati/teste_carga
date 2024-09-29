@echo off 

rem Excluir resultados anteriores
del /s /q perf_reports
rmdir /s /q perf_reports

rem Criar pasta (se não existir)
mkdir perf_reports

rem Executar testes
call jmeter -n -Jrampup=5 -Jusers=48  -Jduration=180 -Jthroughput=1500 -t 001_perf_test_south_system.jmx -l perf_reports/output25.jtl -e -o perf_reports/report25
call jmeter -n -Jrampup=10 -Jusers=96  -Jduration=180 -Jthroughput=3000 -t 001_perf_test_south_system.jmx -l perf_reports/output50.jtl -e -o perf_reports/report50
call jmeter -n -Jrampup=15 -Jusers=144  -Jduration=180 -Jthroughput=4500 -t 001_perf_test_south_system.jmx -l perf_reports/output75.jtl -e -o perf_reports/report75
call jmeter -n -Jrampup=30 -Jusers=288  -Jduration=180 -Jthroughput=15000 -t 001_perf_test_south_system.jmx -l perf_reports/output250.jtl -e -o perf_reports/report250
call jmeter -n -Jrampup=30 -Jusers=576  -Jduration=180 -Jthroughput=30000 -t 001_perf_test_south_system.jmx -l perf_reports/output500.jtl -e -o perf_reports/report500