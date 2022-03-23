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

	book_is_on_hold (b: BOOK; p: PATRON; lb: LIBRARY_BRANCH): BOOLEAN
		do

		end

	place_book_on_hold (b: BOOK; p: PATRON; lb: LIBRARY_BRANCH)
		require
			has_patron (p)
			has_branch (lb)
			b.is_available
		do -- Future implementation
		ensure
			book_is_on_hold (b, p, lb)
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
end
