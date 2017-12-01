## Laboratoria

Zaczynamy od porządków w katalogu domowym:

* `quota` (aktualnie 10GB)
* `ncdu`

1. Do każdego repozytorium dodajemy plik
  [.gitignore](https://git-scm.com/docs/gitignore) odpowiedni
  dla projektów w języku [Ruby](https://github.com/github/gitignore/blob/master/Ruby.gitignore).
1. Dodajemy pliki [.rubocop.yml](http://rubocop.readthedocs.io/en/latest/configuration/),
  [.travis.yml](https://docs.travis-ci.com).
1. Potrzebne gemy instalujemy w katalogu **vendor/bundle**


## Przydatne linki, aliasy i funkcje dla powłoki Bash

1. [transfer.sh](https://transfer.sh/) – share your files

Bash:

```sh
transfer() {
  curl --upload-file $1 https://transfer.sh/$(basename $1);
}
alias transfer=transfer
```
