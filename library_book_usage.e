note
	description: "Summary description for {LIBRARY_BOOK_USAGE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	LIBRARY_BOOK_USAGE

feature
	borrow_and_return_book (l: LIBRARY; b: BOOK; p: PATRON)
		require
			book_is_available: b.is_available
		do
			b.place_hold (p)
			b.checkout (p)
			b.return
		end

	decommission_book
		do
		end

	renew_book
		do
		end
			--More use cases here

end
