note
	description: "Summary description for {SLOT_STATUS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	SLOT_STATUS

inherit
	ANY
		redefine
			is_equal
		end

feature -- Equality
	is_equal(other: like Current): BOOLEAN
			-- Is the current slot status equal to 'other'?
		do
			Result := Current = other --maybe change ~ to =

		ensure then
			correct_result:
		Result =(Current = other)
		end
end
