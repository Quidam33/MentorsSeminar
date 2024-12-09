#!/bin/bash

# 1. Список файлов с типами
file_list=$(file *)
for file in $file_list; do
    echo $file
done



# 2. Проверка наличия файла, переданного как аргумент
echo
if [ -f "$1" ]; then
    echo "Файл '$1' существует."
 else
    echo "Файл '$1' не существует."
fi


# 3. Цикл for для вывода имени и прав доступа каждого файла
echo
for file in *; do
  if [ -f "$file" ] || [ -d "$file" ]; then # Проверяем, является ли это файлом или каталогом
    echo "$file: $(stat -c %A "$file")"
  fi
done