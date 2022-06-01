SELECT XMLGET(value,'Class'):"$"::integer as "Class_Name",
XMLGET(value,'Date'):"$"::string as "Date",
XMLGET(value,'Id'):"$"::integer as "Id",
XMLGET(value,'Name'):"$"::string as "Name",
XMLGET(value,'TagBased'):"$"::string as TagBased
From BADGES,
LATERAL FLATTEN(to_array(BADGES."BADGES".badges_xml:"$" )) order by TagBased desc limit 10