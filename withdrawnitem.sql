/* 
Report shows items that have had a status of withdrawn for more than
3 weeks and their icode2 have not been updated to 'w' 

Created by AGW
Updated: 4/29/2026
*/

SELECT  DISTINCT 'b'||b.record_num||'a' as "Bib Record#",
	CASE
		WHEN pei.index_entry IS NULL THEN UPPER(peb.index_entry) 
		ELSE UPPER(pei.index_entry)
	END 
	AS "Call#",
	i.location_code as "Location", 
	brp.best_title AS "Title", 
	i.barcode AS "Barcode", 
	i.last_status_update::date AS "Updated"

	
FROM sierra_view.item_view i
JOIN sierra_view.bib_record_item_record_link bri ON bri.item_record_id=i.id
JOIN sierra_view.bib_view b ON bri.bib_record_id=b.id
JOIN sierra_view.phrase_entry peb ON peb.record_id=b.id AND peb.index_tag='c'
JOIN sierra_view.bib_record_property brp ON brp.bib_record_id=b.id
JOIN sierra_view.record_metadata rm ON rm.id=i.id
LEFT JOIN sierra_view.phrase_entry pei ON pei.record_id=i.id AND pei.index_tag='c'
LEFT JOIN sierra_view.checkout c ON c.item_record_id=i.id

WHERE i.item_status_code IN ('w')
AND i.icode2 NOT IN ('w')
AND i.last_status_update::date<=now()- interval '21 day'
ORDER BY i.location_code, "Call#"