-- Grano esperado: fact_transacciones_pasarela -> gateway_transaction_id
select gateway_transaction_id
from OLIST_SYNTHETIC_V2.gold.fact_transacciones_pasarela
group by gateway_transaction_id
having count(*) > 1