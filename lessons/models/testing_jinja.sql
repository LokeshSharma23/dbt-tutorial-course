{# Jinja Comments #}
{#
	A comment that won't appear in the Complied SQL
-#}

-- A comment that will appear in the Complied SQL

/* Multiline comment that will appear in the Complied SQL
*/

{# Jinja Statements #}

{% set my_long_variable -%}

SELECT 1 as my_col

{%- endset %}

{% set my_list = ['user_id', 'created_at'] %}

{# Jinja Expressions #}

{{ my_long_variable }}
{{ my_long_variable }}
{{ my_long_variable }}

{{my_list}}

SELECT
{%- for item in my_list %}
	{{ item }}{% if not loop.last%},{% endif %}

{%- endfor %}

{{my_list}}
