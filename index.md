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
3. Navigate to that site url and confirm the site works.
![Working site](assets/images/Screenshots/Capture-working-site.jpg "Working site")
4. In the docs folder, edit the _config.yml file, delete everything and replace it by the following but replacing **ProjectName** by the actual project name. The repository is not strictly required for hosting on github but needed in order to build documentation locally:
```yaml
remote_theme: DnnCommunity/jekyll-theme-dnn-community
repository: DnnCommunity/ProjectName
```
5. Navigate to https://DnnCommunity.github.io/_repositoryName_ replacing _repositoryName_ by the actual repository name and confirm you see the Dnn Community theme.
6. This step is not required to use on github gut to be able to build locally you also need to create a Gemfile containing the following:
~~~ yaml
# frozen_string_literal: true
source "https://rubygems.org"
gem 'github-pages', group: :jekyll_plugins
gem 'wdm', '>= 0.1.0' if Gem.win_platform?
~~~
7. Only if you need to build locally, clone the repository, open a terminal (or command prompt) in the docs folder and run the following command:
```
bundle exec jekyll serve
```
Then navigate to http://127.0.0.1:4000

8.Modify your .gitignore file and add ```[Dd]ocs/_site``` to it to prevent commiting local site builds.

### Setting up the navigation menu
In order to see your pages in the navigation menu, you need to create a data file that will contain your pages structure.
1. Create a file in your docs/_data folder that is called navigation.yml and include your index page, for each page you can provide a title and a url. Even though your home page is named index.md, it will get renamed as index.html when the site compiles.
```yaml
- title: Home
  url: /index.html
```
2. If you do need to have sections, replace the **url** by sub **sublinks** and repeat the same as step one inside of that node. (currently sections just contain pages, they have no content on themselves). Here is how it looks for this page right now:

```yaml
- title: Home
  url: /index.html
- title: Github Metadata
  url: /github-metadata.html
- title: Bootstrap Sample
  url: /bootstrap.html
- title: Section
  sublinks:
    - title: SubPage 1
      url: /subpage1.html
    - title: SubPage 2
      url: /subpage2.html
```
