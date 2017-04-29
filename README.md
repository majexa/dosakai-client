# Dosakai Client

__Dosakai Client__ is the Docker image for using with Drone.
It communicates with dosakai server over SSH protocol by insecure SSH key.

Both __Dosakai Client__ & [Dosakai Server](https://github.com/majexa/dosakai) are the docker images.

## Usage

Create project file structure like that:

    /.drone.yml
    /test.feature

`.drone.yml` file example:

```yml
    pipeline:
      test:
        image: majexa/dosakai-client
        commands:
          # Pushing feature file to Dosakai Server over SSH
          - cd /usr/src/dosakai; bash run.sh /drone/src/test.feature

    services:
      dosakai:
        image: majexa/dosakai
        environment:
          EMAIL_SENDER: ci@majexa.ru
          EMAIL_SCREENSHOTS_TO: result@majexa.ru
          SMTP_EMAIL: XXX@XXX.XXX
          SMTP_PASSWORD: XXX
```

`test.feature` file example:

```gherkin
    # language: ru
    Функционал: Общий тест
      Контекст:
        Допустим я на странице "http://google.com/"
        
      Сценарий: Первая страница
       Тогда я вижу "google"
```
