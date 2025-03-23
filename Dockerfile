FROM chromadb/chroma

# Set environment variables for CORS - need to use proper JSON string format
ENV CHROMA_SERVER_CORS_ALLOW_ORIGINS='["https://jasmine-chat-jw8z8mkat-samilliniers-projects.vercel.app","https://jasmine-chat-40f6dmagm-samilliniers-projects.vercel.app","http://localhost:3000"]'
ENV CHROMA_SERVER_CORS_ALLOW_CREDENTIALS=true
ENV CHROMA_SERVER_CORS_ALLOW_METHODS='["GET","POST","PUT","DELETE","OPTIONS"]'
ENV CHROMA_SERVER_CORS_ALLOW_HEADERS='["*"]'

# Expose the port that ChromaDB runs on
EXPOSE 8000

# Railway automatically sets PORT environment variable, but ChromaDB uses 8000 by default
# We'll use the default settings for simplicity
CMD ["uvicorn", "chromadb.app:app", "--reload", "--workers", "1", "--host", "0.0.0.0", "--port", "8000", "--log-level", "info"] 