git pull


# Switch to branch
git checkout <Branch-name>


# Create and switch to the new branch
git checkout -b <Branch-name>



# Kinda like merge, but leave the commits
# Be sure to read the doc: https://git-scm.com/docs/git-rebase
git rebase <Branch-name>
# Assume the following history exists and the current branch is "topic":

#           A---B---C topic
#          /
#     D---E---F---G master

# From this point, the result of either of the following commands:
git rebase master
git rebase master topic
# would be:

#                   A'--B'--C' topic
#                  /
#     D---E---F---G master



# Create a fixup commit refering to a previous commit
git commit --fixup <commit>


# Squash fixup commits into the originals
git rebase --autosquash --interactive base


# Force push (you're changing history, be careful)
git push -f


# Nice to have aliases:
$ git config --global alias.co checkout
$ git config --global alias.br branch
$ git config --global alias.ci commit
$ git config --global alias.st status

$ git config --global alias.unstage 'reset HEAD --' #This makes the following two commands equivalent:
$ git unstage fileA
$ git reset HEAD -- fileA




# Cool resources: 

# Guide on fixup and autosquash: https://blog.sebastian-daschner.com/entries/git-commit-fixup-autosquash
# The fixup alias I use: https://jordanelver.co.uk/blog/2020/06/04/fixing-commits-with-git-commit-fixup-and-git-rebase-autosquash/
# All git doc is very good, be sure to check it when in trouble: https://www.git-scm.com/docs
# Git aliases: https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases
