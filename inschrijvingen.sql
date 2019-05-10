use `lo8e_sql2`;
SELECT studenten.ov_nummer, studenten.voornaam, studenten.tussenvoegsel, studenten.achternaam, klassen_studenten.klas_code, klassen.cohort, docenten.voorletters, docenten.tussenvoegsel,
		docenten.achternaam
FROM studenten
LEFT JOIN klassen_studenten ON klassen_studenten.ov_nummer = studenten.ov_nummer
LEFT JOIN klassen ON klassen.klas_code = klassen_studenten.klas_code
LEFT JOIN docenten ON docenten.docent_code = klassen.slb_code
WHERE NOT klassen.cohort = 2017
ORDER BY studenten.achternaam;

