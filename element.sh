#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"


# Verificar si se proporcionó argumento
if [[ -z $1 ]]; then
  echo "Please provide an element as an argument."
  exit
fi

# Determinar si es número, símbolo o nombre
INPUT=$1
if [[ $INPUT =~ ^[0-9]+$ ]]; then
  QUERY_CONDITION="atomic_number = $INPUT"
else
  QUERY_CONDITION="symbol = INITCAP('$INPUT') OR name = INITCAP('$INPUT')"
fi

RESULT=$($PSQL "
SELECT e.atomic_number, e.name, e.symbol, t.type, p.atomic_mass, p.melting_point_celsius, p.boiling_point_celsius
FROM elements e
JOIN properties p ON e.atomic_number = p.atomic_number
JOIN types t ON p.type_id = t.type_id
WHERE e.$QUERY_CONDITION;
")

if [[ -z $RESULT ]]; then
  echo "I could not find that element in the database."
  exit
fi

# Parsear resultado
IFS="|" read -r ANAME NAME SYMBOL TYPE MASS MELT BOIL <<< "$RESULT"

echo "The element with atomic number $ANAME is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT celsius and a boiling point of $BOIL celsius."
