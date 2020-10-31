#! /usr/bin/bash

counter ()  # takes one argument
{
  local let "c1+=$1"
  let "c2+=${1}*2"
} 

for i in `seq 1 10`;
  do
    counter $i
  done

echo "counters are $c1 and $c2"

#Посмотрите на функцию из bash-скрипта:
#counter ()  # takes one argument
#{
#  local let "c1+=$1"
#  let "c2+=${1}*2"
#} 
#
#Впишите в форму ниже строку, которую выведет 
#на экран команда echo "counters are $c1 and 
#$c2" если она находится в скрипте после 
#десяти вызовов функции counter с параметрами 
#сначала 1, затем 2, затем 3 и т.д., последний 
#вызов с параметром 10.
