# ⚙️ Setup Guide (n8n + PostgreSQL)

## 1) Create PostgreSQL table
Run:

```sql
CREATE TABLE IF NOT EXISTS leads (
  lead_id TEXT PRIMARY KEY,
  email TEXT,
  status TEXT,
  source TEXT,
  created_at TIMESTAMP
);
