<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Comments</title>
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
                    <form method="POST" action="{{ url("admin/dashboard/comments/update/$data->id") }}" enctype="multipart/form-data">
                       @csrf
                        <div class="mb-3 mt-3">
                            <label for="exampleInputPassword1" class="form-label">Articles_id</label>
                            <input type="text" class="form-control" id="exampleInputPassword1" name="articles" value="{{ $data->articles_id }}">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">Reply</label>
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="reply">{{ $data->reply }}</textarea>
                          </div>
                        <div class="mb-3">
                            <img src="{{ asset("assets/frontend/images/".$data->avatar) }}" alt=""  class="img-responsive" width="60">
                            <label for="formFile" class="form-label">Avatar</label>
                            <input class="form-control" type="file" id="formFile" name="image">
                        </div>
                        <button type="submit" class="btn btn-primary">Edit</button>
                        <button type="reset" class="btn btn-danger"><a href="{{ url("admin/dashboard/comments") }}" class="btn-save">Batal</a></button>
                    </form>
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">articles_id</th>
                                <th scope="col">avatar</th>
                                <th scope="col">reply</th>
                                <th scope="col">updated_at</th>
                                <th scope="col">Update</th>
                                <th scope="col">Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                          @php
                          $index = 1;
                        @endphp
                        @foreach ($comments as $comment)
                        <tr>
        
                            <th scope="row">{{ $index}}</th>
                            <td>{{ $comment->articles_id }}</td>
                            <td>{{ $comment->avatar }}</td>
                            <td>{{ Str::limit($comment->reply,15) }}</td>
                            <td>{{ $comment->updated_at }}</td>
                            <td class="center"><a href="{{ url("admin/dashboard/comments/edit/$comment->id") }}" class="btn btn-primary btn-sm" type="button">Update</a></td>
                            <td class="center"><a href="{{ url("admin/dashboard/comments/delete/$comment->id") }}" class="btn btn-danger btn-sm" type="button">Delete</a></td>
                        </tr>
                     @php
                         $index+=1
                     @endphp
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
