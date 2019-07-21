f7::
FileDelete, F:\tmp.txt
FileDelete, F:\tmp2.txt
FileAppend, %clipboard%, F:\tmp.txt
FileAppend,  <div class=featherlight-inner>, F:\tmp2.txt
i=0
check = 0
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
		StringReplace, append, append, natural armor, Естественный доспех
		StringReplace, append, append, Large, Большой
		StringReplace, append, append, Medium, Средний
		StringReplace, append, append, Small, Маленький
		StringReplace, append, append, Tiny, Крохотный	
		StringReplace, append, append, unaligned, без мировоззрения
		StringReplace, append, append, construct, конструкт
		StringReplace, append, append, beast, зверь
		StringReplace, append, append, fiend, исчадие
		StringReplace, append, append, elemental, элементаль
		StringReplace, append, append, Damage Vulnerabilities, <b>Уязвимость к урону:</b>
		StringReplace, append, append, Damage Resistances, <b>Сопротивление урону:</b>
		StringReplace, append, append, bludgeoning`, piercing`, and slashing from nonmagical attacks that aren`'t silvered, дробящему`, колющему`, режущему урону от немагического оружия, которое не посеребрено
		StringReplace, append, append, bludgeoning`, piercing`, slashing from nonmagical attacks, дробящему`, колющему`, режущему урону от немагического оружия

		;Состояния
		StringReplace, append, append, frightened, Испуганный
		StringReplace, append, append, charmed, Очарованный
		StringReplace, append, append, exhaustion, Истощение
		StringReplace, append, append, grappled, Схваченый
		StringReplace, append, append, paralyzed, Парализованный
		StringReplace, append, append, petrified, Окаменевший
		StringReplace, append, append, poisoned, Отравленный
		StringReplace, append, append, prone, Опрокинутый
		StringReplace, append, append, restrained, Опутанный		

		;Типы урона
		StringReplace, append, append, acid, кислота
		StringReplace, append, append, cold, холод
		StringReplace, append, append, fire, огонь
		StringReplace, append, append, lightning, электричество
		StringReplace, append, append, thunder, звук
		StringReplace, append, append, necrotic, некротический
		StringReplace, append, append, poison, яд
		StringReplace, append, append, radiant, излучение,
		StringReplace, append, append, force, силовой,


		
		;Передвижение
		StringReplace, append, append, fly, полет
		StringReplace, append, append, swim, плавание
		StringReplace, append, append, climb, лазанье
		StringReplace, append, append, burrow, копание	
		
		StringReplace, append, append, the languages it knew in life, Языки, который знал при жизни
		

		StringReplace, append, append, Hit Points, <b>Хиты:</b>
		StringReplace, append, append, Speed, <b>Скорость:</b>

		StringReplace, append, append, Saving Throws, <b>Спасброски:</b>
		StringReplace, append, append, Damage Immunities, <b>Иммунитет к урону:</b>
		StringReplace, append, append, Condition Immunities, <b>Иммунитет к состояниям:</b>
		StringReplace, append, append, Senses, <b>Чувства:</b>
		StringReplace, append, append, passive Perception, пассивная Внимательность
		StringReplace, append, append, darkvision, тёмное зрение
		StringReplace, append, append, blindsight, слепое зрение

		StringReplace, append, append, Languages, <b>Языки:</b>
		StringReplace, append, append, understands all languages it spoke in life but can't speak, понимает языки`, известные при жизни`, но не говорит
		StringReplace, append, append, understands commands given in any language but can't speak, понимает команды, отданные на любом языке, но не говорит

		StringReplace, append, append, Challenge, <b>Опасность</b>
  		StringReplace, append, append, XP, опыта
		StringReplace, append, append, Melee Weapon Attack:,  <i>Рукопашная атака оружием:</i>
		StringReplace, append, append, to hit, к попаданию
		StringReplace, append, append, reach, досягаемость
		StringReplace, append, append, one target, одна цель
		StringReplace, append, append, Hit:, <i>Попадание:</i>
		StringReplace, append, append, bludgeoning damage., дробящего урона.
		IfInString, append, STR%A_tab%DEX
		{
		StringReplace, append, append, %append%, <table align=`"center`" width=`"80`%`" border=1>`n<tr align="center">`n<td><b>СИЛ</b></td>`n<td><b>ЛОВ</b></td>`n<td><b>ТЕЛ</b></td>`n<td><b>ИНТ</b></td>`n<td><b>МДР</b></td>`n<td><b>ХАР</b></td>`n</tr>`n
		check = 1
		}
		
		IfInString, append, `(
		{
			if check =1
			{
			StringReplace, append, append, %A_tab%, `</td>`n<td>
			append = <tr align="center">`n<td>%append%</td>`n<tr>`n</table>
			check =0
			}

		}
		StringReplace, append, append, STR, Сила
		StringReplace, append, append, DEX, Ловкость
		StringReplace, append, append, CON, Телосложение
		StringReplace, append, append, INT, Интеллект		
		StringReplace, append, append, WIS, Мудрость
		StringReplace, append, append, CHA, Харизма
		StringReplace, append, append, Reactions,  <strong>Реакция</strong>
		StringReplace, append, append, Actions,  <strong>Действия</strong>
		StringReplace, append, append, ft.,  фт., all
		
		IfInString, append, table
		{

		}
		Else
		{
		append = <p>%append%</p>
		}	
	
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
		IfInString, append, Спасброски:
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
