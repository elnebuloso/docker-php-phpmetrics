#/bin/bash

case "$1" in
    create)
        docker build -t docker-php-phpmetrics --rm --pull -f Dockerfile .
    ;;

    verify)
        docker run -it --rm docker-php-phpmetrics --version
    ;;

    help)
        docker run -it --rm docker-php-phpmetrics --help
    ;;

    test)
        rm -rf test/report
        mkdir -p test/report
        git clone https://github.com/symfony/asset.git test/symfony-asset > /dev/null 2>&1

        docker run --rm -w $(pwd) -v $(pwd):$(pwd) docker-php-phpmetrics \
            --report-html=$(pwd)/test/report/report \
            --report-csv=$(pwd)/test/report/report.csv \
            --report-json=$(pwd)/test/report/report.json \
            $(pwd)/test/symfony-asset
    ;;

    *)
        echo " - create  create container"
        echo " - verify  verify container"
        echo " - help    help container"
        echo " - test    collect metrics from test"
    ;;
esac