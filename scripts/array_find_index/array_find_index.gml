///@function array_find_index(_value, _array)
///@desc     Finds the index of a value in an array
///@param    {String} _value              value that is searched for
///@param    {Array} _array               array that should be searched
///@returns  {Integer} _index             returns a integer index

var _value = argument0;
var _array = argument1;
var _array_size = array_length_1d(_array);

for (var i = 0; i < _array_size; i++) {
	if _value == _array[i] {
		return i;
	}
}

return -1;