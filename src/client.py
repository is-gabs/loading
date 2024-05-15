from requests.api import get, post, put


METHODS = {
    'get': get,
    'post': post,
    'put': put
}

def call(method, url, headers={}, payload={}):
    print(url)
    return get(url)