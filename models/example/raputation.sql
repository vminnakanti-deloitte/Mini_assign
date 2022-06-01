SELECT XMLGET(value,'Id'):"$" as "Id",
XMLGET(value,'DisplayName'):"$" as "DisplayName",
XMLGET(value,'Reputation'):"$" as "Reputation"
FROM USERS,
LATERAL FLATTEN(to_array(USERS.users_xml:"$" )) order by 'Reputation' desc limit 10