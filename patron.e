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

	num_reserved: INTEGER

	place_hold (b: BOOK)
		require
			num_reserved < 10
		do
			--future implementation here
		ensure
			b.is_on_hold
			num_reserved = old num_reserved + 1
		end


	first_name: STRING

	last_name: STRING

	id: REAL
invariant
	valid_num_reserved_books: 0 <= num_reserved and num_reserved <= 10

end
