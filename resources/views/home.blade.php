@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-10">
            <div class="panel panel-default">
                <div class="panel-heading">Тест приложение</div>

                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-3 text-center">
                            <h1>{{ $questions }}</h1>
                            Вопросов в Базе Данных
                        </div>
                        <div class="col-md-3 text-center">
                            <h1>{{ $users }}</h1>
                            Зарегистрировано пользователей
                        </div>
                        <div class="col-md-3 text-center">
                            <h1>{{ $quizzes }}</h1>
                            Тестов сдано
                        </div>
                        <div class="col-md-3 text-center">
                            <h1>{{ number_format($average, 2) }} / 10</h1>
                            Средний бал
                        </div>
                    </div>
                </div>
            </div>
            <a href="{{ route('tests.index') }}" class="btn btn-success">Сдать новый тест!</a>
        </div>
    </div>
@endsection
