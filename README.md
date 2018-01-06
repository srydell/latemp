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

Change the default directory where latemp searches for templates, the editor, and the pdf viewer. This can be done by editing the file "config". After installation this file will be in your home folder under the name ".latemprc" so that you can change any config at any time.

If a GUI application is chosen as editor, latemp will ignore the pdf viewer and assume some sort of viewer is built in.

Latemp will try to launch your programs via the terminal and it is therefore required for programs to either be in your PATH or for Mac users, to be in your Applications folder

Installing latemp will copy the program file to your /usr/local/bin/ folder so that it is in your PATH variable by default. Installing is as easy as running:

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
$ latemp templateName newProject
```

This will copy the files corresponding to that templateName into your current working directory, rename them to newProject.tex/pdf, and open these files with your editor and pdfviewer.


### Adding new templates

You can look at some example templates in [latextemplates](https://github.com/srydell/latextemplates).

In your folder containing templates you can add any newTemplateName.tex file that then will automatically be used by latemp when typing

```
$ latemp newTemplateName newProject
```

If you also add a newTemplateName.pdf, the pdfviewer will automatically open it.

Good luck!

## Troubleshooting

### I'm using Mac and I get this error when running git/make.

```
$ xcrun: error: invalid active developer path (/Library/Developer/CommandLineTools), missing xcrun at: /Library/Developer/CommandLineTools/usr/bin/xcrun
```

You need to install Xcode to be able to use developer tools such as git/make. You can do this by typing

```
$ xcode-select --install
```

Or you may install latemp manually by downloading it, unzipping and, while in the latemp folder, typing

```
$ chmod +x ./install.sh
$ ./install.sh
```

which should install the same way as typing make.

## Contributing

You are free to do with these files as you wish. If you make improvements along the way, please do a pull request to let me benefit from them aswell!
