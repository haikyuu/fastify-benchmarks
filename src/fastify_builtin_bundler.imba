import Fastify from 'fastify'
import np from 'node:path'
import nu from 'node:url'
import App from './client/App'
import f-static from '@fastify/static'
import middie from '@fastify/middie'

def run
	const f = Fastify()
	await f.register(middie)

	const root = np.resolve(np.join process.cwd(), 'dist_fastify_builtin_bundler', "public/")
	f.register(f-static, root:root) if process.env.NODE_ENV != "development"

	f.get '/', do(request, reply)
		const html = <html>
			<head>
				<script type="module" src="./client/App.imba">
				<style src="*">
			<body> <App>
		reply.type "text/html"
		reply.send(String html)

	f.listen(port:3000)

	
run!