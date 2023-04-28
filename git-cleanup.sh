#!/bin/bash

git remote prune origin
git branch -va | grep gone
git branch -va | grep gone | awk '{print $1}' | xargs git branch -D 
