<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

/* Model Bindings */
Route::model('post','App\Post');
Route::model('comment','App\Comment');
Route::get('auth/register', 'Auth\AuthController@getRegister');
/* Route Untuk User */
Route::get('/','BlogController@index');
Route::get('/post/{post}/show',['as' => 'post.show','uses' => 'BlogController@showPost']);
Route::post('/post/{post}/comment',['as' => 'post.newcom','uses' =>'BlogController@newComment']);
View::composer('blog.sidebar', function ($view) {
$view->recentPosts = App\Post::orderBy('id', 'desc')->take(6)->get();
$view->recentComments = App\Comment::orderBy('id', 'desc')->take(5)->get();
});

/* Route Untuk Otorisasi */
Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);

/* Route Untuk Administrator */
Route::group( [
    'middleware' => 'auth' ,
        ] , function() {
   
   get('/dashboard', function()
	{
		return view('blog.admin.home');
	}); 

	resource('dashboard/post', 'AdminPostController');
	resource('dashboard/comment', 'AdminCommentController');

} );




