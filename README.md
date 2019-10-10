# Скрипт установки Homebridge

### Что же делает этот скрипт?

* Добавляет репозиторий nodejs 11.x
* Ставит `nodejs` и `libavahi-compat-libdnssd-dev`
* Через npm ставит `homebridge`
* Создает папку `.homebridge` в домашнем каталоге текущего пользователя
* Кладет туда файл конфигурации с данными для запуска веб-интерфейса
* Ставит сам плагин веб-морды - `homebridge-config-ui-x`
* Создает `homebridge.service` и запускает его
* Создает отдельный `homebridge-config-ui-x.service` и запускает его

Теперь даже при перезагрузке homebridge с кривым конфигом, Вы сможете восстановить его работоспособность используя веб-интерфейс.

Процесс установки займет минут 10, в итоге Вы получите работоспособный homebridge и его веб-морду [http://localhost:8080](http://localhost:8080)

### Установка


```sh
$ sudo apt-get install git
$ git clone https://github.com/myroom/homebridge_setup_script.git
$ cd homebridge_setup_script
$ sudo bash ./install.sh
```

Если не запускается, надо скопировать еще раз файл config.json