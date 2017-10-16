note
	description: "Summary description for {STUDENT_TESTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	STUDENT_TESTS
inherit
	ES_TEST
	create
		make

feature -- Constructor
	make
		do

			add_boolean_case (agent test_number_of_occupied_slots)
			add_boolean_case (agent test_out_feature)
			add_boolean_case (agent test_good_player_wins_plus_board)
			add_boolean_case (agent test_good_player_wins_cross_board)

		end
	test_number_of_occupied_slots: BOOLEAN
		local
			p1,p2,p3,p4,p5: BAD_PLAYER
		do
			comment ("test1: Test to make sure game is over but not won using number of occupied slots ")
			create p1.make
			create p2.make
			create p3.make
			create p4.make
			create p5.make

			p1.game.make_easy
			p1.loses_easy_board
			Result:= (p1.game.board.number_of_occupied_slots > 1 implies (not p1.game.is_won and p1.game.is_over))
			check Result end
			p2.game.make_arrow
			p2.loses_arrow_game
			Result :=  (p2.game.board.number_of_occupied_slots > 1 implies (not p2.game.is_won and p2.game.is_over))
			check Result end
			p3.game.make_diamond
			p3.loses_diamond_game
			Result := (p3.game.board.number_of_occupied_slots > 1 implies (not p3.game.is_won and p3.game.is_over))
			check Result end
			p4.game.make_pyramid
			p4.loses_pyramid_game
			Result := (p4.game.board.number_of_occupied_slots > 1 implies (not p4.game.is_won and p4.game.is_over))
			check Result end
			p5.game.make_skull
			p5.loses_skull_game
			Result := (p5.game.board.number_of_occupied_slots > 1 implies (not p5.game.is_won and p5.game.is_over))
		end
	test_out_feature: BOOLEAN
		local
			p1,p2,p3,p4,p5: BAD_PLAYER
		do
			comment ("test2: test different boards using the out feature")
			create p1.make
			create p2.make
			create p3.make
			create p4.make
			create p5.make


			p1.game.make_easy
			p2.game.make_arrow
			p3.game.make_diamond
			p4.game.make_pyramid
			p5.game.make_skull

			Result:= p1.game.board.out ~ p1.game.bta.templates.easy_board_out
			check Result end

			Result:= p2.game.board.out ~ p2.game.bta.templates.arrow_board_out
			check Result end

			Result:= p3.game.board.out ~ p3.game.bta.templates.diamond_board_out
			check Result end

			Result:= p4.game.board.out ~ p4.game.bta.templates.pyramid_board_out
			check Result end

			Result:= p5.game.board.out ~ p5.game.bta.templates.skull_board_out
			check Result end

		end
		test_good_player_wins_plus_board: BOOLEAN
				local
					player: GOOD_PLAYER
				do
					comment ("test3: good player wins an plus board")
					create player.make

					player.game.make_plus
					player.wins_plus_board
					Result :=
							player.game.is_over
						and player.game.is_won
					check Result end
				end
				test_good_player_wins_cross_board: BOOLEAN
						local
							player: GOOD_PLAYER
						do
							comment ("test4: good player wins cross board")
							create player.make

							player.game.make_cross
							player.wins_cross_board
							Result :=
									player.game.is_over
								and player.game.is_won
							check Result end
						end
		test_slots_properly_set:
			local
				player: BAD_PLAYER
		do
		
		end

end
