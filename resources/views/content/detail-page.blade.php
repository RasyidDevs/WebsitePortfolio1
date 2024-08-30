@extends('base.base')
@section('content')
@section('title' , "DUMET CMS -". $articles->title )
@section('detail' , "single")
	<!-- Main -->
<div id="main">
	<!-- Post -->
		<article class="post">
			<header>
				<div class="title">
					<h2><a href="#">{{ $articles->title }}</a></h2>
					<p><span>Tags: @foreach ($tags as $tag)
						{{ $tag->tag_name }}
					@endforeach<span></span></span></p>
				</div>
				<div class="meta">
					<time class="published" datetime="2015-11-01">{{  \Carbon\Carbon::parse($articles->created_at)->format('d F Y')}}</time>
					<a href="#" class="author"><span class="name">{{ $user }}</span><img src="images/avatar.jpg" alt="" /></a>
				</div>
			</header>
			<span class="image featured"><img src="{{ asset('assets\frontend\images/'.$articles->images) }}" alt="" /></span>
			<p>{{ $articles->news }}</p>
			<footer>
				<ul class="stats">
					<li><a href="#">General</a></li>
					<li><a href="#" class="icon fa-heart">28</a></li>
					<li><a href="#" class="icon fa-comment">128</a></li>
				</ul>
			</footer>
		</article>
</div>
<div id="comments">
	<div>
		@if ($errors->any())
			<div class="alert alert-danger" style="background:red;color:white">
				<ul>
					@foreach ($errors->all() as $error)
						<li>{{ $error }}</li>
					@endforeach
				</ul>
			</div>
		@endif
		@if (Session::has("comments"))
		<div class="alert alert-danger" style="background:green;color:white">
			<ul>
				<li>{!!Session::get("comments")  !!}</li>
			</ul>
		</div>
	@endif
		<form action="{{ url("detail/save-comment") }}" method="post">
			@csrf
			<label for="">Enter the comments here</label>
			<input type="text" name="comment" placeholder="Your comment..">
			<input type="hidden" name="title" value="{{ $articles->title }}">
			<br>
			<input type="submit" value="Submit">
		</form>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<h3>User comment Example</h3>
			</div>
		</div>
		@if (empty($comments))
			
		@else
		@foreach ($comments as $comment)
			<div class="row">
				<div class="col-sm-1">
                        <img class="img-responsive user-photo" src="{{ asset("assets/frontend/images/".$comment->avatar) }}" alt="Avatar" style="max-width: 150px;">
				</div>
				<div class="col-sm-5">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong>myusername</strong> <span class="text-muted">commented {{ \Carbon\Carbon::parse($comment->created_at)->format('d F Y')}} </span>
						</div>
						<div class="panel-body">
						{{ $comment->reply }}
						</div>
					</div>
				</div>
			</div>
		@endforeach
		@endif
	
	</div>
</div>
@endsection

