class Parser():
	'''
	A parser class to convert jack intermediate code to hack assembly language
	'''
	def __init__(self,filename):
		self._filename=filename
		self._file_object=open(filename,'r')
		self._lines = []
		
	def first_scan(self):
		"""
		first scan to remove comments
		"""
		for line in self._file_object.readlines():
			strip_line=line.strip()
			if len(strip_line) == 0 or strip_line[0:2] == '//':
				continue
			white_space_free_line = (strip_line.split('/'))[0]
			self._lines.append(white_space_free_line)
			
	def get_filename(self):
		return self._filename
	
	def print_lines(self):
		for line in self._lines:
			print (line)
	
	def get_line(self):
		for line in self._lines:
			yield (line)
	
			
	
