initialization
initialize
	"Initialise les directions uniques"

	| north south west east |
	north := self new.
	north name: 'North'.
	north dx: 0.
	north dy: -1.
	north oppositeD: 'South'.

	south := self new.
	south name: 'South'.
	south dx: 0.
	south dy: 1.
	south oppositeD: 'North'.

	east := self new.
	east name: 'East'.
	east dx: 1.
	east dy: 0.
	east oppositeD: 'West'.

	west := self new.
	west name: 'West'.
	west dx: -1.
	west dy: 0.
	west oppositeD: 'East'.

