<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Articles</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="{{ asset("assets/dash/css/styles.css") }}" rel="stylesheet" />
    </head>
    <body>
        <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
           @include('admin/component/sidebar')
            <!-- Page content wrapper-->
            <div id="page-content-wrapper">
                <!-- Top navigation-->
                @include('admin/component/navbar')
                <!-- Page content-->
                <div class="container">
                    <form method="POST" action="{{ url("admin/dashboard/articles/update/$data->id") }}"  enctype="multipart/form-data">
                       @csrf
                        <div class="mb-3 mt-3">
                            <label for="exampleInputPassword1" class="form-label">categories_id</label>
                            <input type="text" class="form-control" id="exampleInputPassword1" name="categories" value="{{ $data->categories_id }}">
                        </div>
                        <div class="mb-3">
                          <label for="exampleInputPassword1" class="form-label">Title</label>
                          <input type="text" class="form-control" id="exampleInputPassword1" name="title" value="{{ $data->title }}">
                        </div>
                        <div class="mb-3">
                            <img src="{{ asset("assets/frontend/images/".$data->images) }}" alt=""  class="img-responsive" width="88">
                            <label for="formFile" class="form-label">Images</label>
                            <input class="form-control" type="file" id="formFile" name="image">
                          </div>
                        <div class="mb-3">
                            <label>News</label>
                            <textarea class="form-control" rows="5" name="news">{{ $data->news }}</textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Edit</button>
                        <button type="reset" class="btn btn-danger"><a href="{{ url("admin/dashboard/articles") }}" class="btn-save">Batal</a></button>
                    </form>
                    <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">categories_id</th>
                                <th scope="col">title</th>
                                <th scope="col">images</th>
                                <th scope="col">news</th>
                                <th scope="col">updated_at</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($articles as $index => $article)
                            <tr>
                                <th scope="row">{{ $index }}</th>
                                <td>{{ $article->categories_id }}</td>
                                <td>{{ $article->title }}</td>
                                <td>{{ $article->images }}</td>
                                <td>{{ Str::limit($article->news,10)}}</td>
                                <td>{{ $article->updated_at }}</td>
                                <td class="center"><a href=" {{ url("admin/dashboard/articles/edit/$article->id") }}  " class="btn btn-primary btn-sm" type="button">Update</a></td>
                                <td class="center"><a href="{{ url("admin/dashboard/articles/delete/$article->id") }}" class="btn btn-danger btn-sm" type="button">Delete</a></td>
                            </tr>
                              
                            @endforeach
                        </tbody>
                      </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
