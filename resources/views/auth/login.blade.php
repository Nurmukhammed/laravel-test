@extends('layouts.auth')

@section('content')
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h1 class="text-center" style="color: white">Тест приложение</h1>
            <br />
            <div class="panel panel-default">
                <div class="panel-heading">Логин</div>
                <div class="panel-body">
                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <strong>Whoops!</strong> There were problems with input:
                            <br><br>
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form class="form-horizontal"
                          role="form"
                          method="POST"
                          action="{{ url('login') }}">
                        <input type="hidden"
                               name="_token"
                               value="{{ csrf_token() }}">

                        <div class="form-group">
                            <label class="col-md-4 control-label">Email</label>

                            <div class="col-md-6">
                                <input type="email"
                                       class="form-control"
                                       name="email"
                                       value="{{ old('email') }}">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">Пароль</label>

                            <div class="col-md-6">
                                <input type="password"
                                       class="form-control"
                                       name="password">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <label class="form-group__label">
                                    <div class="form-group__el-first">
                                        <input type="checkbox"
                                               name="remember">
                                    </div>
                                    <div class="form-group__el-second">
                                        Запомнить меня
                                    </div>
                                </label>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit"
                                        class="btn btn-primary">
                                    Логин
                                </button>
                                <a href="{{ route('auth.register') }}"
                                        class="btn btn-default">
                                    Регистрация
                                </a>
                                <br>
                                <a href="{{ route('auth.password.reset') }}">Забыли пароль</a>
                                <br>
                                <br>
                                Или логин с:
                                <br>
                                <a href="{{ route('oauth2google') }}"
                                        class="btn btn-info">
                                    Google
                                </a>
                                <a href="{{ route('oauth2facebook') }}"
                                        class="btn btn-info">
                                    Facebook
                                </a>
                                <a href="{{ route('oauth2github') }}"
                                        class="btn btn-info">
                                    GitHub
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
