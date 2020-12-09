rule tokenize = parse
| "sélectionne" { "SELECT" }
| "àpartirde" { "FROM" }
| "où" { "WHERE" }
| "insérer" { "INSERT" }
| "metàjour" { "UPDATE" }
| "supprime" { "DELETE" }
| "créationde" { "CREATE" }
| "modifie" { "ALTER" }
| "jette" { "DROP" }
| "àlintérieur" { "INTO" }
| "valeurs" { "VALUES" }
| "lorsquelon" { "ON" }
| "définit" { "SET" }
| "miseenconcubinage" { "UNION" }
| "entrecoupement" { "INTERSECT" }
| "àladifférencede" { "MINUS" }
| "jointurecroisée" { "CROSS JOIN" }
| "jointuredudedans" { "INNER JOIN" }
| "jointuregauche" { "LEFT JOIN" }
| "jointuredroite" { "RIGHT JOIN" }
| "ainsique" { "AND" }
| "pas" { "NOT" }
| "oubien" { "OR" }
| "entier" { "INT" }
| "nombre" { "NUMBER" }
| "caractère" { "CHAR" }
| "caractèrevariableversiondeux" { "VARCHAR2" }
| "néant" { "NULL" }
| "vide" { "VOID" }
| "connusouslenomde" { "AS" }
| "intercaléentre" { "BETWEEN" }
| "regrouperpar" { "GROUP BY" }
| "ordonnerpar" { "ORDER BY" }
| "ayant" { "HAVING" }
| "dormir" { "SLEEP" }
| "commettre" { "COMMIT" }
| "contrainte" { "CONSTRAINT" }
| "vérifieque" { "CHECK" }
| "pointdesauvegarde" { "SAVEPOINT" }
| "retourenarrière" { "ROLLBACK" }
| "tronque" { "TRUNCATE" }
| "maintenant" { "SYSDATE" }
| "laracineducarréde" { "ABS" }
| "moyenne" { "AVG" }
| "divisépar" { "DIVIDE" }
| "larrondide" { "ROUND" }
| "additiondetout" { "SUM" }
| "puissance" { "POWER" }
| "leculminantde" { "MAX" }
| "lemoindrede" { "MIN" }
| "lepluspetitde" { "LEAST" }
| "leplusgrandde" { "GREATEST" }
| "croisillon" { "#" }
| "et" { "," }
| "tout" { "*" }
| "incrémentationautomatique" { "AUTO_INCREMENT" }
| "sansduplications" { "DISTINCT" }
| "estprésentdans" { "EXISTS" }
| "clef" { "PRIMARY KEY" }
| "clefpasdecheznous" { "FOREIGN KEY" }
| "utilise" { "USE" }
| "labasededonnée" { "DATABASE" }
| "montremoi" { "SHOW" }
| "latable" { "TABLE" }
| "lestables" { "TABLES" }
| "autorise" { "GRANT" }
| "empêche" { "RESTRICT" }
| "taillede" { "LENGTH" }
| "minusculer" { "LOWER" }
| "majusculer" { "UPPER" }
| "assembler" { "CONCAT" }
| "semblablea" { "LIKE" }
| "dénombre" { "COUNT" }
| "lintégralitéde" { "ALL" }
| "lundes" { "ANY" }
| "si" { "IF" }
| "dedans" { "IN" }
| "est" { "IS" }
(*
| ['0'-'9']+ as s { s }
| ['A'-'Z' 'a'-'z' '_']['A'-'Z' 'a'-'z' '_' '0'-'9']* as id { id } (* makes the whole thing larger *)
| ['\t' ' ' '\n'] as c { String.make 1 c }
*)
| _ as c { String.make 1 c }
| eof { "" }
