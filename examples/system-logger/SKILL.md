# Skill Name: System Logger

## 🎯 Purpose
Use this skill to safely append structured audit logs to the system log file.

## 🛠️ Permitted Tools & Commands
The following commands are authorized:
1. `echo`
2. `cat` (for reading only)
3. `date`

## 🚫 Negative Constraints (The "Never" List)
- NEVER overwrite the log file using `>`.
- NEVER modify historical log entries.
- NEVER log sensitive credentials (tokens, passwords).

## 📝 Execution Protocol
1. **Probe**: Get current timestamp using `date -u +"%Y-%m-%dT%H:%M:%SZ"`.
2. **Execute**: Append the log entry atomically using `echo "[TIMESTAMP] [AGENT_NAME] [ACTION]" >> /var/log/openclaw/audit.log`.
3. **Verify**: Use `tail -n 1 /var/log/openclaw/audit.log` to confirm the write.

## 📤 Output Format
`NO_REPLY`
