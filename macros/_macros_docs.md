macros: 
  - name: cents_to_dollars
    description: "Convert a column from cents to dollars, with an optional parameter for the number of decimal places."
    arguments:
      - name: column_name
        description: "The name of the column containing the amount in cents."
        type: string
      - name: decimals
        description: "The number of decimal places to round to (default is 2)."
        type: integer
    returns: 
    examples: 
      

