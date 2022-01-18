#! { "cases": [ {
#!     "name": "reverseTest",
#!     "input": [
#!         {
#!             "entry": "reverseTest",
#!             "calldata": [
#!                 "7", "2", "1", "8", "10", "3", "5", "4", "9", "6"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "6", "9", "4", "5", "3", "10", "8", "1", "2", "7", "10"
#!     ]
#! }, {
#!     "name": "uniqueTest",
#!     "input": [
#!         {
#!             "entry": "uniqueTest",
#!             "calldata": [
#!                 "7", "2", "7", "8", "10", "10", "5", "8", "9", "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "7", "2", "8", "10", "5", "9", "0", "0", "0", "0", "6"
#!     ]
#! }, {
#!     "name": "filterGreater",
#!     "input": [
#!         {
#!             "entry": "filterTest",
#!             "calldata": [
#!                 "7", "2", "7", "8", "10", "10", "5", "8", "9", "7", "0", "5"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "7", "7", "8", "10", "10", "8", "9", "7", "0", "0", "8"
#!     ]
#! }, {
#!     "name": "filterLess",
#!     "input": [
#!         {
#!             "entry": "filterTest",
#!             "calldata": [
#!                 "7", "2", "7", "8", "10", "10", "5", "8", "9", "7", "1", "8"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "7", "2", "7", "5", "7", "0", "0", "0", "0", "0", "5"
#!     ]
#! }, {
#!     "name": "filterDivide",
#!     "input": [
#!         {
#!             "entry": "filterTest",
#!             "calldata": [
#!                 "7", "2", "7", "8", "10", "10", "5", "8", "9", "7", "2", "2"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "2", "8", "10", "10", "8", "0", "0", "0", "0", "0", "5"
#!     ]
#! }, {
#!     "name": "mapAdd",
#!     "input": [
#!         {
#!             "entry": "mapTest",
#!             "calldata": [
#!                 "7", "2", "1", "8", "10", "3", "5", "4", "9", "6", "0", "28"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "35", "30", "29", "36", "38", "31", "33", "32", "37", "34", "10"
#!     ]
#! }, {
#!     "name": "mapSub",
#!     "input": [
#!         {
#!             "entry": "mapTest",
#!             "calldata": [
#!                 "18", "12", "7", "9", "21", "6", "22", "14", "9", "34", "1", "5"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "13", "7", "2", "4", "16", "1", "17", "9", "4", "29", "10"
#!     ]
#! }, {
#!     "name": "mapMul",
#!     "input": [
#!         {
#!             "entry": "mapTest",
#!             "calldata": [
#!                 "7", "2", "1", "8", "10", "3", "5", "4", "9", "6", "2", "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "49", "14", "7", "56", "70", "21", "35", "28", "63", "42", "10"
#!     ]
#! }, {
#!     "name": "mapDiv",
#!     "input": [
#!         {
#!             "entry": "mapTest",
#!             "calldata": [
#!                 "18", "12", "7", "9", "21", "6", "22", "14", "9", "34", "3", "4"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "4", "3", "1", "2", "5", "1", "5", "3", "2", "8", "10"
#!     ]
#! }, {
#!     "name": "complex",
#!     "input": [
#!         {
#!             "entry": "complex",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "4", "6", "2", "5", "0", "0", "0", "0", "0", "0", "4"
#!     ]
#! } ] }

ARRAY_SIZE: constant(uint8) = 10

struct Vector:
    array: uint8[ARRAY_SIZE]
    size: uint8

FilterGreater: constant(uint8) = 0
FilterLess: constant(uint8) = 1
FilterDivide: constant(uint8) = 2

MappingAdd: constant(uint8) = 0
MappingSub: constant(uint8) = 1
MappingMul: constant(uint8) = 2
MappingDiv: constant(uint8) = 3

@internal
@pure
def fromArray(array: uint8[ARRAY_SIZE], size: uint8) -> Vector:
    return Vector({array: array, size: size})

@internal
@pure
def copy(vector: Vector) -> Vector:
    _new: Vector = empty(Vector)
    _new.size = vector.size
    for i in range(0, ARRAY_SIZE):
        if not i < vector.size:
            break
        _new.array[i] = vector.array[i]
    return _new

@internal
def reverse(vector: Vector) -> Vector:
    result: Vector = self.copy(vector)
    for i in range(0, ARRAY_SIZE):
        if not i < result.size / 2:
            break
        tmp: uint8 = result.array[i]
        result.array[i] = result.array[result.size - 1 - i]
        result.array[result.size - 1 - i] = tmp
    return result

@internal
@pure
def unique(vector: Vector) -> Vector:
    result: Vector = empty(Vector)
    for i in range(0, ARRAY_SIZE):
        if not i < vector.size:
            break
        fl: bool = True
        for j in range(0, ARRAY_SIZE):
            if not j < i:
                break
            if vector.array[i] == vector.array[j]:
                fl = False
                break
        if fl:
            result.array[result.size] = vector.array[i]
            result.size += 1
    return result

@internal
@pure
def filter(vector: Vector, _filter: uint8, param: uint8) -> Vector:
    result: Vector = empty(Vector)
    for i in range(0, ARRAY_SIZE):
        if not i < vector.size:
            break
        if (_filter == FilterGreater and vector.array[i] > param) or (_filter == FilterLess and vector.array[i] < param) or (_filter == FilterDivide and vector.array[i] % param == 0):
            result.array[result.size] = vector.array[i]
            result.size += 1
    return result

@internal
@pure
def map(vector: Vector, _mapping: uint8, param: uint8) -> Vector:
    result: Vector = empty(Vector)
    result.size = vector.size
    for i in range(0, ARRAY_SIZE):
        if not i < vector.size:
            break
        if _mapping == MappingAdd:
            result.array[i] = vector.array[i] + param
        elif _mapping == MappingSub:
            result.array[i] = vector.array[i] - param
        elif _mapping == MappingMul:
            result.array[i] = vector.array[i] * param
        elif _mapping == MappingDiv:
            result.array[i] = vector.array[i] / param
    return result

@external
def reverseTest(input: uint8[ARRAY_SIZE]) -> Vector:
    return self.reverse(self.fromArray(input, ARRAY_SIZE))

@external
def uniqueTest(input: uint8[ARRAY_SIZE]) -> Vector:
    return self.unique(self.fromArray(input, ARRAY_SIZE))

@external
def filterTest(input: uint8[ARRAY_SIZE], _filter: uint8, param: uint8) -> Vector:
    return self.filter(self.fromArray(input, ARRAY_SIZE), _filter, param)

@external
def mapTest(input: uint8[ARRAY_SIZE], _mapping: uint8, param: uint8) -> Vector:
    return self.map(self.fromArray(input, ARRAY_SIZE), _mapping, param)

@external
def complex() -> Vector:
    input: uint8[ARRAY_SIZE] = [18, 12, 7, 9, 21, 6, 22, 14, 9, 34]
    output: Vector = self.fromArray(input, ARRAY_SIZE)
    output = self.filter(output, FilterDivide, 2) # 18 12 6 22 14 34
    output = self.reverse(output) # 34 14 22 6 12 18
    output = self.map(output, MappingMul, 2) # 68 28 44 12 24 36
    output = self.filter(output, FilterLess, 60) # 28 44 12 24 36
    output = self.map(output, MappingAdd, 4) # 32 48 16 28 40
    output = self.filter(output, FilterDivide, 8) # 32 48 16 40
    output = self.map(output, MappingDiv, 7) # 4 6 2 5
    return output
