
<div class="border-end bg-white" id="sidebar-wrapper">
    <div class="sidebar-heading border-bottom bg-light">Start Bootstrap</div>
    <div class="list-group list-group-flush">
        <a class="list-group-item list-group-item-action list-group-item-light p-3" href="{{ url("admin/dashboard") }}">Home</a>
        <button class=" list-group-item list-group-item-action btn btn-md dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
           Blog
          </button>
          <ul class="dropdown-menu">
            <li><a href="{{ url("admin/dashboard/articles") }}" class="dropdown-item">Articles</a></li>
            <li><a href="{{ url("admin/dashboard/categories") }}" class="dropdown-item">Categories</a></li>
            <li><a href="{{ url("admin/dashboard/comments") }}" class="dropdown-item">Comment</a></li>
            <li><a href="{{ url("admin/dashboard/tags") }}" class="dropdown-item">Tags</a></li>
          </ul>
    </div>
    <a class="list-group-item list-group-item-action  p-3" href="{{ url("admin/dashboard/gallery") }}" style="border-bottom: 1px solid black">Gallery</a>
    <a class="list-group-item list-group-item-action  p-3" href="{{ url("admin/dashboard/mainGallery") }}" style="border-bottom: 1px solid black">mainGallery</a>
</div>
