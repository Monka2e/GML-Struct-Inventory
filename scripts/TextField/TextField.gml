function TextField(linesArray = []) constructor {
	lines = linesArray;
	maxLines = 10;
	
	static addLine = function(line) {
		array_insert(lines, 0, line);
		array_resize(lines, maxLines);
	}
};