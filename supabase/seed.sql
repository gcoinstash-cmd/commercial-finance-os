-- Commercial Finance Engine OS Seed Data

INSERT INTO metropolitan_market_indices (slug, city_name, state, default_vacancy_rate, baseline_tax_rate, prime_cap_rate, market_brief) VALUES
  ('new-york-city', 'New York City', 'NY', 4.50, 2.80, 5.25, 'Institutional gateway market with robust flight-to-quality office demand and multi-family rent caps.'),
  ('los-angeles', 'Los Angeles', 'CA', 5.20, 1.25, 5.75, 'Prime entertainment corridor and industrial infill demand near port arteries.'),
  ('miami', 'Miami', 'FL', 6.00, 1.85, 6.10, 'High net-inflow market driven by corporate relocations, zero state income tax, and Class-A condo absorption.'),
  ('austin', 'Austin', 'TX', 7.50, 2.10, 6.40, 'Rapid tech expansion corridor experiencing stabilization in luxury multifamily lease concessions.');

INSERT INTO underwritten_deals (project_name, deal_type, region_hub, property_category, gross_revenue, net_operating_income, annual_debt_service, dscr_ratio, ten_year_irr, underwriter_notes, deal_status) VALUES
  ('Hudson Yards Tower B Refinance', 'debt-coverage', 'new-york-city', 'Office / Retail', 12500000.00, 7800000.00, 5200000.00, 1.50, 16.80, 'Institutional debt-yield exceeds tier 1 mezzanine covenants.', 'approved'),
  ('Century City Creative Campus', 'ten-year-hold', 'los-angeles', 'Industrial Studio', 4800000.00, 3100000.00, 2100000.00, 1.48, 19.20, 'Long-term single-tenant NNN lease with 3.5% contractual escalations.', 'approved'),
  ('Brickell Avenue Financial Tower', 'debt-coverage', 'miami', 'Mixed-Use Prime', 8900000.00, 5400000.00, 3900000.00, 1.38, 17.50, 'Robust cash-on-cash yield with conservative expense load underwriting.', 'analyzed');
