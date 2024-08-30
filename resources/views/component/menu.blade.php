	<!-- Menu -->
    <section id="menu">

        <!-- Search -->
            <section>
                <form class="search" method="get" action="#">
                    <input type="text" name="query" placeholder="Search" />
                </form>
            </section>

        <!-- Links -->
            <section>
                <ul class="links">
                    @foreach ($categories as $category)
                    <li>
                        <a href="{{ url('news/category') }}/{{ Illuminate\Support\Str::slug($category->category_name) }}">
                            <h3>{{ $category->category_name }}</h3>
                        </a>
                    </li>
                    @endforeach
            </section>

        <!-- Actions -->
            <section>
                <ul class="actions vertical">
                    <li><a href="#" class="button big fit">Log In</a></li>
                </ul>
            </section>

    </section>