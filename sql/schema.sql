-- Lead ingestion schema
-- Database: PostgreSQL

CREATE TABLE IF NOT EXISTS leads (
  lead_id TEXT PRIMARY KEY,
  email TEXT,
  status TEXT,
  source TEXT,
  created_at TIMESTAMP
);

-- Optional index for faster queries by date
CREATE INDEX IF NOT EXISTS idx_leads_created_at ON leads(created_at);
