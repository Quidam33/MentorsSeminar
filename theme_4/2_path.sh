#!/bin/bash

# 1. Вывод начального значения PATH и добавление новой директории

echo "Начальный PATH: $PATH"

new_path="$1"

export PATH="$PATH:$new_path"

echo "Текущий PATH: $PATH"


# 2. Объяснение

# Изменения переменной PATH, сделанные через терминал, временны, потому что они применяются только к текущей сессии терминала.  При закрытии терминала все переменные окружения (в тч PATH) будут сброшены.

# Для того, чтобы сделать постоянными:
# echo -e "$(cat /path_to_dir/.bashrc)\nexport PATH=\$PATH:$1" > /path_to_dir/.bashrc
# далее перезапусить терминал: source .bashrc

