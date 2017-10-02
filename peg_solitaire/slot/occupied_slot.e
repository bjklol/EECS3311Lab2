note
	description: "A slot in a peg solitaire board that is occupied by a peg."
	author: "Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	OCCUPIED_SLOT

inherit
	AVAILABLE_SLOT
		redefine
			out
		end

create {SLOT_STATUS_ACCESS}
	make

feature {SLOT_STATUS_ACCESS} -- Constructor
	make
		do
			-- Initialize an occupied slot object.
		end

feature -- Output
	out: STRING
			-- String representation of current slot.
		do
			create Result.make_empty
			-- Your task: the current implementation
			-- may not be correct.
		ensure then
			correct_result: True
				-- Your task.
		end
end
