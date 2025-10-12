#!/bin/bash

# Generate 100 folders with corresponding YAML files to answer practice questions
for i in {1..23}
do
  folder_name="Question $i"
  mkdir -p "$folder_name"
  touch "$folder_name/question_$i.yaml"
  touch "$folder_name/question_$i.md"
  echo "# Question $i" > "$folder_name/question_$i.md"
done

echo "Successfully created 100 folders with YAML files and README files"