import click


@click.command()
@click.option('--host', default='127.0.0.1')
@click.option('--port', default='8080')
def get(host, port):
    click.echo(f'http://{host}:{port}')


if __name__ == '__main__':
    get()
