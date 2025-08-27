#!/bin/bash
# 1. Enable telemetry
export CLAUDE_CODE_ENABLE_TELEMETRY=1

# 2. Choose exporters (both are optional - configure only what you need)
export OTEL_METRICS_EXPORTER=otlp       # Options: otlp, prometheus, console
export OTEL_LOGS_EXPORTER=otlp          # Options: otlp, console

# 3. Configure OTLP endpoint (for OTLP exporter)
export OTEL_EXPORTER_OTLP_PROTOCOL=grpc
export OTEL_EXPORTER_OTLP_ENDPOINT="https://ingest.<region>.signoz.cloud:443"

# 4. Set authentication (if required)
export OTEL_EXPORTER_OTLP_HEADERS="signoz-ingestion-key=<your-signoz-ingestion-key>"

# 5. For debugging: reduce export intervals
export OTEL_METRIC_EXPORT_INTERVAL=10000  # 10 seconds (default: 60000ms)
export OTEL_LOGS_EXPORT_INTERVAL=5000     # 5 seconds (default: 5000ms)

# 6. Run Claude
claude