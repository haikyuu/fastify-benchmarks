import Fastify from 'fastify'
import middie from '@fastify/middie'
import f-static from '@fastify/static'
import nfs from 'node:fs'
import App from './client/App'

const mode = import.meta.env.MODE

const f = Fastify()
await f.register(middie)

await imba.setupVite(f, mode) do(dist)
	f.register(f-static, root:dist)

f.get '/', do(request, reply)
	const html = <html>
		<head>
			<script type="module" src="./client/App.imba">
		<body> <App>
	reply.type "text/html"
	reply.send(String html)

f.listen(port:3000)

	