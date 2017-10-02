note
	description: "A slot on the board that is not available for occupation."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	UNAVAILABLE_SLOT

inherit
	SLOT_STATUS
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
