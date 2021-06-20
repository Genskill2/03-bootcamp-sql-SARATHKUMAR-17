SELECT b.title FROM books b,subjects s,books_subjects k
	 WHERE b.id=k.book AND s.id=k.subject
	 AND s.name IN ('Technology','Politics') ;

