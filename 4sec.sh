#!/bin/bash
echo "hello friend"
sleep 2.3




score=0
total_questions=5

echo "Welcome to the Math Quiz!"
echo "You will be asked $total_questions arithmetic questions."
echo "Let's begin!"
echo ""

for ((i=1; i<=total_questions; i++))
do
  num1=$((RANDOM % 50 + 1))
  num2=$((RANDOM % 50 + 1))
  
  operation=$((RANDOM % 3 + 1))
  
  case $operation in
    1)
      correct_answer=$((num1 + num2))
      op="+"
      ;;
    2)
      if [ $num1 -lt $num2 ]; then
        temp=$num1
        num1=$num2
        num2=$temp
      fi
      correct_answer=$((num1 - num2))
      op="-"
      ;;
    3)
      correct_answer=$((num1 * num2))
      op="*"
      ;;
  esac
  
  echo "Question $i: What is $num1 $op $num2?"
  read -p "Your answer: " user_answer
  
  if [ "$user_answer" -eq "$correct_answer" ]; then
    echo "Correct!"
    ((score++))
  else
    echo "Incorrect. The correct answer is $correct_answer."
  fi
  echo ""
done

echo "Quiz finished!"
echo "Your score: $score out of $total_questions"
percentage=$((score * 100 / total_questions))
echo "Percentage: $percentage%"

if [ $score -eq $total_questions ]; then
  echo "Perfect score! Well done!"
elif [ $score -ge $((total_questions / 2)) ]; then
  echo "Good job!"
else
  echo "Keep practicing!"
fi
sleep 4
clear
sleep 3
echo "idk why you just took a math quiz but its whatever"
sleep 1
echo "..."
sleep 3
echo "join us https://discord.gg/6KWxfY6fV3"
sleep 60