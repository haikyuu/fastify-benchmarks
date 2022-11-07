import express from "express"
import compression from "compression"
import serveStatic from "serve-static"
import App from './client/App'
import np from 'node:path'

const app = express()
app.disable "etag"
app.disable "x-powered-by"
const dist = np.join(process.cwd(), "dist_express_builtin_bundler/public")
app.use serveStatic(dist, index: false) if process.env.NODE_ENV != "development"
app.get("/") do(req, res)
	const html = <html>
		<head>
			<script type="module" src="./client/App.imba">
			<style src="*">
		<body> <App>
	res.send String(html)
app.listen 3000