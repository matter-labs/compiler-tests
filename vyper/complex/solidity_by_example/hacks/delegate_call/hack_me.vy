import lib as Lib

owner: public(address)
lib: public(Lib)

@external
def __init__(_lib: address):
    self.owner = msg.sender
    self.lib = Lib(_lib)

@external
@payable
def __default__():
    raw_call(convert(self.lib, address), msg.data, is_delegate_call=True)
