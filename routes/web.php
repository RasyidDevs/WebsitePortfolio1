<?php

use App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [App\Http\Controllers\PostController::class, 'index'])->name('index');
Auth::routes();
Route::get('search', [App\Http\Controllers\PostController::class, 'search'])->name('user.index');
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('news/category/{id}', [App\Http\Controllers\PostController::class, 'pageByCategory'])->name('user.category');
Route::get('detail/{id}', [App\Http\Controllers\DetailController::class, 'detailArticle'])->name('user.index');
Route::post('detail/save-comment', [App\Http\Controllers\DetailController::class, 'saveComment'])->name('user.index');
Route::get('/admin', [UserController::class, 'index'])->name('user.index');
Route::get('news/category/gallery/{id}', [PostController::class, 'pageByGallery'])->name('user.detailGalery');

//ADMIN
Auth::routes();
Route::get('/admin', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('admin/dashboard', [App\Http\Controllers\DashboardController::class, 'index'])->name('admin.dashboard');
Route::get('admin/dashboard/articles', [App\Http\Controllers\SectionController::class, 'articles']);
Route::get('admin/dashboard/comments', [App\Http\Controllers\SectionController::class, 'comments']);
//Categories
Route::get('admin/dashboard/categories', [App\Http\Controllers\CategoryController::class, 'index'])->name("categories.index");
Route::post('admin/dashboard/categories/store', [App\Http\Controllers\CategoryController::class, 'store'])->name('categories.store');
Route::get('admin/dashboard/categories/edit/{id}', [App\Http\Controllers\CategoryController::class, 'edit'])->name('categproes.edit');
Route::post('admin/dashboard/categories/update/{id}', [App\Http\Controllers\CategoryController::class, 'update'])->name('categories.update');
Route::get('admin/dashboard/categories/delete/{id}', [App\Http\Controllers\CategoryController::class, 'destroy'])->name('categories.delete');
//COMMENTS
Route::get('admin/dashboard/comments', [App\Http\Controllers\CommentController::class, 'index'])->name('comments.index');
Route::post('admin/dashboard/comments/store', [App\Http\Controllers\CommentController::class, 'store'])->name('comments.store');
Route::get('admin/dashboard/comments/delete/{id}', [App\Http\Controllers\CommentController::class, 'destroy'])->name('comments.delete');
Route::get('admin/dashboard/comments/edit/{id}', [App\Http\Controllers\CommentController::class, 'edit'])->name('comments.edit');
Route::post('admin/dashboard/comments/update/{id}', [App\Http\Controllers\CommentController::class, 'update'])->name('comments.update');
//ARTICLES
Route::get('admin/dashboard/articles', [App\Http\Controllers\ArticlesController::class, 'index'])->name('articles.index');
Route::post('admin/dashboard/articles/store', [App\Http\Controllers\ArticlesController::class, 'store'])->name('articles.store');
Route::get('admin/dashboard/articles/delete/{id}', [App\Http\Controllers\ArticlesController::class, 'destroy'])->name('articles.delete');
Route::get('admin/dashboard/articles/edit/{id}', [App\Http\Controllers\ArticlesController::class, 'edit'])->name('articles.edit');
Route::post('admin/dashboard/articles/update/{id}', [App\Http\Controllers\ArticlesController::class, 'update'])->name('articles.update');
//TAGS 
Route::get('admin/dashboard/tags', [App\Http\Controllers\TagsController::class, 'index'])->name('tags.index');
Route::post('admin/dashboard/tags/store', [App\Http\Controllers\TagsController::class, 'store'])->name('tags.store');
Route::get('admin/dashboard/tags/delete/{id}', [App\Http\Controllers\TagsController::class, 'destroy'])->name('tags.delete');
Route::get('admin/dashboard/tags/edit/{id}', [App\Http\Controllers\TagsController::class, 'edit'])->name('tags.edit');
Route::post('admin/dashboard/tags/update/{id}', [App\Http\Controllers\TagsController::class, 'update'])->name('tags.update');
//PAGE-GALLERY
Route::get('admin/dashboard/gallery', [App\Http\Controllers\pageGalleryController::class, 'index'])->name('gallery.index');
Route::post('admin/dashboard/gallery/store', [App\Http\Controllers\pageGalleryController::class, 'store'])->name('gallery.store');
Route::get('admin/dashboard/gallery/delete/{id}', [App\Http\Controllers\pageGalleryController::class, 'destroy'])->name('gallery.destroy');
Route::get('admin/dashboard/gallery/edit/{id}', [App\Http\Controllers\pageGalleryController::class, 'edit'])->name('gallery.edit');
Route::post('admin/dashboard/gallery/update/{id}', [App\Http\Controllers\pageGalleryController::class, 'update'])->name('gallery.update');

//Gallery
Route::get('admin/dashboard/mainGallery', [App\Http\Controllers\GalleryController::class, 'index'])->name('gallery1.index');
Route::post('admin/dashboard/mainGallery/store', [App\Http\Controllers\GalleryController::class, 'store'])->name('gallery1.store');
Route::get('admin/dashboard/mainGallery/delete/{id}', [App\Http\Controllers\GalleryController::class, 'destroy'])->name('gallery1.destroy');
Route::get('admin/dashboard/mainGallery/edit/{id}', [App\Http\Controllers\GalleryController::class, 'edit'])->name('gallery1.edit');
Route::post('admin/dashboard/mainGallery/update/{id}', [App\Http\Controllers\GalleryController::class, 'update'])->name('gallery1.update');