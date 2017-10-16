note
	description: "Summary description for {BAD_MOVE_DOWN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_MOVE_DOWN
inherit
	GAME

	redefine
		move_down
	end
	create
		make
		feature
		move_down(r,c)
		do
			precursor(r,c)
		end
end
