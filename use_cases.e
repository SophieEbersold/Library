note
	description: "Summary description for {USE_CASES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	USE_CASES

feature
	reserve_book_main (p: PATRON; b: BOOK; l: LIBRARY) --main flow of reserve_book use case
	  	require
			l.has_patron(p)
			l.has_book(b)
            p.num_reserved < 10
			b.is_available
		do
			l.place_book_on_hold (b, p)
        ensure
           	b.is_on_hold
			not b.is_available
			p.num_reserved = old p.num_reserved + 1
			l.book_is_on_hold (b, p)
        end

	reserve_book_af_A (p1,p2: PATRON; b: BOOK; l: LIBRARY) --alternative flow A for reserve_book use case
		require
			l.has_patron(p1)
			l.has_patron(p2)
			l.has_book(b)
           	p1.num_reserved < 10
			b.is_checked_out
			l.book_is_checked_out(p2, b)
		do
 			l.place_book_on_hold (b, p1)
		ensure
           	b.is_checked_out
			not b.is_available
			p1.num_reserved = old p1.num_reserved
			l.book_is_checked_out(p2, b)
        end

	reserve_book_af_B (p: PATRON; b: BOOK; l: LIBRARY) --alternative flow B for reserve_book use case
		do
		end
	reserve_book_af_C (p: PATRON; b: BOOK; l: LIBRARY) --alternative flow C for reserve_book use case
		do
		end

end
