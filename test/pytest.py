#!/usr/bin/env python
# -*- coding:utf-8 -*-
# Author: wxnacy(wxnacy@gmail.com)
# Description:

class User():
    def __init__(self, *args, **kwargs):
        self.id = kwargs.get('id')

if __name__ == "__main__":
    print('Hello World')
    u = User(id=1)
    print(u.id)
