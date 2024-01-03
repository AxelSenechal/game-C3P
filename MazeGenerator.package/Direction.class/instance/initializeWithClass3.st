instance creation
initializeWithClass3
	"Initialise les directions uniques"

	North := self WEST .
	North name: 'North'.
	North dx: 0.
	North dy: -1.
	North oppositeD: 'South'