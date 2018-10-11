---
layout: page
title: Dnn Community Jekyll template
---

# Overview
This repository contains the theme for Dnn Community github projects documentation. It also is it's self documentation and contains samples of what you can do.

## Setting up documentation on projects
1. Create a docs folder to hold your documentation. In github you cannot create a folder unless it contains a file, so let's add a file named index.md that will be our home page. Click on Create New File button and put some placeholder text, in the file name, include the docs path as such (Type: /docs/index.md):
![Create a docs folder](assets/images/Screenshots/Capture-create-docs-folder.jpg "Create a docs folder")
2. Go to the project settings and scroll to GitHub Pages, for the source select the /docs folder and choose any theme (we will replace it manually soon). Having the documentation on the same repository as a folder will allow pull requests that affect a feature that needs documentation to be self contained with the change and related documentation updates. Once saved, you will get your site url shown, it make take a minute or so for the site to start showing, this is normal.
![Set the github pages options](assets/images/Screenshots/Capture-gh-pages-settings.jpg "Set the github pages options")
3. Navigate to that site url and confirm the site works
![Working site](assets/images/Screenshots/Capture-working-site.jpg "Working site")
4. In the docs folder, edit the _config.yml file