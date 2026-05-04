{#
{% set my_cool_string = "wow cool beans!" %}
{% set best_mum = "Sonam is the best mum in the world!" %}
{% set capabilities = "focused on Veeran's development milestones!" %}

{{ my_cool_string }} {{best_mum}}. She is {{ capabilities }}
#}

{#
{%- set foods = ['radish', 'carrot', 'cabbage', 'chicken nuggets'] -%}

    {%- for food in foods -%}
        {%- if food == 'chicken nuggets' -%}
            {%- set food_type = 'snack' -%}
        {%- else -%}
            {%- set food_type = 'vegetable' -%}
        {%- endif -%}

The {{food}} is a {{food_type}}.

{% endfor %}
#} 

select * from {{ ref('stg_stripe__payments')}}