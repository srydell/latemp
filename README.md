# latemp

CLI tool to easily organize and reuse latex templates

## Getting started

### Prerequisites

Latemp uses a makefile to help you with the installation. It should work on any GNU/Linux or Mac without any dependencies.

### Installing

Clone the repository and cd in

```
$ git clone https://github.com/srydell/latemp.git
$ cd latemp
```

Change the default editor and pdfviewer. The default on GNU/Linux is vim and mupdf. On Mac it is texpad. This can be done by changing the first lines in the latemp file. Note that latemp assumes that the GNU/Linux editor is terminal based, and the Mac editor is in your applications folder. The default folder for the latex templates is ~/Documents/latextemplates but can easily be changed.

Then you may install latemp. This will copy the latemp file to your /usr/local/bin/ folder so that it is in your PATH variable by default.

```
$ make
```

You may now test it simply by typing

```
$ latemp
```

to find out what your current templates are.

### Usage

The templates can be accessed by typing

```
$ latemp templateName
```

this will open your editor and pdfviewer depending on which system you are on.


### Adding new templates

You can look at some example templates in [latextemplates](https://github.com/srydell/latextemplates).

You should have a folder in your ~/Documents called latextemplates. There you can add any newTemplateName.tex file that then can automatically be used with latemp by typing

```
$ latemp newTemplateName
```

If you also add a newTemplateName.pdf, the pdfviewer will automatically open this when using latemp in your terminal.

Good luck!

## Contributing

You are free to do with these files as you wish. If you make improvements along the way, please do a pull request to let me benefit from them aswell!
