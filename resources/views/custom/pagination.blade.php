
@if ($paginator->hasPages())
<ul class="actions pagination">
    @if ($paginator->onFirstPage())
    <li><a href="" class="disabled button big previous">Previous Page</a></li>
    @else
    <li><a href="{{ $paginator->previousPageUrl() }}" class=" button big previous">Previous Page</a></li>
   @endif
    @if ($paginator->hasMorePages())
    <li><a href="{{ $paginator->nextPageUrl() }}" class="button big next">Next Page</a></li>
    @else
    <li><a href="" class="disabled button big next">Next Page</a></li>
    @endif
</ul>
@endif

