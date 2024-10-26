FileEncoding, UTF-8
;{G5hQ+3+}{8ZtEQ0{f&u:$}4
f1::
Send {Ctrl Down}c{Ctrl Up}
StringReplace, clipboard, clipboard, <p>, , all
StringReplace, clipboard, clipboard, </p>, , all
StringReplace, clipboard, clipboard, <b>, , all
StringReplace, clipboard, clipboard, </b>, , all
StringReplace, clipboard, clipboard, %A_space%%A_space%, , all
clipboard = `<h2`>%clipboard%`<`/h2`>
Send {Ctrl Down}v{Ctrl Up}
return


f2::
Send {Ctrl Down}c{Ctrl Up}
StringReplace, clipboard, clipboard, `r`n, %A_space%, all
StringReplace, clipboard, clipboard, <h2>, , all
StringReplace, clipboard, clipboard, </h2>, , all
StringReplace, clipboard, clipboard, <b>, , all
StringReplace, clipboard, clipboard, </b>, , all
StringReplace, clipboard, clipboard, Основная Характеристика`:, `<b`>Основная Характеристика`:<`/b`>, all
StringReplace, clipboard, clipboard, Основная характеристика`:, `<b`>Основная Характеристика`:<`/b`>, all


StringReplace, clipboard, clipboard, Кость Хитов`:, `<b`>Кость Хитов`:<`/b`>, all
StringReplace, clipboard, clipboard, Кость хитов`:, `<b`>Кость Хитов`:<`/b`>, all
StringReplace, clipboard, clipboard, Владение спасбросками`:, `<b`>Владение спасбросками`:<`/b`>, all
StringReplace, clipboard, clipboard, Владение навыками`:, `<b`>Владение навыками`:<`/b`>, all
StringReplace, clipboard, clipboard, Владение оружием`:, `<b`>Владение оружием`:<`/b`>, all
StringReplace, clipboard, clipboard, Владение инструментом`:, `<b`>Владение инструментом`:<`/b`>, all
StringReplace, clipboard, clipboard, Владение доспехами`:, `<b`>Владение доспехами`:<`/b`>, all
StringReplace, clipboard, clipboard, Стартовое снаряжение`:, `<b`>Стартовое снаряжение`:<`/b`>, all

StringReplace, clipboard, clipboard, Заклинательная характеристика`., `<b`>Заклинательная характеристика`.<`/b`>, all
StringReplace, clipboard, clipboard, Заклинательная фокусировка`., `<b`>Заклинательная фокусировка`.<`/b`>, all

StringReplace, clipboard, clipboard, Изменение подготовленных заклинаний`., `<b`>Изменение подготовленных заклинаний`.<`/b`>, all
StringReplace, clipboard, clipboard, Подготовленные заклинания 1+ уровня`., `<b`>Подготовленные заклинания 1+ уровня`.<`/b`>, all
StringReplace, clipboard, clipboard, Ячейки заклинаний`., `<b`>Ячейки заклинаний`.<`/b`>, all
StringReplace, clipboard, clipboard, Заговоры`., `<b`>Заговоры`.<`/b`>, all
StringReplace, clipboard, clipboard, На более высоких уровнях`., `<b`>На более высоких уровнях`.<`/b`>, all
StringReplace, clipboard, clipboard, Количество использований`., `<b`>Количество использований`.<`/b`>, all
StringReplace, clipboard, clipboard, Тип существа`:, `<b`>Тип существа`:<`/b`>, all
StringReplace, clipboard, clipboard, Размер`:, `<b`>Размер`:<`/b`>, all
StringReplace, clipboard, clipboard, Темное Зрение`., `<b`>Тeмное Зрение`.<`/b`>, all
StringReplace, clipboard, clipboard, Тёмное Зрение`., `<b`>Тeмное Зрение`.<`/b`>, all
StringReplace, clipboard, clipboard, Скорость`:, `<b`>Скорость`:<`/b`>, all
StringReplace, clipboard, clipboard, Повышение характеристики`., `<b`>Повышение характеристики`.<`/b`>, all

StringReplace, clipboard, clipboard, Улучшение заговора`., `<b`>Улучшение заговора`.<`/b`>, all
StringReplace, clipboard, clipboard, Накладывание более высокой ячейкой`., `<b`>Накладывание более высокой ячейкой`.<`/b`>, all
StringReplace, clipboard, clipboard, Использование ячейки заклинания более высокого уровня`:, `<b`>Накладывание более высокой ячейкой`.<`/b`>, all


IfInstring, clipboard, Необходимое%A_space%условие
{
clipboard = `<i`>%clipboard%`<`/i`>

}

IfInstring, clipboard, Необходимые%A_space%условия
{
clipboard = `<i`>%clipboard%`<`/i`>

}


IfInstring, clipboard, Требование
{
clipboard = `<i`>%clipboard%`<`/i`>

}


clipboard = `<p`>%clipboard%`<`/p`>
Send {Ctrl Down}v{Ctrl Up}
return

f3::
Send {Ctrl Down}c{Ctrl Up}
StringReplace, clipboard, clipboard, `r`n, %A_space%, all
;clipboard = `<b`>%clipboard%`<`/b`>
string = ;
i=1
Loop, parse, clipboard, `.
{
	If i = 1
	{
	string = %A_LoopField%
	break
	}
	i++
}

StringReplace, clipboard, clipboard, %string%`., `<b`>%string%`.`<`/b`>
clipboard = `<p`>%clipboard%`<`/p`>
Send {Ctrl Down}v{Ctrl Up}


return

f4::
Send {Ctrl Down}c{Ctrl Up}
clipboard = `<i`>%clipboard%`<`/i`>
Send {Ctrl Down}v{Ctrl Up}
return

f5::
Send {Ctrl Down}c{Ctrl Up}
StringReplace, clipboard, clipboard, `r`n, %A_space%, all
StringReplace, clipboard, clipboard, <h2>, , all
StringReplace, clipboard, clipboard, </h2>, , all
StringReplace, clipboard, clipboard, <b>, , all
StringReplace, clipboard, clipboard, </b>, , all
clipboard = `<p`>`<i`>%clipboard%`<`/i`>`<`/p`>
Send {Ctrl Down}v{Ctrl Up}
return

f6::
Send {Ctrl Down}c{Ctrl Up}
clipboard = `<b`>%clipboard%`<`/b`>
Send {Ctrl Down}v{Ctrl Up}
return

f7::
Send {Ctrl Down}c{Ctrl Up}
StringLower, clipboard, clipboard

return

f8::
Send {Ctrl Down}c{Ctrl Up}
FileDelete, %A_scriptdir%/tmp.txt
FileDelete, %A_scriptdir%/tmp2.txt
FileAppend, %clipboard%, %A_scriptdir%/tmp.txt
i=0
append =;
FileAppend,  <div class=featherlight-inner><img id=@@@ class="favourite" onclick="addFavourite(this)" ontouch="addFavourite(this)" src="img/heart.png" />`n,  %A_scriptdir%/tmp2.txt
Loop, read, %A_scriptdir%/tmp.txt
{
	if i = 0
	{
		append = <h2 class=spellname>%A_LoopReadLine%%A_space%(КТсВВ)`<`/h2`>`n<h2 class=eng><a href="@@@" target="_blank">@@@</a></h2>
		FileAppend, %append%`n, %A_scriptdir%/tmp2.txt

	}
	
	ifInString, A_LoopReadLine, уровень 
	{
		append = <h3>%A_LoopReadLine%</h3>`n<p><strong>Доступно для классов:</strong> @@@</p>
		FileAppend, %append%`n, %A_scriptdir%/tmp2.txt

	}
	ifInString, A_LoopReadLine, Время
	{
		StringReplace, append, A_LoopReadLine, `:, `:</strong>
		append = <p><strong>%append%`<`/p`>
		FileAppend, %append%`n, %A_scriptdir%/tmp2.txt

	}

	IfInString, A_LoopReadLine, Дистанция
	{
		StringReplace, append, A_LoopReadLine, `:, `:</strong>
		append = <p><strong>%append%`<`/p`>
		FileAppend, %append%`n, %A_scriptdir%/tmp2.txt


	}

	IfInString, A_LoopReadLine, Компоненты
	{
		StringReplace, append, A_LoopReadLine, `:, `:</strong>
		append = <p><strong>%append%`<`/p`>
		FileAppend, %append%`n, %A_scriptdir%/tmp2.txt



	}

	IfInString, A_LoopReadLine, Длительность
	{
		StringReplace, append, A_LoopReadLine, `:, `:</strong>
		append = <p><strong>%append%`<`/p`>
		FileAppend, %append%`n, %A_scriptdir%/tmp2.txt



	}

	IfInString, A_LoopReadLine, `<p
	{
		StringReplace, append, A_LoopReadLine, На%A_Space%больших%A_Space%уровнях`., <strong>На%A_Space%больших%A_Space%уровнях`.</strong>
		append = %append%`<`/p`>
		FileAppend, %append%`n, %A_scriptdir%/tmp2.txt


	}
	i++

	

}

   FileAppend,<p>&nbsp;</p>`n, %A_scriptdir%/tmp2.txt     
    FileAppend, </div>`n, %A_scriptdir%/tmp2.txt  

FileRead, clipboard, %A_scriptdir%/tmp2.txt

StringReplace, clipboard, clipboard, Концентрация`,%A_space%вплоть, Концентрация

return

f9::
i=1
Send {Ctrl Down}c{Ctrl Up}
FileDelete, %A_scriptDir%/tmp.txt
FileAppend, %clipboard%, %A_scriptDir%/tmp.txt
FileAppend, <table border="1" style="width:600px">`n, %A_scriptDir%/tmp2.txt
Loop, Read, %A_scriptDir%/tmp.txt
{

	StringReplace, append, A_LoopReadLine, ", @, all
	IfInString, append, @
	{
		StringReplace, append, append, @, </td><td>, all
		If i = 1
		{
		FileAppend, <tr><td><b>%append%</b></td></tr>`n,  %A_scriptDir%/tmp2.txt
		}
		else
		{
		FileAppend, <tr><td>%append%</td></tr>`n,  %A_scriptDir%/tmp2.txt
		}

	}


	Else
	{
		FileAppend, <tr><td colspan="2"><b>%append%</b></td></tr>`n,  %A_scriptDir%/tmp2.txt
	}
	i++

}
FileAppend, </table>`n,  %A_scriptDir%/tmp2.txt

FileRead, clipboard, %A_scriptDir%/tmp2.txt
FileDelete, %A_scriptDir%/tmp.txt
FileDelete, %A_scriptDir%/tmp2.txt
Send {Ctrl Down}v{Ctrl Up}
return


;f9::
;Send {Ctrl Down}c{Ctrl Up}
;StringReplace, clipboard, clipboard, Характеристики`:, `<b`>Характеристики`:<`/b`>, all
;StringReplace, clipboard, clipboard, Черта`:, `<b`>Черта`:<`/b`>, all
;StringReplace, clipboard, clipboard, Навыки`:, `<b`>Навыки`:<`/b`>, all
;StringReplace, clipboard, clipboard, Владение инструментом`:, `<b`>Владение инструментом`:<`/b`>, all
;StringReplace, clipboard, clipboard, Снаряжение`:, `<b`>Снаряжение`:<`/b`>, all
;StringReplace, clipboard, clipboard, Характеристики`:, `<b`>Характеристики`:<`/b`>, all
;Send {Ctrl Down}v{Ctrl Up}
;return