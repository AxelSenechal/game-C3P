as yet unclassified
testWidthHeightTest

|tst|

tst := Grid new.

tst width: 5 height: 10.

self assert: tst cells size equals: 10.
self assert: ((tst cells at:1) size) equals: 5.