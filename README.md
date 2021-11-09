# Code Coffee Climb Blog

## Init Submodule
```
git submodule update --init --recursive
```

## New Post
```
hugo new posts/my-first-post.md
```

## Serve
```
hugo server -D
```

## Build
```
hugo -D
```

## Deploy
```
git subtree push --prefix public  origin gh-pages
```