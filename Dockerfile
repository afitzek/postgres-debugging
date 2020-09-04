FROM postgres:12

RUN apt update && apt install postgresql-12-pldebugger

RUN cp /usr/share/postgresql/postgresql.conf.sample /etc/postgresql/postgresql.conf && echo "shared_preload_libraries = '/usr/lib/postgresql/12/lib/plugin_debugger'" >> /etc/postgresql/postgresql.conf

CMD ["postgres", "-c", "config_file=/etc/postgresql/postgresql.conf"]
