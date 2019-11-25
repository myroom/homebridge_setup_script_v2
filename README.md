# Скрипт установки Homebridge (версия 2)

### Что же делает этот скрипт?

* Добавляет репозиторий nodejs 11.x
* Ставит `nodejs` и `libavahi-compat-libdnssd-dev`
* Через npm ставит `homebridge`
* Создает папку `.homebridge` в домашнем каталоге текущего пользователя
* Кладет туда файл конфигурации с данными для запуска веб-интерфейса
* Ставит сам плагин веб-морды - `homebridge-config-ui-x`
* Создает `homebridge.service` и запускает его

Процесс установки займет минут 10, в итоге Вы получите работоспособный homebridge и его веб-морду [http://localhost:8080](http://localhost:8080)

### Установка


```sh
$ sudo apt-get -y install git
$ git clone https://github.com/myroom/homebridge_setup_script_v2.git
$ cd homebridge_setup_script_v2 && bash ./install.sh
```

Если не запускается, надо скопировать еще раз файл config.json
