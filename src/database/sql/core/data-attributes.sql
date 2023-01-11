-- selectDataAttributes
SELECT *
FROM (
  SELECT data_size, content_type, true AS stable
  FROM stable_transactions
  WHERE id = @id
  UNION
  SELECT data_size, content_type, true AS stable
  FROM new_transactions
  WHERE id = @id
)
LIMIT 1
