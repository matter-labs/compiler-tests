@external
def __default__():
    self.data = slice(msg.data, 0, len(msg.data))
@external
def _del() -> bool:
    self.data = empty(Bytes[100])
    return True
data: Bytes[100]
# ====
# compileViaYul: also
# ----
# (): 7 ->
# storageEmpty -> 0
# _del(): 7 -> true
# storageEmpty -> 1
