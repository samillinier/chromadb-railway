FROM chromadb/chroma

# Expose the port that ChromaDB runs on
EXPOSE 8000

# Railway automatically sets PORT environment variable, but ChromaDB uses 8000 by default
# We'll use the default settings for simplicity
CMD ["uvicorn", "chromadb.app:app", "--reload", "--workers", "1", "--host", "0.0.0.0", "--port", "8000", "--log-level", "info"] 