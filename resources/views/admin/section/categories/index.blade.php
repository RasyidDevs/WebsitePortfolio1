<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Simple Sidebar - Start Bootstrap Template</title>
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
                  <div class="form">
                    <form method="POST" action="{{ url('admin/dashboard/categories/store') }}">
                      @csrf
                      <div class="mb-3 mt-3">
                        <label for="exampleInputPassword1" class="form-label">Category</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="category">
                      </div>
                      <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Icon</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="icon">
                      </div>
                      <button type="submit" class="btn btn-primary">Save</button>
                      <button type="reset" class="btn btn-danger">Reset</button>
                  </form>
                  </div>
                    <div class="table pt-3">
                      <table class="table">
                        <thead style="background-color:#f2f2f2 ">
                          <tr >
                            <th scope="col">No</th>
                            <th scope="col">Category_Name</th>
                            <th scope="col">Icon</th>
                            <th scope="col">Update</th>
                            <th scope="col">Delete</th>
                          </tr>
                        </thead>
                        <tbody>
                          @php
                            $index = 1;
                          @endphp
                          @foreach ($categories as $category)
                          <tr>
          
                              <th scope="row">{{ $index}}</th>
                              <td>{{ $category->category_name }}</td>
                              <td>{{ $category->icon }}</td>
                              <td class="center"><a href="{{ url("admin/dashboard/categories/edit/$category->id") }}" class="btn btn-primary btn-sm" type="button">Update</a></td>
                              <td class="center"><a href="{{ url("admin/dashboard/categories/delete/$category->id") }}" class="btn btn-danger btn-sm" type="button">Delete</a></td>
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

