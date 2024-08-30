
@extends('base.base')
@section('title' , "DUMET CMS - ".$slug)
@section('content')

    <!-- Main -->
<div id="main">

    <!-- Post -->
    @foreach ($data as $row_post)
    <article class="post">
    <header>
        <div class="title">
            <h2><a href="#">{{ $row_post->title }}</a></h2>
            <p>Lorem ipsum dolor amet nullam consequat etiam feugiat</p>
        </div>
        <div class="meta">
            <time class="published" datetime="2015-11-01">{{  \Carbon\Carbon::parse($row_post->created_at)->format('d F Y')}}</time>
            <a href="#" class="author"><span class="name"> {{ $row_post->name }}</span><img src="{{ asset("assets/frontend/images/".$row_post->icon) }}" alt="" /></a>
        </div>
    </header>
    <a href="#" class="image featured"><img src="{{ asset("assets/frontend/images/".$row_post->images) }}" alt="{{ $row_post->alt }}" /></a>
    <p>{{ Illuminate\Support\Str::limit($row_post->news, 500) }}</p>
    <footer>
        <ul class="actions">
            <li><a href="{{ url("detail/".Illuminate\Support\Str::slug($row_post->title, '-')) }}" class="button big">Continue Reading</a></li>
        </ul>

    </footer>
</article>
    @endforeach
    <!-- Pagination -->
    {{ $data->links("custom.pagination") }}

</div>

<!-- Sidebar -->
<section id="sidebar">

    <!-- Intro -->
        <section id="intro">
            <a href="#" class="logo"><img src="{{ asset("assets/frontend/images/logo.jpg") }}" alt="" /></a>
            <header>
                <h2>RASYID</h2>
            </header>
        </section>

    <!-- Mini Posts -->
        <section>
            <div class="mini-posts">
                @foreach ($mini_post as $row_mini_post)
                  <!-- Mini Post -->
                <article class="mini-post">
                    <header>
                        <h3><a href="#">{{ $row_mini_post->title }}</a></h3>
                        <time class="published" datetime="2015-10-20">{{  \Carbon\Carbon::parse($row_mini_post->created_at)->format('d F Y')}}</time>
                        <a href="#" class="author"><img src="{{ asset("assets/frontend/images/".$row_mini_post->icon) }}" alt="{{ $row_mini_post->alt }}" /></a>
                    </header>
                    <a href="#" class="image"><img src="{{ asset("assets/frontend/images/".$row_mini_post->images) }}" alt="" /></a>
                </article>
                @endforeach
            </div>
        </section>

    <!-- Posts List -->
        <section>
            <ul class="posts">
                <li>
                    <article>
                        <header>
                            <h3><a href="#">Lorem ipsum fermentum ut nisl vitae</a></h3>
                            <time class="published" datetime="2015-10-20">October 20, 2015</time>
                        </header>
                        <a href="#" class="image"><img src="{{ asset("assets/frontend/images/pic08.jpg") }}" alt="" /></a>
                    </article>
                </li>
                <li>
                    <article>
                        <header>
                            <h3><a href="#">Convallis maximus nisl mattis nunc id lorem</a></h3>
                            <time class="published" datetime="2015-10-15">October 15, 2015</time>
                        </header>
                        <a href="#" class="image"><img src="{{ asset("assets/frontend/images/pic09.jpg") }}" alt="" /></a>
                    </article>
                </li>
                <li>
                    <article>
                        <header>
                            <h3><a href="#">Euismod amet placerat vivamus porttitor</a></h3>
                            <time class="published" datetime="2015-10-10">October 10, 2015</time>
                        </header>
                        <a href="#" class="image"><img src="{{ asset("assets/frontend/images/pic10.jpg") }}" alt="" /></a>
                    </article>
                </li>
                <li>
                    <article>
                        <header>
                            <h3><a href="#">Magna enim accumsan tortor cursus ultricies</a></h3>
                            <time class="published" datetime="2015-10-08">October 8, 2015</time>
                        </header>
                        <a href="#" class="image"><img src="{{ asset("assets/frontend/images/pic11.jpg") }}" alt="" /></a>
                    </article>
                </li>
                <li>
                    <article>
                        <header>
                            <h3><a href="#">Congue ullam corper lorem ipsum dolor</a></h3>
                            <time class="published" datetime="2015-10-06">October 7, 2015</time>
                        </header>
                        <a href="#" class="image"><img src="{{ asset("assets/frontend/images/pic12.jpg") }}" alt="" /></a>
                    </article>
                </li>
            </ul>
        </section>

    <!-- About -->
        <section class="blurb">
            <h2>About</h2>
            <p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod amet placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at phasellus sed ultricies.</p>
            <ul class="actions">
                <li><a href="#" class="button">Learn More</a></li>
            </ul>
        </section>
@endsection
