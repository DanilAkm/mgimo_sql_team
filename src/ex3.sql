select account.email AS account_email, count(*) as tarifs_ever
FROM account
    JOIN public.account_tarif a on account.id = a.account_id
GROUP BY account.email
ORDER BY 2 DESC
LIMIT 3