# ChromaDB for Railway

This repository contains a simple configuration to deploy ChromaDB to Railway.

## Deploy to Railway

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/chromadb)

## How to use

1. Click the "Deploy on Railway" button above.
2. Create a Railway account if you don't have one.
3. After deployment, Railway will provide you with a URL (e.g., `https://chromadb-production-xxxx.up.railway.app`).
4. Use this URL in your Next.js application by setting the `CHROMA_URL` environment variable.

## Environment Variables in Your Next.js App

In your Vercel-deployed Next.js application, add the following environment variable:

```
CHROMA_URL=https://your-railway-chromadb-url
```

## Persistence

By default, Railway provides persistent storage for your ChromaDB instance. The data will be preserved between restarts.

## Local Development

To run this locally for testing:

```bash
docker build -t chromadb-railway .
docker run -p 8000:8000 chromadb-railway
```

Then visit `http://localhost:8000/api/v1/heartbeat` to verify it's working. 