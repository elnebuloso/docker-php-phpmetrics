param(
    [string]$command = ""
)

$tag = "php-phpmetrics"
$pwd = [string](Get-Location)
$pwd = $pwd.Replace("\", "/")

if ($command -eq "build") {
    docker build --rm --pull --tag ${tag} --file Dockerfile .
}

if ($command -eq "verify") {
    docker run -it --rm ${tag} --version
}

if ($command -eq "help") {
    docker run -it --rm ${tag} --help
}

if ($command -eq "test") {
    Remove-Item -LiteralPath "./test/report" -Force -Recurse
    mkdir -p ./test/report
    git clone https://github.com/symfony/asset.git test/symfony-asset
    docker run --rm --volume ${pwd}:/app -w /app ${tag} --report-html=/app/test/report/report --report-csv=/app/test/report/report.csv --report-json=/app/test/report/report.json /app/test/symfony-asset
}
