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
    <link href="{{ asset('assets/dash/css/styles.css') }}" rel="stylesheet" />
    <script src="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone-min.js"></script>
    <link href="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone.css" rel="stylesheet" type="text/css" />
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
                <form method="POST" action="{{ url('admin/dashboard/gallery/store') }}" enctype="multipart/form-data" >
                    @csrf
                    <div class="form-group">
                        <div class="input-group mb-3">
                            <label class="input-group-text" for="inputGroupSelect01">Gallery_id</label>
                            <select class="form-select" id="inputGroupSelect01" name="gallery">
                                @foreach ($manyGallery as $gallery)
                                    <option value="{{ $gallery->id }}">{{ $gallery->id }}&nbsp;{{ $gallery->title }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                  
                    <div class="form-group mt-3">
                        <div class="dropzone" name="file" id="dropzoneArea">
                            <div class="dropzone-previews"></div>
                        </div>
                    </div>
                    <div class="form-group mt-2">
                        <button type="submit" class="btn btn-primary">Save</button>
                        <button type="reset" class="btn btn-danger">Reset</button>
                    </div>
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
                                <th scope="col">Gallery_id</th>
                                <th scope="col">Images</th>
                                <th scope="col">Update</th>
                                <th scope="col">Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $index = 1;
                            @endphp
                            @foreach ($manyPageGallery as $pageGallery)
                                <tr>
                                    <th scope="row">{{ $index }}</th>
                                    <td>{{ $pageGallery->gallery_id }}</td>
                                    <td>{{ $pageGallery->images }}</td>
                                    <td class="center"><a href="{{ url('admin/dashboard/gallery/edit/'.$pageGallery->id) }}" class="btn btn-primary btn-sm" type="button">Update</a></td>
                                    <td class="center"><a href="{{ url('admin/dashboard/gallery/delete/'.$pageGallery->id) }}" class="btn btn-danger btn-sm" type="button">Delete</a></td>
                                </tr>
                                @php
                                    $index += 1
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
    <script type="text/javascript">
       var myDropzone = new Dropzone("div#dropzoneArea", {
                url: "{{ url('admin/dashboard/gallery/store') }}",
                autoProcessQueue: false,
                uploadMultiple: true,
                parallelUploads: 100,
                maxFiles: 100,
                previewsContainer: 'div.dropzone-previews',
                addRemoveLinks: true,
                headers: {
                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                },
                paramName: "file", // Make sure this matches the name of the input field on the server
                init: function() {
                    var submitButton = document.querySelector("button[type=submit]");
                    var myDropzone = this;
                    var resetButton = document.querySelector("button[type=reset]");
                 
                    resetButton.addEventListener("click", function(e) {
                        e.preventDefault();
                        e.stopPropagation();
                        myDropzone.removeAllFiles(true);
                    });
                 
                    submitButton.addEventListener("click", function(e) {
                        e.preventDefault();
                        e.stopPropagation();
                        myDropzone.processQueue();
                    });
                    this.on("sending", function(file, xhr, formData) {
                        // Mengirim nilai "gallery" bersama dengan file
                        var galleryValue = document.querySelector("#inputGroupSelect01").value;
                        formData.append('gallery', galleryValue);
                    });
                    this.on("successmultiple", function(files, response) {
                        // Handle the response after successful uploads
                        window.location.href = "{{ url('admin/dashboard/gallery') }}";
                    });

                    this.on("errormultiple", function(files, response) {
                        // Handle the response after failed uploads
                        alert('There was an error uploading the files');
                    });
                    this.on("error", function(file, message) {
                        console.log("Error uploading file:", file, message); // Tambahkan log ini untuk melihat pesan kesalahan secara lengkap
                        alert('Error uploading file: ' + message);
                    });
                }
            });

    </script>
    
</body>
</html>
