note
	description: "A good player who knows how to win certain solitaire games."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GOOD_PLAYER

inherit
	PLAYER

create
	make

feature -- Commands
	wins_easy_board
			-- Win a cross board.
		require
			current_game_is_easy: True
				-- Your task.
		local
			assertion: BOOLEAN
		do
			assertion := game.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			***.***
			***O***
			***O***
			***.***
			***O***
			***.***
			*******
			]"
			check assertion end

			game.move_down (2, 4)
			assertion := game.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			***.***
			***.***
			***.***
			***O***
			***O***
			***.***
			*******
			]"
			check assertion end

			game.move_down (4, 4)
			assertion := game.out ~ "[
			Game is over: Yes
			Game is won : Yes
			Board Status:
			***.***
			***.***
			***.***
			***.***
			***.***
			***O***
			*******
			]"
			check assertion end
		ensure
			finished_and_won_game:
			game.is_won and game.is_over
		end

	wins_cross_board
			-- Win a cross board.
		require
				current_game_is_cross:
				game.out ~ templates.cross_board
			local
			assertion: BOOLEAN
		do
		assertion := game.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			**...**
			**.O.**
			..OOO..
			...O...
			...O...
			**...**
			**...**	]"
			check assertion end

			game.move_right (3, 4)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**.O.**
				..O..O.
				...O...
				...O...
				**...**
				**...**
				]"
			check assertion end

			game.move_up (5, 4)
			assertion := game.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			**...**
			**.O.**
			..OO.O.
			.......
			.......
			**...**
			**...**
			]"
			check assertion end

			game.move_right (3, 3)
			assertion := game.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			**...**
			**.O.**
			....OO.
			.......
			.......
			**...**
			**...**
			]"
			check assertion end

			game.move_left (3, 6)
			assertion := game.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			**...**
			**.O.**
			...O...
			.......
			....... 
			**...** 
			**...**
			]"
			check assertion end

			game.move_down (2, 4)
			assertion := game.out ~ "[
			Game is over: Yes
			Game is won : Yes
			Board Status:
			**...**
		 	**...**
			.......
			...O...
			....... 
			**...** 
			**...**
			]"
			check assertion end

		ensure
			finished_and_won_game:
			game.is_won and game.is_over
		end

	wins_plus_board
			-- Win a plus board.
		require
			current_game_is_plus:
				game.out ~ templates.plus_board
		local
			assertion: BOOLEAN
		do
		assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**.O.**
				...O...
				.OOOOO.
				...O...
				**.O.**
				**...**
	 			]"
				check assertion end

				game.move_down(5, 4)
				assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**.O.**
				...O...
				.OOOOO.
				.......
				**...**
				**.O.**
	 			]"
				check assertion end

				game.move_down(3, 4)
				assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**.O.**
				.......
				.OO.OO.
				...O...
				**...**
				**.O.**
	 			]"
				check assertion end

				game.move_left (4, 6)
				assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**.O.**
				.......
				.OOO...
				...O...
				**...**
				**.O.**
	 			]"
				check assertion end

				game.move_down (4, 4)
				assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**.O.**
				.......
				.OO....
				.......
				**.O.**
				**.O.**
	 			]"
				check assertion end

				game.move_right(4, 1)
				assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**.O.**
				.......
				...O...
				.......
				**.O.**
				**.O.**
	 			]"
				check assertion end

				game.move_up (7, 4)
				assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**.O.**
				......
				...O...
				...O...
				**...**
				**...**
	 			]"
				check assertion end

				game.move_up (5, 4)
				assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**.O.**
				...O..
				.......
				.......
				**...**
				**...**
	 			]"
				check assertion end

				game.move_down (2, 4)
				assertion := game.out ~ "[
				Game is over: Yes
				Game is won : Yes
				Board Status:
				**...**
				**...**
				.......
				...O...
				.......
				**...**
				**...**
	 			]"
				check assertion end
		ensure
			finished_and_won_game:
				game.is_won and game.is_over
		end
end
