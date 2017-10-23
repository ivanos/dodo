#!/usr/bin/env python

from dobbyapi import *

def main():

    dobby = DobbyApi()
    dobby.create_id('foo', {'metadata': {'a':1}})
    dobby.create_id('bar', {'metadata': {}})
    print dobby.get_id('foo')
    print dobby.get_id('bar')
    print "-" * 80

    dobby.create_link('foo', 'bar', {'metadata': {'b':2}})
    print dobby.get_link('foo', 'bar')
    print "-" * 80

    print dobby.search('foo', {'max_depth': 10})

if __name__ == "__main__":
    main()

