 #!/bin/bash 
echo Что вы хотите сделать?
echo 1 Показать текущий каталог
echo 2 Подняться на каталог выше
echo 3 Перейти в каталог
echo 4 Выйти из программы

while : [ $doing != 4 ] 
do
echo Введите необходимую цифру:
read doing
case $doing in
1)
pwd
;;
2)
cd .. $pwd
echo $PWD
;;
3)
echo В какую директорию желаете перейти?
read path
while :
do
if [ ! -d $path ]; then
echo Каталога не существует
echo Введите имя каталога снова:
read path
else
cd $path
echo $PWD
echo "Хотите продолжить(y/n)?"
read response

	if [[ $response == "y" || $response == "Y" || $response == "n" || $response == "N" ]]
	then
   		if [[ $response == "n" || $response == "N" ]]
    		then
        	echo "Выход из программы"
        	exit 0
    		else
		echo "Что вы хотите сделать?"
		fi
	else
	echo "Неправильный ввод, попробуйте снова:"
	read response
	fi
	break
fi
done
;;
4) 
exit 0
;;
*)
echo Введено неправильное действие.
;;
esac
done
