
@extends('base.base')
@section('title' , "DUMET CMS - ".$slug)
@section('content')

    <!-- Main -->
<div id="main">
    <!-- Post -->
    <article class="post">
        <header>
            <div class="title">
                <h2><a href="#">Gallery</a></h2>
            </div>
        </header>   
        <div class="row">
            @foreach ($manyGallery as $gallery)
            <div class="col-12 col-md-6">
                <a href="{{ url("news/category/gallery/$gallery->id") }}">
                    <img class="img-fluid " src="{{ asset("assets/frontend/images-gallery/$gallery->images") }}" alt="">
                </a>
                <div class="row">
                    <a href="{{ url("news/category/gallery/$gallery->id") }}">{{ $gallery->title }}</a>
                </div>  
            </div>
            @endforeach 
         </div>
           <!-- Pagination -->
        </article>
          <div class="row">
                <div class="col-12">
                    {{ $manyGallery->links("custom.pagination") }}
                </div>
         </div>
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
                    <a href="{{ url("news/category/gallery/$gallery->id") }}" class="image">
                        <img src="{{ asset("assets/frontend/images-gallery/$gallery->images") }}" alt="" />
                    </a>
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
