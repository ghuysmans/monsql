{
  let fr_en = Hashtbl.create 100
  let en_fr = Hashtbl.create 100

  let add fr en =
    Hashtbl.add fr_en fr en;
    Hashtbl.add en_fr en fr

  let () =
    add "sélectionne" "SELECT";
    add "àpartirde" "FROM";
    add "où" "WHERE";
    add "insérer" "INSERT";
    add "metàjour" "UPDATE";
    add "supprime" "DELETE";
    add "créationde" "CREATE";
    add "modifie" "ALTER";
    add "jette" "DROP";
    add "àlintérieur" "INTO";
    add "valeurs" "VALUES";
    add "lorsquelon" "ON";
    add "définit" "SET";
    add "miseenconcubinage" "UNION";
    add "entrecoupement" "INTERSECT";
    add "àladifférencede" "MINUS";
    add "jointurecroisée" "CROSS JOIN";
    add "jointuredudedans" "INNER JOIN";
    add "jointuregauche" "LEFT JOIN";
    add "jointuredroite" "RIGHT JOIN";
    add "ainsique" "AND";
    add "pas" "NOT";
    add "oubien" "OR";
    add "entier" "INT";
    add "nombre" "NUMBER";
    add "caractère" "CHAR";
    add "caractèrevariableversiondeux" "VARCHAR2";
    add "néant" "NULL";
    add "vide" "VOID";
    add "connusouslenomde" "AS";
    add "intercaléentre" "BETWEEN";
    add "regrouperpar" "GROUP BY";
    add "ordonnerpar" "ORDER BY";
    add "ayant" "HAVING";
    add "dormir" "SLEEP";
    add "commettre" "COMMIT";
    add "contrainte" "CONSTRAINT";
    add "vérifieque" "CHECK";
    add "pointdesauvegarde" "SAVEPOINT";
    add "retourenarrière" "ROLLBACK";
    add "tronque" "TRUNCATE";
    add "maintenant" "SYSDATE";
    add "laracineducarréde" "ABS";
    add "moyenne" "AVG";
    add "divisépar" "DIVIDE";
    add "larrondide" "ROUND";
    add "additiondetout" "SUM";
    add "puissance" "POWER";
    add "leculminantde" "MAX";
    add "lemoindrede" "MIN";
    add "lepluspetitde" "LEAST";
    add "leplusgrandde" "GREATEST";
    add "croisillon" "#";
    add "et" ",";
    add "tout" "*";
    add "incrémentationautomatique" "AUTO_INCREMENT";
    add "sansduplications" "DISTINCT";
    add "estprésentdans" "EXISTS";
    add "clef" "PRIMARY KEY";
    add "clefpasdecheznous" "FOREIGN KEY";
    add "utilise" "USE";
    add "labasededonnée" "DATABASE";
    add "montremoi" "SHOW";
    add "latable" "TABLE";
    add "lestables" "TABLES";
    add "autorise" "GRANT";
    add "empêche" "RESTRICT";
    add "taillede" "LENGTH";
    add "minusculer" "LOWER";
    add "majusculer" "UPPER";
    add "assembler" "CONCAT";
    add "semblablea" "LIKE";
    add "dénombre" "COUNT";
    add "lintégralitéde" "ALL";
    add "lundes" "ANY";
    add "si" "IF";
    add "dedans" "IN";
    add "est" "IS"
}

rule tokenize f = parse
| (['A'-'Z' 'a'-'z' '_' '.' '0'-'9'] | "é" | "è" | "ê" | "à" | "ù")+ as l { f l }
| _ as c { String.make 1 c }
| eof { "" }

{
  let translate h s =
    match Hashtbl.find_opt h s with
    | None -> s
    | Some s' -> s'

  let fr_en = translate fr_en
  let en_fr = translate en_fr

  let rec compile f ~output lexbuf =
    match tokenize f lexbuf with
    | "" -> ()
    | s ->
      output s;
      compile f ~output lexbuf
}
