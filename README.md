scottstanfield.github.io
========================

Personal blog page

# One-time gh-pages setup

Taken from [this article][1].

First make sure you don't have a `public` folder: `rm -rf public`

Next, setup the plumbing (one-time):

```
git checkout --orphan gh-pages

git reset
git commit --allow-empty -m 'Initial commit'
git checkout --force master
git worktree add dist gh-pages
```


[1]: http://pressedpixels.com/articles/deploying-to-github-pages-with-git-worktree/
