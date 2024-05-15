import click
from src.client import call


def get(url=''):
    result = call('', 'http://localhost:8080/test')
    print(result)


if __name__ == '__main__':
    get()
