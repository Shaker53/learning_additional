#! /usr/bin/bash

while [[ 1 < 2 ]]
do
  read ch1 ch2
  if  [[ -z $ch1 || -z $ch2 ]] ; then
    echo "bye"
    break
  fi
  
  if [[ $ch1 -lt $ch2 ]] ; then
    gcd=$ch1
  else
    gcd=$ch2
  fi
  
  while [[ 1 < 2 ]]
  do
    let "ost1 = ch1 % gcd"
    let "ost2 = ch2 % gcd"
    if [[ $ost1 -eq 0 && $ost2 -eq 0 ]] ; then
      echo "GCD is $gcd"
      break
    fi
    let "gcd -= 1"
  done
done

#Напишите скрипт на bash, который будет 
#искать наибольший общий делитель (НОД, 
#greatest common divisor, GCD) двух чисел. 
#При запуске ваш скрипт не должен ничего 
#писать на экран, а просто ждет ввода двух 
#натуральных чисел через пробел (для этого 
#можно использовать read и указать ему две 
#переменные -- см. пример в видеофрагменте). 
#После ввода чисел скрипт считает их НОД и 
#выводит на экран сообщение "GCD is 
#<посчитанное значение>", например, для 
#чисел 15 и 25 это будет "GCD is 5". После 
#этого скрипт опять входит в режим ожидания 
#двух натуральных чисел. Если в какой-то 
#момент работы пользователь ввел вместо 
#этого пустую строку, то нужно написать на 
#экран "bye" и закончить свою работу.
#
#Пример корректной работы скрипта:
#./script.sh
#10 15
#GCD is 5
#7 3 
#GCD is 1
#
#bye