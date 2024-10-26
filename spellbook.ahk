FileEncoding, UTF-8
f5::
id = 0
i=1
spelllevel =;
spellname =;
Loop, read, E:\phb2024\spell.txt
{
	If i=1
		{
			FileAppend, <div class=featherlight-inner><img id=%id% class="favourite" onclick="addFavourite(this)" ontouch="addFavourite(this)" src="img/heart.png" />`n, %A_Scriptdir%\spelldone.txt
			spellname = %A_LoopReadLine%%A_space%(КИ)
			FileAppend, <h2 class=spellname>%A_LoopReadLine%%A_space%(КИ)</h2>`n, %A_Scriptdir%\spelldone.txt
		}
	If i=2
		{
			StringReplace, append, A_LoopReadLine, [, , all 
			StringReplace, append, append, ], , all
			StringReplace, hyper, append, %A_space%, `%20, all
			hyper = <h2 class=eng><a href="https://5e.tools/spells.html#%hyper%_xphb" target="_blank">
			append = %append% 
			FileAppend, %hyper%%append%</a></h2>`n, %A_Scriptdir%\spelldone.txt
			id++
		}
	If i=3
		{
			StringLeft, spelllevel, A_LoopReadLine, 1
				If spelllevel = З
					{
					 spelllevel := 0
					}
			FileAppend, <h3>%A_LoopReadLine%</h3>`n, %A_Scriptdir%\spelldone.txt
		}
	If i=4
		{
			StringReplace, append, A_LoopReadLine, (, , all 
			StringReplace, append, append, ), , all
			FileAppend, <p><strong>Доступно для классов:</strong>%append%</p>`n, %A_Scriptdir%\spelldone.txt
			Loop, parse, append, `,
				{
					StringReplace, class, A_LoopField, %A_Space%, , all
					FileAppend, `'%spellname%`'`,, %A_Scriptdir%\class\%class%%spelllevel%.txt

				}
		}
	If i>4
		{
			StringReplace, append, A_LoopReadLine, Время накладывания`:, <strong>Время накладывания`:</strong>, all
			StringReplace, append, append, Дистанция`:, <strong>Дистанция`:</strong>, all
			StringReplace, append, append, Компоненты`:, <strong>Компоненты`:</strong>, all
			StringReplace, append, append, Длительность`:, <strong>Длительность`:</strong>, all
			IfInString, append, `<p`>
				{

				}
			Else
				{
					append = `<p`>%append%</p>
				}
			StringReplace, append, append, <b>, <strong>, all
			StringReplace, append, append, </b>, </strong>, all
			StringReplace, append, append, <p></p>, <p>&nbsp`;</p>`n</div>, all
			FileAppend, %append%`n, %A_Scriptdir%\spelldone.txt
		}
	

	i++
	lenght := StrLen(A_LoopReadLine)
	;MsgBox, %lenght%, %A_LoopReadLine%
	If lenght = 0
		{
		i = 1
		FileAppend, `n, %A_Scriptdir%\spelldone.txt
		
		}

}
return

f6::
Loop, read, %A_Scriptdir%\eng.txt
{
check = 0
	string = %A_LoopReadLine%
	Loop, read, %A_Scriptdir%\spelldone.txt
	{
		IfInString, A_LoopReadLine, %string%
		{
			FileAppend, %string%`n, %A_Scriptdir%\f.txt
			check = 1
			break		
		}


	}
if check = 0
{
FileAppend, %string%`n, %A_Scriptdir%\nf.txt
}

}