nombre=10
if (( nombre > 10 )); then
  echo "Supérieur à 10"
elif (( nombre == 10 )); then
  echo "Égal à 10"
else
  echo "Inférieur à 10"
fi

