SELECT p.nameFirst, p.nameLast, pi.yearid, pi.G, pi.GS, ROUND((pi.IPouts*1.0/3),1) as IP, pi.W, pi.L, pi.SV, pi.era, pi.SO, pi.BB, pi.CG, pi.SHO, pi.BAOpp, pi.HR, ROUND((pi.SO*9.0)/(pi.IPouts*1.0/3),1) as SO_9, ROUND(pi.BB*9.0/(pi.IPouts*1.0/3),1) as BB_9, ROUND(pi.HR*9.0/(pi.IPouts*1.0/3),1) as HR_9,ROUND((((13*pi.HR) + (3*(pi.BB+pi.HBP-pi.IBB))-(2*pi.SO))*1.0/(pi.IPouts/3) + 3.2),2) as FIP,ROUND((pi.H+pi.BB)*1.0/(pi.IPouts*1.0/3),3) as WHIP, pi.teamID as team, pi.lgID as league 
FROM awardsplayers ap 
    JOIN pitching pi ON pi.playerID = ap.playerID AND pi.yearID = ap.yearID
    JOIN people p ON p.playerID = pi.playerID 
WHERE ap.awardID = 'Cy Young Award' AND pi.IPouts > 218 AND pi.yearid > '1966' AND NOT pi.yearid = '1984' 

ORDER BY pi.yearID DESC



SELECT p.nameFirst, p.nameLast, pi.yearid, pi.G, pi.GS, ROUND((pi.IPouts*1.0/3),1) as IP, pi.W, pi.L, pi.SV, pi.era, pi.SO, pi.BB, pi.CG, pi.SHO, pi.BAOpp, pi.HR, ROUND((pi.SO*9.0)/(pi.IPouts*1.0/3),1) as SO_9, ROUND(pi.BB*9.0/(pi.IPouts*1.0/3),1) as BB_9, ROUND(pi.HR*9.0/(pi.IPouts*1.0/3),1) as HR_9,ROUND((((13*pi.HR) + (3*(pi.BB+pi.HBP-pi.IBB))-(2*pi.SO))*1.0/(pi.IPouts/3) + 3.2),2) as FIP,ROUND((pi.H+pi.BB)*1.0/(pi.IPouts*1.0/3),3) as WHIP, pi.teamID as team, pi.lgID as league 
FROM pitching pi
    JOIN people p ON p.playerID = pi.playerID
    JOIN teams t ON t.ID = pi.team_ID 
WHERE pi.IPouts > 218 AND pi.yearid = '2017'  

ORDER BY pi.yearID DESC


SELECT p.nameFirst, p.nameLast, pi.yearid, pi.G, pi.GS, ROUND((pi.IPouts*1.0/3),1) as IP, pi.W, pi.L, pi.SV, pi.era, pi.SO, pi.BB, pi.CG, pi.SHO, pi.BAOpp, pi.HR, ROUND((pi.SO*9.0)/(pi.IPouts*1.0/3),1) as SO_9, ROUND(pi.BB*9.0/(pi.IPouts*1.0/3),1) as BB_9, ROUND(pi.HR*9.0/(pi.IPouts*1.0/3),1) as HR_9,ROUND((((13*pi.HR) + (3*(pi.BB+pi.HBP-pi.IBB))-(2*pi.SO))*1.0/(pi.IPouts/3) + 3.2),2) as FIP,ROUND((pi.H+pi.BB)*1.0/(pi.IPouts*1.0/3),3) as WHIP, ROUND(ap.pointsWon*100/ap.pointsMax) as points, pi.teamID as team, pi.lgID as league 
FROM awardsshareplayers ap 
		JOIN pitching pi ON pi.playerID = ap.playerID AND pi.yearID = ap.yearID
		JOIN people p ON p.playerID = pi.playerID 
	WHERE ap.awardID = 'Cy Young' AND NOT pi.yearID = '1984' AND pi.yearid = '2002' 

	ORDER BY points DESC
	LIMIT 5