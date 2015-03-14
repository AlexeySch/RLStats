select concat(ifnull(pr.firstname,'') ,'  ', pr.lastname) Player, e.name 'Event', count(*) 'Count' from spi4s_joomleague_match_event me 
join  spi4s_joomleague_eventtype e on me.event_type_id=e.id
JOIN  spi4s_joomleague_team_player tp on tp.id = me.teamplayer_id
JOIN spi4s_joomleague_person pr on pr.id = tp.person_id
group by concat(ifnull(pr.firstname,'') ,'  ', pr.lastname) ,e.name;