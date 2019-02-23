select StadId, matchdate
, (select DATEDIFF(DAY,  max(MatchDate),s1.MatchDate) from Stadium s2 
where s2.StadId = s1.StadId and s2.Id!=s1.Id and  s2.MatchDate <= s1.MatchDate )
from Stadium s1
--where s1.StadId=1 order by s1.MatchDate
