# «Магическое» вычисление пути к корневой директории, в которой расположен этот
# файл. Берётся первое вхождение в списке открытых на текущий момент
# makefile-ов и вычисляется его директория

root := $(patsubst %/,%,$(dir $(firstword ($MAKEFILE_LIST))))

# Основная цель сборки

all: bishop

include $(root)/makenv/src/core.mk
include $(root)/tex/inc/gnu.mk

include $(root)/bishop/gnu.mk
