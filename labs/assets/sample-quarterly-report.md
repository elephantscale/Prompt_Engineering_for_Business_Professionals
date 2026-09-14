# Q3 2026 Operations Report — Northwind Supply Co. (Sample)

*Fictional company. Sample data for training use only.*

## Summary of the quarter

Q3 revenue was $4.2M, up 6% from Q2 ($3.96M) but below the $4.5M plan. Growth came almost
entirely from the new **Self-Serve** tier, which added 310 accounts. The Enterprise segment
was flat, and two large accounts (Metro Finance, Delta Manufacturing) signaled they may not
renew at year end.

## Customers

- Total active accounts: 2,940 (up from 2,610 in Q2).
- Net new accounts: 330; churned accounts: 41.
- Churn was concentrated in Enterprise, where 4 of 6 lost accounts cited "missing SSO/SAML."
- NPS rose from 31 to 38 after the August support-response-time improvement.

## Support

- Median first-response time fell from 9 hours to 4 hours after adding two agents in August.
- Ticket volume rose 22% quarter over quarter, driven by billing questions.
- The single most common ticket theme was **duplicate billing** (roughly 1 in 6 tickets in
  August), traced to a payment-retry bug fixed on Aug 28.

## Product

- Shipped: faster CSV import, a redesigned dashboard, mobile push notifications.
- Slipped to Q4: bulk export, SSO/SAML (the top enterprise-churn reason), audit logs.
- Engineering spent ~30% of the quarter on the billing incident and its cleanup.

## Finance

- Gross margin held at 71%.
- Cash runway: 14 months at current burn.
- The largest cost increase was cloud infrastructure, up 18%, partly from the billing-retry
  bug generating excess load.

## Risks the team is watching

1. Two enterprise accounts at renewal risk over SSO (combined ~$380K ARR).
2. Bulk export and SSO have now slipped two quarters; sales is discounting to hold accounts.
3. Support headcount is back to healthy, but a repeat billing incident would undo the NPS gain.

## Open decisions

- Whether to pull SSO forward into early Q4 by delaying audit logs.
- Whether to offer a retention discount to the two at-risk enterprise accounts, and how deep.
- Whether to raise Self-Serve pricing now that it's the growth engine.
