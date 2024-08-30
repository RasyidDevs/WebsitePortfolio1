
@extends('base.base')
@section('title' , "DUMET CMS - ".$slug)
@section('content')

    <!-- Main -->
<div id="main">
    <!-- Post -->
    <article class="post">
            <header>
                <div class="title">
                    <h3>{{ $galleryId->title }}</h3>
                </div>
            </header>   
            <div class="row" >
                @foreach ($manyPageGallery as $pageGallery)
                <div class="col-12 col-md-6"  >
                    <a href="{{ asset("assets/frontend/images-gallery/$pageGallery->images") }}" data-fancybox="gallery" data-caption="{{ $galleryId->title }}">
                        <img src="{{ asset("assets/frontend/images-gallery/$pageGallery->images") }}" alt="" class="img-fluid" data-lg-size="1600-2400">
                    </a>
                </div>
                @endforeach
                    <!-- Pagination -->
                </div>
        </article>
        {{ $manyPageGallery->links("custom.pagination") }}
</div>

<!-- Sidebar -->
<section id="sidebar">
    <!-- Profile-->
        <section>
            <div class="profile">
                  <!-- Profile -->    
                      <header>
                            <img src="{{ asset("assets/frontend/images-gallery/image-profile.jpeg") }}" alt="" class="image-profile">
                     </header>
                     <h3>Rasyid Bomantoro</h3>
                     <h3 >Web Developer</h3>
            </div>
        </section>

    <!-- Posts List -->
    
        <section>
            <ul class="posts">
                @foreach ($manyGallery as $gallery) 
                <li>
                    <article>
                        <header>
                            <h3><a href="{{ url("news/category/gallery/$gallery->id") }}">{{ $gallery->title }} </a></h3>
                        </header>
                        <a href="{{ url("news/category/gallery/$gallery->id") }}" class="image"><img src="{{ asset("assets/frontend/images-gallery/$gallery->images") }}" alt="" /></a>
                    </article>
                </li>
                @endforeach  
            </ul>
        </section>

    <!-- About -->
        <section class="blurb">
            <h2>About Me</h2>
            <p style="text-align: justify">I'm a seasoned web developer with a strong background in delivering innovative solutions and collaborating effectively with teams and clients. I thrive in dynamic environments, continuously learning and adapting to the latest web technologies.</p>
        </section>
@endsection
