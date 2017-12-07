#!/bin/bash
# script criado para ser usado como modulo para o polybar,
# vai dizer se a placa nvidia está em uso ou não.

    if [ "$( grep -o "OFF" /proc/acpi/bbswitch )" == "OFF" ]
    then
      echo "Nvidia = Inativo "
    elif [ "$( grep -o "ON" /proc/acpi/bbswitch )" == "ON" ]
    then
      echo "Nvidia = Ativo "
    fi