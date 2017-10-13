note
	description: "A game of peg solitaire."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME

inherit
	ANY
		redefine
			out
		end

create
	make_from_board,
	make_easy,
	make_cross,
	make_plus,
	make_pyramid,
	make_arr,
	make_diamond,
	make_skull

feature -- Constructors
	make_from_board (new_board: BOARD)
			-- Initialize a game with 'new_board'.
		do
			board := new_board
		ensure
		board_set: board = new_board
		end

	make_easy
			-- Initialize a game with easy board.
		do
			create board.make_easy
		ensure
			board_set:
				board ~ bta.templates.easy_board
		end

	make_cross
			-- Initialize a game with Cross board.
		do
		create board.make_cross

		ensure
			board_set:
			board ~ bta.templates.cross_board
		end

	make_plus
			-- Initialize a game with Plus board.
		do
			create board.make_plus
		ensure
			board_set:
			board ~ bta.templates.plus_board
		end


	make_pyramid
			-- Initialize a game with Pyramid board.
		do
			create board.make_pyramid

		ensure
			board_set:
			board ~ bta.templates.pyramid_board
		end

	make_arr
			-- Initialize a game with Arrow board.	
		do
				create board.make_arrow
			ensure
				board_set:
				 board ~ bta.templates.arrow_board
		end

	make_diamond
			-- Initialize a game with Diamond board.
		do
			create board.make_diamond
		ensure
			board_set:
			 board ~ bta.templates.diamond_board
		end

	make_skull
			-- Initialize a game with Skull board.
		do
			create board.make_skull
		ensure
			board_set:
			 board ~ bta.templates.skull_board
		end

feature -- Commands
	move_left (r, c: INTEGER)
		require
		from_slot_valid_r:
				board.is_valid_row (r)
			from_slot_valid_column:
				board.is_valid_column (c)
			middle_slot_valid_column:
				board.is_valid_column (c - 1)
			to_slot_valid_column:
				board.is_valid_column (c - 2)
			from_slot_occupied:
				board.status_of (r,c) = board.occupied_slot
			middle_slot_occupied:
				board.status_of (r,c - 1) = board.occupied_slot
			to_slot_unoccupied:
				board.status_of (r,c - 2) = board.unoccupied_slot
		do
		board.set_status (r,c - 2,board.occupied_slot)
		board.set_statuses (r, r, c - 1, c, board.unoccupied_slot)
		ensure
			slots_properly_set:
			board.status_of (r, c) ~ board.unoccupied_slot
			and board.status_of (r, c-1) ~ board.unoccupied_slot
			and board.status_of (r, c-2) ~ board.occupied_slot
			other_slots_unchanged:
			board.matches_slots_except (old board, r, r, c, c)

		end

	move_right (r, c: INTEGER)
		require
		from_slot_valid_r:
				board.is_valid_row (r)
			from_slot_valid_column:
				board.is_valid_column (c)
			middle_slot_valid_column:
				board.is_valid_column (c + 1)
			to_slot_valid_column:
				board.is_valid_column (c + 2)
			from_slot_occupied:
				board.status_of (r,c) = board.occupied_slot
			middle_slot_occupied:
				board.status_of (r,c + 1) = board.occupied_slot
			to_slot_unoccupied:
				board.status_of (r,c + 2) = board.unoccupied_slot
		do
			board.set_status (r,c + 2,board.occupied_slot)
			board.set_statuses (r, r, c, c + 1, board.unoccupied_slot)
		ensure
			slots_properly_set:
			board.status_of (r, c) ~ board.unoccupied_slot
			and board.status_of (r, c+1) ~ board.unoccupied_slot
			and board.status_of (r, c+2) ~ board.occupied_slot

			other_slots_unchanged: board.matches_slots_except (old board, r, r, c, c)
		end

	move_up (r, c: INTEGER)
		require
		from_slot_valid_column:
				board.is_valid_column (c)
			from_slot_valid_r:
				board.is_valid_row (r)
			middle_slot_valid_r:
				board.is_valid_row (r - 1)
			to_slot_valid_r:
				board.is_valid_row (r - 2)
			from_slot_occupied:
				board.status_of (r,c) = board.occupied_slot
			middle_slot_occupied:
				board.status_of (r - 1,c) = board.occupied_slot
			to_slot_unoccupied:
				board.status_of (r - 2,c) = board.unoccupied_slot
		do
			board.set_status (r - 2,c,board.occupied_slot)
			board.set_statuses (r - 1, r, c, c, board.unoccupied_slot)
		ensure
		slots_properly_set:
		board.status_of (r, c) ~ board.unoccupied_slot
		and board.status_of (r-1, c) ~ board.unoccupied_slot
		and board.status_of (r-2, c) ~ board.occupied_slot
		other_slots_unchanged: board.matches_slots_except (old board, r, r, c, c)
		end

	move_down (r, c: INTEGER)
		require
			from_slot_valid_column:
				board.is_valid_column (c)
			from_slot_valid_r:
				board.is_valid_row (r)
			middle_slot_valid_r:
				board.is_valid_row (r - 1)
			to_slot_valid_r:
				board.is_valid_row (r - 2)
			from_slot_occupied:
				board.status_of (r,c) = board.occupied_slot
			middle_slot_occupied:
				board.status_of (r - 1,c) = board.occupied_slot
			to_slot_unoccupied:
				board.status_of (r - 2,c) = board.unoccupied_slot
		do
			board.set_status (r+2,c,board.occupied_slot)
			board.set_statuses (r, r+1, c, c, board.unoccupied_slot)
		ensure
		slots_properly_set: board.status_of (r, c) ~ board.unoccupied_slot
		and board.status_of (r+1, c) ~ board.unoccupied_slot
		and board.status_of (r+2, c) ~ board.occupied_slot
		other_slots_unchanged: board.matches_slots_except (old board, r, r, c, c)
		end

feature -- Status Queries
	is_over: BOOLEAN
			-- Is the current game 'over'?
			-- i.e., no further movements are possible.
		local
			a_movement_is_possible: BOOLEAN
			r, c: INTEGER
		do
			a_movement_is_possible := false
			Result := true
			from
				r := 1
			until
				a_movement_is_possible or else
					r > board.number_of_rows
			loop
				from
					c := 1
				until
					a_movement_is_possible or else
						c > board.number_of_columns
				loop
					if 	move_left_possible  (r, c)
						or else move_right_possible (r, c)
						or else move_up_possible    (r, c)
						or else move_down_possible  (r, c)
					then
						a_movement_is_possible := true
						Result := not(a_movement_is_possible)
					end
					c := c + 1
				end
				r := r + 1
			end
		ensure
			correct_result:
				Result = not
					across
						1 |..| board.number_of_rows as r1
					some
						across
							1 |..| board.number_of_columns as c1
						some
							   move_left_possible		(r1.item, c1.item)
							or move_right_possible	(r1.item, c1.item)
							or move_up_possible 		(r1.item, c1.item)
							or move_down_possible		(r1.item, c1.item)
						end
					end
end
	is_won: BOOLEAN
			-- Has the current game been won?
			-- i.e., there's only one occupied slot on the board.
		do
			Result := board.number_of_occupied_slots = 1
		ensure
		game_won_iff_one_occupied_slot_left:
				Result implies board.number_of_occupied_slots = 1
			winning_a_game_means_game_over:
		Result implies is_over
end

feature {NONE} -- Auxiliary Queries for Implementation
	move_left_possible (r, c: INTEGER): BOOLEAN
			-- Can the peg at r 'r' and column 'c' be moved left?
		do
			Result :=	 board.is_valid_row (r)
				and then board.is_valid_column (c)
				and then board.is_valid_column (c - 1)
				and then board.is_valid_column (c - 2)
				and then board.status_of (r, c    ) = board.occupied_slot
				and then board.status_of (r, c - 1) = board.occupied_slot
				and then board.status_of (r, c - 2) = board.unoccupied_slot
		end

	move_right_possible (r, c: INTEGER): BOOLEAN
			-- Can the peg at r 'r' and column 'c' be moved right?
		do
			Result :=	 board.is_valid_row (r)
				and then board.is_valid_column (c)
				and then	 board.is_valid_column (c + 1)
				and then	 board.is_valid_column (c + 2)
				and then board.status_of (r, c    ) = board.occupied_slot
				and then board.status_of (r, c + 1) = board.occupied_slot
				and then board.status_of (r, c + 2) = board.unoccupied_slot
		end

	move_up_possible (r, c: INTEGER): BOOLEAN
			-- Can the peg at r 'r' and column 'c' be moved up?
		do
			Result :=	 board.is_valid_column (c)
				and then board.is_valid_row (r)
				and then	 board.is_valid_row (r - 1)
				and then	 board.is_valid_row (r - 2)
				and then board.status_of (r    , c) = board.occupied_slot
				and then board.status_of (r - 1, c) = board.occupied_slot
				and then board.status_of (r - 2, c) = board.unoccupied_slot
		end

	move_down_possible (r, c: INTEGER): BOOLEAN
			-- Can the peg at r 'r' and column 'c' be moved down?
		do
			Result :=	 board.is_valid_column (c)
				and then board.is_valid_row (r)
				and then board.is_valid_row (r + 1)
				and then board.is_valid_row (r + 2)
				and then board.status_of (r  , c) = board.occupied_slot
				and then board.status_of (r + 1, c) = board.occupied_slot
				and then board.status_of (r + 2, c) = board.unoccupied_slot

end


feature -- Output
	out: STRING
			-- String representation of current game.
			-- Do not modify this feature!
		do
			create Result.make_empty
			Result.append ("Game is over: " + boolean_to_yes_no (is_over) + "%N")
			Result.append ("Game is won : " + boolean_to_yes_no (is_won) + "%N")
			Result.append ("Board Status:%N")
			Result.append (board.out)
		end

feature -- Auxiliary Routines
	boolean_to_yes_no (b: BOOLEAN): STRING
			-- 'Yes' or 'No' corresponding to 'b'.
		do
			if b then
				Result := "Yes"
			else
				Result := "No"
			end
		end

feature -- Board
	bta: BOARD_TEMPLATES_ACCESS
	board: BOARD
end
