## ltranslate: libretranslate in the terminal

## Preview
[![asciicast](https://asciinema.org/a/X9mJ2Muy0Pjwm1tYsbj7yy4xm.svg)](https://asciinema.org/a/X9mJ2Muy0Pjwm1tYsbj7yy4xm)

ltranslate is a simple translation tool written in bash. It was inspired by [mariodujic's bash translate script](https://github.com/mariodujic/Bash-Translate). The major difference is that ltranslate uses the [LibreTranslate](https://github.com/LibreTranslate/LibreTranslate) API instead of Google's.

### Installation

From your terminal emulator, clone this repository using 'git clone' followed by this url.

```git clone <this_url>```

```cd ltranslate```

ltranslate is packaged with an installation script for your convenience (this installation script does require root privileges, so please review it carefully before executing it).

You'll need to change the permissions on the install script in order to execute it:

```chmod +x ./install.sh```

Afterwards which simply invoke the script:

```./install.sh```

 ltranslate also comes with an uninstall script, repeat the above commands above to uninstall, simply replacing 'install' with 'uninstall'.

### Basic Usage

```ltranslate sourcelang targetlang query```

For example, if you wish to translate from English to Ukrainian:

```ltranslate en uk Free as in Freedom!```

### Changing the LibreTranslate Mirror

This script utilizes the [German Mirror](https://libretranslate.de/) of LibreTranslate. Should you wish to change it, simply open up the ltranslate script in your favorite text editor and change the url variiable to whichever [Mirror](https://github.com/LibreTranslate/LibreTranslate#mirrors) you'd like.

### Why did you make this?

I created ltranslate because I was inspired by [mariodujic's bash translate script](https://github.com/mariodujic/Bash-Translate). It was simple and demonstrated the power of the curl command, as well as the standard UNIX utilities. I did, however, wish specifically to use a more FOSS friendly API, thus utilizing LibreTranslate instead of Google. LibreTranslate has far less language support (at the time of this writing), but is a fine FOSS alternative, so I decided it would be worth my time to write a variation on this.

### Better CLI Translation Tools

For those of you wishing to simply get the most bang for your buck, you may want to check out [translate-shell](https://github.com/soimort/translate-shell).

### Supported Languages

<details>

|                     |       |
| ------------------- | ----- |
| Arabic              | ar    |
| Azerbaijani         | az    |
| Chinese             | zh    |
| Czech               | cs    |
| Danish              | da    |
| Dutch               | nl    |
| English             | en    |
| Esperanto           | eo    |
| Finnish             | fi    |
| French              | fr    |
| German              | de    |
| Greek               | el    |
| Hindi               | hi    |
| Hungarian           | hu    |
| Indonesian          | id    |
| Irish               | ga    |
| Italian             | it    |
| Japanese            | ja    |
| Korean              | ko    |
| Persian             | fa    |
| Polish              | pl    |
| Portuguese          | pt    |
| Russian             | ru    |
| Slovak              | sk    |
| Spanish             | es    |
| Swedish             | sv    |
| Turkish             | tr    |
| Ukrainian           | uk    |

</details>
