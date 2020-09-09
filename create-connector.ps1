$headers = @{
    'Content-Type' = 'application/json'
}

$body = @"
{
    "name": "product-connector",
    "config": {
        "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
        "tasks.max": "1",
        "database.hostname": "postgres",
        "database.port": "5432",
        "database.user": "admin",
        "database.password": "admin",
        "database.dbname": "product",
        "database.server.name": "dbserver1",
        "database.whitelist": "product",
        "database.history.kafka.bootstrap.servers": "kafka:9092",
        "database.history.kafka.topic": "schema-changes.product"
    }
}
"@

$params = @{
    Uri         = 'http://localhost:8083/connectors/'
    Headers     = $headers
    Method      = 'POST'
    Body        = $body
    ContentType = 'application/json'
}

Invoke-RestMethod @params