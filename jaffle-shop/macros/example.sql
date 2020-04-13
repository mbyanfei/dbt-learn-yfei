{% macro group_by(n) %}
  GROUP BY
   {%- for i in range(1, n) -%}
     {{ i }}
     {% if not loop.last %} , {% endif %}
   {%- endfor -%}
{% endmacro %}