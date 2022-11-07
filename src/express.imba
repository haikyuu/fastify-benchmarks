import express from "express"
import serveStatic from "serve-static"
import App from './client/App'

const app = express()
app.disable "etag"
app.disable "x-powered-by"
await imba.setupVite app, import.meta.env.MODE, do(dist)
	app.use serveStatic(dist, index: false)

app.get("/") do(req, res)
	const html = <html>
		<head>
			<script type="module" src="./client/App.imba">
		<body> <App>
	res.send String(html)
app.listen 3000