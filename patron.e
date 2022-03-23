note
	description: "Summary description for {PATRON}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PATRON

create
	make

feature
	make  (n: STRING; ln: STRING)
		do
			first_name := n
			last_name := ln
		end

	first_name: STRING

	last_name: STRING

	id: REAL

end
