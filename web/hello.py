def application(environ, start_response):
	output = ''
	d = parse_qsl(environ['QUERY_SRTING'])
	if environ['REQUEST_METHOD'] == 'GET':
		if environ['QUERY_STRING'] != '':
			for ch in d:
				output.append(' = '.join(ch))
				output.append('<br>')
	start_response( '200 OK', [('Content-Type', 'text/plain')])
	return output
