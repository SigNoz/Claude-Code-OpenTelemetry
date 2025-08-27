# Claude-Code + OpenTelemetry (SigNoz Cloud)

This repo contains two helper scripts for quickly wiring up OpenTelemetry exports from your local dev machine to **SigNoz Cloud** while you work with Claude Code / VS Code.

- `claude_code_otel_terminal.sh` — sets environment variables for the current terminal session.  
- `claude_code_otel_vscode.sh` — launches VS Code (`code`) with the same environment so anything you run from VS Code (tasks, debug sessions, terminals) ships traces/metrics/logs to SigNoz.


## 1) Prerequisites

- SigNoz Cloud account and an Ingestion Key.  
- Your region’s OTLP endpoint (hostname only; port is `443`):
- VS Code CLI (`code`) available in your PATH (see below).

### Make sure `code` is linked to VS Code

- **macOS**: In VS Code, open Command Palette → `Shell Command: Install 'code' command in PATH`.  
- **Windows**: During install, select “Add to PATH”. Or run VS Code installer again and enable that option.  
- **Linux**: If you installed via a package manager, `code` is usually in PATH already (`which code` to confirm).


## 2) Configure the scripts

Open each script and replace the placeholders:

- Set the **`<region>`** to match your SigNoz Cloud [**region**](https://signoz.io/docs/ingestion/signoz-cloud/overview/#endpoint)
- Replace **`<your-signoz-ingestion-key>`** with your SigNoz [**ingestion key**](https://signoz.io/docs/ingestion/signoz-cloud/keys/)

## 3) Make the scripts executable

Before running them, give both scripts execution permissions:
```bash
chmod +x ./claude_code_otel_terminal.sh
chmod +x ./claude_code_otel_vscode.sh
```

  
