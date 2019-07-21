f7::
FileDelete, F:\tmp.txt
FileDelete, F:\tmp2.txt
FileAppend, %clipboard%, F:\tmp.txt
FileAppend,  <div class=featherlight-inner>, F:\tmp2.txt
i=0
Loop, Read, F:\tmp.txt
{
	if i=0
	{
		StringReplace, append, A_LoopReadLine, %A_LoopReadLine%, <h2 class=spellname>%A_LoopReadLine%</h2>
		append = %append%`n <h2 class=eng><a href="https://5e.tools/bestiary.html#%A_LoopReadLine%" target="_blank">%A_LoopReadLine%</a></h2>
	}

	Else
	{
		StringReplace, append, A_LoopReadLine, Medium undead, Средняя нежить
		StringReplace, append, append, neutral evil, нейтрально-злой
		StringReplace, append, append, Armor Class, <b>Класс Доспеха:</b>
		StringReplace, append, append, Hit Points, <b>Хиты:</b>
		StringReplace, append, append, Speed, <b>Скорость:</b>

		StringReplace, append, append, Saving Throws, <b>Спасброски:</b>
		StringReplace, append, append, Damage Immunities, <b>Иммунитет к урону:</b>
		StringReplace, append, append, Condition Immunities, <b>Иммунитет к состояниям:</b>
		StringReplace, append, append, Senses, <b>Чувства:</b>
		StringReplace, append, append, passive Perception, пассивная Внимательность
		StringReplace, append, append, darkvision, тёмное зрение
		StringReplace, append, append, Languages, <b>Языки:</b>
		StringReplace, append, append, understands all languages it spoke in life but can't speak, понимает языки`, известные при жизни`, но не говорит
		StringReplace, append, append, Challenge, <b>Опасность</b>
  		StringReplace, append, append, XP, опыта
		StringReplace, append, append, Melee Weapon Attack:,  <i>Рукопашная атака оружием:</i>
		StringReplace, append, append, to hit, к попаданию
		StringReplace, append, append, reach, досягаемость
		StringReplace, append, append, one target, одна цель
		StringReplace, append, append, Hit:, <i>Попадание:</i>
		StringReplace, append, append, bludgeoning damage., дробящего урона.

		StringReplace, append, append, STR, <b>СИЛ</b>
		StringReplace, append, append, DEX, <b>ЛОВ</b>
		StringReplace, append, append, CON, <b>ТЕЛ</b>
		StringReplace, append, append, INT, <b>ИНТ</b>		
		StringReplace, append, append, WIS, <b>МДР</b>
		StringReplace, append, append, CHA, <b>ХАР</b>
		StringReplace, append, append, Actions,  <strong>Действия</strong>
		StringReplace, append, append, ft.,  фт.

		append = <p>%append%</p>
		IfInString, append, Класс Доспеха:
		{
		append = <hr/>`n%append%
		} 
		IfInString, append, Скорость
		{
		append = %append%`n<hr/>
		} 
		IfInString, append, Опасность
		{
		append = %append%`n<hr/>
		}
		IfInString, append, Действия
		{
		append = <hr/>`n%append%
		} 
		
	}
	i++
	FileAppend, %append%`n, F:\tmp2.txt
}
FileAppend,  </div>, F:\tmp2.txt

FileRead, clipboard, F:\tmp2.txt
return
