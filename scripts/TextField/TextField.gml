function TextField(lineCount = 10) constructor {
	lines = array_create(lineCount, "");
	maxLines = 10;
	
	static addLine = function(line) {
		array_insert(lines, 0, line);
		array_resize(lines, maxLines);
	}
};