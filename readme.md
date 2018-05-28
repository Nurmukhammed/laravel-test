# Тестовое Задание: Тест приложение

## How to use

#### Using Docker
- Clone the repository with __git clone__
- Run __make setup__
- Access via __http://localhost:8888__

#### Without Docker
- Clone the repository with __git clone__
- Copy __.env.example__ file to __.env__ and edit database credentials there
- Run __composer install__
- Run __php artisan key:generate__
- Run __php artisan migrate --seed__ (it has some seeded data for your testing)
- Admin: __admin@admin.com__ - __password__
- Dump is in dump folder
- Fill in the database with topics, questions and options

## License

Basically, feel free to use and re-use any way you want.
