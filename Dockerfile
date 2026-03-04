FROM python:3.11-slim

RUN pip install -U uv

ENV MEM0_HOST=0.0.0.0
ENV MEM0_TRANSPORT=streamable-http

CMD sh -lc 'export MEM0_PORT="${PORT:-8081}"; uvx --from git+https://github.com/elvismdev/mem0-mcp-selfhosted.git mem0-mcp-selfhosted'
