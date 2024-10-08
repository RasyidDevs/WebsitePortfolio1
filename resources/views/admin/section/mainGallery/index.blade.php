<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>pageGallery</title>
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
                    <form method="POST" action="{{ url("admin/dashboard/mainGallery/store") }}" enctype="multipart/form-data">
                       @csrf
                       <div class=" mb-3 mt-3">
                        <label for="exampleInputPassword1" class="form-label">Title</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="title">
                      </div>
                        <div class="mb-3 mt-3">
                            <label for="exampleInputPassword1" class="form-label">Images</label>
                            <input type="file" class="form-control" id="exampleInputPassword1" name="images">
                        </div>
                        <button type="submit" class="btn btn-primary">Save</button>
                        <button type="reset" class="btn btn-danger">Reset</button>
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
                                <th scope="col">Title</th>
                                <th scope="col">Images</th>
                                <th scope="col">Update</th>
                                <th scope="col">Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                          @php
                          $index = 1;
                        @endphp
                        @foreach ($manyGallery as $Gallery)
                        <tr>
                            <th scope="row">{{ $index}}</th>
                            <td>{{ $Gallery->title}}</td>
                            <td>{{ $Gallery->images }}</td>
                            <td class="center"><a href="{{ url("admin/dashboard/mainGallery/edit/".$Gallery->id) }}" class="btn btn-primary btn-sm" type="button">Update</a></td>
                            <td class="center"><a href="{{ url("admin/dashboard/mainGallery/delete/".$Gallery->id) }}" class="btn btn-danger btn-sm" type="button">Delete</a></td>
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
