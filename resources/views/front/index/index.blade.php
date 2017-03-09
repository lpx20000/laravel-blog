@extends('front.partial.common')

@section('content')
    @inject('indexPresenter', 'App\Presenters\IndexPresenter')
    <!--main part--->
    @include('front.partial.main', $article)
    <!--分页-->
    {{ $article->links() }}
@endsection