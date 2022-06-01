SELECT XMLGET(value,'AboutMe'):"$" as "Questions"
FROM USERS,
LATERAL FLATTEN(to_array(USERS.users_xml:"$" )) where GET('DisplayName'.value,'@')='%nau%'