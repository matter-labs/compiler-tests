@external
@view
def require_short():
    pass

@external
@view
def wrong_number_of_params(one: uint256, two: uint256, three: Bytes[100]) -> uint256:
    pass
