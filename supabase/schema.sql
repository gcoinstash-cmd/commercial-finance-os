-- Commercial Finance Engine OS Database Schema
-- Row Level Security (RLS) Enabled

CREATE TABLE IF NOT EXISTS underwritten_deals (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  project_name TEXT NOT NULL,
  deal_type TEXT NOT NULL CHECK (deal_type IN ('debt-coverage', 'ten-year-hold', 'saas-metrics')),
  region_hub TEXT NOT NULL,
  property_category TEXT,
  gross_revenue NUMERIC(14, 2) NOT NULL,
  net_operating_income NUMERIC(14, 2) NOT NULL,
  annual_debt_service NUMERIC(14, 2),
  dscr_ratio NUMERIC(6, 2),
  ten_year_irr NUMERIC(6, 2),
  underwriter_notes TEXT,
  deal_status TEXT NOT NULL DEFAULT 'analyzed' CHECK (deal_status IN ('draft', 'analyzed', 'approved', 'rejected')),
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS metropolitan_market_indices (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  slug TEXT UNIQUE NOT NULL,
  city_name TEXT NOT NULL,
  state TEXT NOT NULL,
  default_vacancy_rate NUMERIC(5, 2) NOT NULL,
  baseline_tax_rate NUMERIC(5, 2) NOT NULL,
  prime_cap_rate NUMERIC(5, 2) NOT NULL,
  market_brief TEXT,
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Row Level Security
ALTER TABLE underwritten_deals ENABLE ROW LEVEL SECURITY;
ALTER TABLE metropolitan_market_indices ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public read access to deals"
  ON underwritten_deals FOR SELECT
  USING (true);

CREATE POLICY "Allow public insert to deals"
  ON underwritten_deals FOR INSERT
  WITH CHECK (true);

CREATE POLICY "Allow public read access to market indices"
  ON metropolitan_market_indices FOR SELECT
  USING (true);
