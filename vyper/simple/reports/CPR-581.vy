#! { "cases": [ {
#!     "name": "default",
#!     "input": [
#!         {
#!             "entry": "entry",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!     ]
#! } ] }

interface Self:
    def f(): pure

@external
@pure
def f():
    assert True

@external
@view
def entry():
    Self(self).f()
