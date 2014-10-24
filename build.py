#coding=utf-8

# Сборка: scons
# Очистка проекта: scons -c

import os

Import("env")

out = env.PDF(target = "main.pdf", source = "main.tex")
Depends(out, Split("main.tex /home/amv/books/biblio.bib"))
env.Precious(out)

