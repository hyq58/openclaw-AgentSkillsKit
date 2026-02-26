# ✍️ The OpenClaw SKILL.md Writing Guide

Writing a `SKILL.md` is not like writing regular documentation. You are programming an LLM's behavior.

## 1. The "One-Liner" Purpose
Start your `SKILL.md` with a single, unambiguous sentence explaining exactly what this skill does and when to use it.
*Example: "Use this skill ONLY when the user asks to format a disk."*

## 2. Strict Tool Boundaries
Agents will hallucinate tools if you aren't explicit.
- **List available commands**: Explicitly state which CLI commands are allowed.
- **Negative constraints**: Tell the agent what it is NOT allowed to do.
  *Example: "NEVER use `rm -rf`. ALWAYS use `trash`."*

## 3. The "Probe-First" Principle
Require the agent to read state before changing it.
*Example: "Before appending to the log file, use `tail -n 10` to read the current context."*

## 4. Output Formatting
If the skill requires the agent to reply in a specific way to the user or to another agent, define the exact schema (e.g., JSON, specific Markdown blocks).

## 5. Anthropomorphization limits
Tell the agent whether it should speak like a human, or just silently execute and return `NO_REPLY`.
