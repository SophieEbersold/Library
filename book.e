note
	description: "Summary description for {BOOK}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BOOK

inherit
	LIBRARY_ITEM

create
	make


feature

	make(t: String)
		do
			title := t
		end

	is_available, is_on_hold, is_checked_out: BOOLEAN

	place_hold (patron: PATRON)
	-- Place a hold on a book. Set is_on_hold
        require
            is_available
            not is_on_hold
        do
        ensure
            is_on_hold
            not is_available
        end

    checkout (patron: PATRON)
        -- Check out the book
        require
            is_on_hold
        do
        ensure
        	is_checked_out
        end

    return
        -- Return the book to the library
        require
            is_checked_out
        do
        ensure
            is_available
		end

	title: STRING

	price: REAL

--Scenarios
	borrow_and_return_book (p: PATRON)
		require
			book_is_available: is_available
		do
			place_hold (p)
			checkout (p)
			return
		end

invariant
    is_on_hold implies not is_available
    is_checked_out implies not is_available
    is_checked_out implies not is_on_hold
    is_available implies not is_checked_out
end

