#!/bin/bash

hugo -D && git subtree push --prefix public  origin gh-pages
