@extends('front.partial.common')

@section('content')
    @inject('indexPresenter', 'App\Presenters\IndexPresenter')
    <!--main part--->
    @include('front.partial.main', $article = $articles[0]->articles)
    <!--分页-->
    {{ $articles->links() }}
@endsection