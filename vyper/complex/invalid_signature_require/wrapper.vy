import requireInterface as RequireInterface

contract_req: address

@external
def setContract(_contract_re: address):
    self.contract_req = _contract_re

@external
@view
def require_short():
    RequireInterface(self.contract_req).require_short()

@external
@view
def wrong_number_of_params() -> uint256:
    return RequireInterface(self.contract_req).wrong_number_of_params(1, 2, convert("", Bytes[100]))
