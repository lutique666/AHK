FileEncoding, UTF-8

f1::
Send {Ctrl Down}c{Ctrl Up}
StringReplace, clipboard, clipboard, <p>, , all
StringReplace, clipboard, clipboard, </p>, , all
StringReplace, clipboard, clipboard, <b>, , all
StringReplace, clipboard, clipboard, </b>, , all
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
clipboard = `<p`>%clipboard%`<`/p`>
Send {Ctrl Down}v{Ctrl Up}
return

f3::
Send {Ctrl Down}c{Ctrl Up}
clipboard = `<b`>%clipboard%`<`/b`>
Send {Ctrl Down}v{Ctrl Up}
return

f4::
Send {Ctrl Down}c{Ctrl Up}
clipboard = `<b`>`<i`>%clipboard%`<`/i`>`<`/b`>
Send {Ctrl Down}v{Ctrl Up}
return

f5::
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