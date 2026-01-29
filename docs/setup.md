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
```
Or use the provided file:

sql/schema.sql

## 2) Import workflow into n8n

In n8n:

Workflows → Import from File / Clipboard

Select: workflows/workflow1-lead-ingestion.json

## 3) Configure the HTTP Request node

Update:

API URL

Authentication (if needed)

Example test API:

https://jsonplaceholder.typicode.com/users

## 4) Configure PostgreSQL credentials

Create a new credential in n8n:

Credentials → New → PostgreSQL

Fill:

Host

Database

User

Password

## 5) Run a test

Click Execute Workflow once.

Check database:

SELECT * FROM leads;


If rows appear, the pipeline is working.
