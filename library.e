note
	description: "Summary description for {LIBRARY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	LIBRARY

create
	make

feature
	make
		do
			create patrons.make_empty
			create branches.make_empty
		end

	patrons: ARRAY[PATRON]

	branches: ARRAY[LIBRARY_BRANCH]

--	books_catalogue: CATALOGUE

	book_is_on_hold (b: BOOK; p: PATRON): BOOLEAN
		do

		end

	has_patron (p: PATRON): BOOLEAN
		do

		end

	has_branch (lb: LIBRARY_BRANCH): BOOLEAN
		do

		end

	add_patron (p: PATRON)
		do

		end

	add_book (b: BOOK)
		do

		end

	place_book_on_hold(b: BOOK; p: PATRON)
		require
			has_patron(p)
			has_book(b)
		do
			if hold_is_allowed(b, p) then p.place_hold(b) end
		end

	has_book(b: BOOK): BOOLEAN
		do

		end

	hold_is_allowed(b: BOOK; p: PATRON): BOOLEAN
		do

		end

	book_is_checked_out(p: PATRON; b:BOOK): BOOLEAN
		do

		end
end
