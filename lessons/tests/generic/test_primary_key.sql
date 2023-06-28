{#
	This test is basically a "not_null" and "unique"
	rolled into one.

	It fails if a column is NULL or occurs more than once
#}


{% test primary_key(model,column_name) %}

WITH validation as (
	SELECT
		{{ column_name }} AS primary_key,
		COUNT(1) AS occurrences
	FROM {{model}}
	GROUP BY 1
)

SELECT *

FROM validation
WHERE primary_key is NULL
	OR occurrences > 1

{% endtest %}