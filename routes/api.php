<?php
/*
 * File name: api.php
 * Last modified: 2022.04.01 at 23:10:55
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2022
 */

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/






Route::post('signup_notification', 'API\AllNotificationController@signup_notification')->name('signup_notification');
Route::post('status_notification', 'API\AllNotificationController@status_notification')->name('status_notification');
Route::post('payment_by_employer', 'API\AllNotificationController@payment_by_employer')->name('payment_by_employer');
Route::post('payment_confirmed', 'API\AllNotificationController@payment_confirmed')->name('payment_confirmed');
Route::post('start_job', 'API\AllNotificationController@start_job')->name('start_job');
Route::post('complete_job', 'API\AllNotificationController@complete_job')->name('complete_job');
Route::post('approve_by_employer', 'API\AllNotificationController@approve_by_employer')->name('approve_by_employer');
Route::post('payment_by_h20', 'API\AllNotificationController@payment_by_h20')->name('payment_by_h20');
Route::post('payment_by_h20_w', 'API\AllNotificationController@payment_by_h20_w')->name('payment_by_h20_w');
Route::post('job_service_rejected', 'API\AllNotificationController@job_service_rejected')->name('job_service_rejected');
Route::post('notification_on_post', 'API\AllNotificationController@notification_on_post')->name('notification_on_post');
Route::post('js_accept_job', 'API\AllNotificationController@js_accept_job')->name('js_accept_job');
Route::post('payment_confirm_location', 'API\AllNotificationController@payment_confirm_location')->name('payment_confirm_location');
Route::post('js_report', 'API\AllNotificationController@js_report')->name('js_report');



Route::post('sms', 'API\AllNotificationController@sms')->name('sms');




Route::post('create_service_cat', 'API\CategoryAPIController@store')->name('create_service_cat');


Route::post('job_search', 'API\UserAPIController@job_search')->name('job_search');

Route::get('job_status', 'API\UserAPIController@job_status')->name('job_status');

Route::post('check_profile', 'API\UserAPIController@check_profile')->name('check_profile');



Route::get('delete_service_cat/{id}', 'API\CategoryAPIController@delete')->name('delete');

Route::get('edit_service_cat/{id}', 'API\CategoryAPIController@edit')->name('edit');


Route::get('user_detail/{id}', 'API\UserAPIController@user_detail')->name('user_detail');
Route::get('employer_detail/{id}', 'API\UserAPIController@employerDetail')->name('employer_detail');

Route::post('update_service_cat', 'API\CategoryAPIController@update')->name('update');


Route::prefix('provider')->group(function () {
    Route::post('login', 'API\EProvider\UserAPIController@login');
    Route::post('register', 'API\EProvider\UserAPIController@register');
    // Route::post('social_register', 'API\EProvider\UserAPIController@social_register');
    Route::post('send_reset_link_email', 'API\UserAPIController@sendResetLinkEmail');
    Route::get('user', 'API\EProvider\UserAPIController@user');
    Route::get('logout', 'API\EProvider\UserAPIController@logout');
    Route::get('settings', 'API\EProvider\UserAPIController@settings');
    Route::get('translations', 'API\TranslationAPIController@translations');
    Route::get('supported_locales', 'API\TranslationAPIController@supportedLocales');
    // upload
    Route::post('doc_upload', 'API\UserAPIController@doc_upload');
    
    Route::get('document_exist/{provider_id}', 'API\UserAPIController@document_exist');
    
    Route::get('document_delete/{provider_id}', 'API\UserAPIController@document_delete');
    
       Route::get('provider_all/{id}', 'API\UserAPIController@provider_all');
    
    
});

Route::post('job_post', 'API\UserAPIController@job_post');
Route::post('my_job_post', 'API\UserAPIController@my_job_post');
Route::post('my_job_post_filter', 'API\UserAPIController@my_job_post_filter');
Route::post('job_post_data', 'API\UserAPIController@job_post_data');
Route::post('user_job_post_data', 'API\UserAPIController@user_job_post_data');
Route::post('update_apply_status', 'API\UserAPIController@update_apply_status');
Route::post('update_apply_status_cancle', 'API\UserAPIController@update_apply_status_cancle');
Route::post('status_wise_job', 'API\UserAPIController@status_wise_job');
Route::post('provider_status_wise_job', 'API\UserAPIController@provider_status_wise_job');
Route::post('provider_status_wise_job_v2', 'API\UserAPIController@provider_status_wise_job_v2');
Route::post('status_wise_job_application', 'API\UserAPIController@status_wise_job_application');
Route::post('get_provider_data', 'API\UserAPIController@get_provider_data');


Route::post('apply_job', 'API\UserAPIController@apply_job');
Route::post('update_apply_job', 'API\UserAPIController@update_apply_job');

Route::post('login', 'API\UserAPIController@login');
Route::post('register', 'API\UserAPIController@register');
Route::post('social_register', 'API\UserAPIController@social_register');
Route::post('send_reset_link_email', 'API\UserAPIController@sendResetLinkEmail');
Route::get('user', 'API\UserAPIController@user');
Route::get('logout', 'API\UserAPIController@logout');
Route::get('settings', 'API\UserAPIController@settings');
Route::get('translations', 'API\TranslationAPIController@translations');
Route::get('supported_locales', 'API\TranslationAPIController@supportedLocales');
Route::get('modules', 'API\ModuleAPIController@index');


Route::resource('e_provider_types', 'API\EProviderTypeAPIController');
Route::resource('e_providers', 'API\EProviderAPIController');
Route::resource('availability_hours', 'API\AvailabilityHourAPIController');
Route::resource('awards', 'API\AwardAPIController');
Route::resource('experiences', 'API\ExperienceAPIController');

Route::resource('faq_categories', 'API\FaqCategoryAPIController');
Route::resource('faqs', 'API\FaqAPIController');
Route::resource('custom_pages', 'API\CustomPageAPIController');

Route::resource('categories', 'API\CategoryAPIController');





Route::resource('e_services', 'API\EServiceAPIController');
Route::post('verify_user', 'API\EServiceAPIController@verify_user');

Route::resource('galleries', 'API\GalleryAPIController');
Route::get('e_service_reviews/{id}', 'API\EServiceReviewAPIController@show')->name('e_service_reviews.show');
Route::get('e_service_reviews', 'API\EServiceReviewAPIController@index')->name('e_service_reviews.index');

Route::resource('currencies', 'API\CurrencyAPIController');
Route::resource('slides', 'API\SlideAPIController')->except([
    'show'
]);
Route::resource('booking_statuses', 'API\BookingStatusAPIController')->except([
    'show'
]);
Route::resource('option_groups', 'API\OptionGroupAPIController');
Route::resource('options', 'API\OptionAPIController');

Route::post('save_bank_detail', 'API\UserAPIController@bankAdd');
Route::post('set_availability', 'API\UserAPIController@availabilityAdd');
Route::post('get_bank_detail', 'API\UserAPIController@getBanks');
Route::post('get_availability', 'API\UserAPIController@getAvailability');
Route::post('save_payment_record', 'API\UserAPIController@paymentMethodAdd');
Route::post('send_otp_to_start_job', 'API\UserAPIController@sendOtpForJob');
Route::post('add_hopital_detail', 'API\UserAPIController@hospitalAdd');
Route::post('hospital_detail', 'API\UserAPIController@hospitalList');
Route::post('feedback_to_js', 'API\UserAPIController@feedbackToJobSiker');
Route::post('verify_document', 'API\UserAPIController@verifyDocument');
Route::post('document_feedback_to_js', 'API\UserAPIController@documentFeedbackToJobSiker');
Route::post('feedback_to_h2o', 'API\UserAPIController@feedbackToH2O');
Route::post('feedback_to_employer', 'API\UserAPIController@providerFeedback');

Route::middleware('auth:api')->group(function () {
    Route::group(['middleware' => ['role:provider']], function () {
        Route::prefix('provider')->group(function () {
            Route::post('users/{user}', 'API\UserAPIController@update');
            Route::get('dashboard', 'API\DashboardAPIController@provider');
            Route::get('e_providers', 'API\EProvider\EProviderAPIController@index')->name('provider.e_providers.index');
            Route::get('e_providers/{id}', 'API\EProvider\EProviderAPIController@show')->name('provider.e_providers.show');
            Route::resource('notifications', 'API\NotificationAPIController');
            Route::get('e_service_reviews', 'API\EServiceReviewAPIController@index')->name('provider.e_service_reviews.index');
            Route::get('e_services', 'API\EServiceAPIController@index')->name('e_services.index');
            Route::put('payments/{id}', 'API\PaymentAPIController@update')->name('payments.update');
        });
    });
    Route::post('uploads/store', 'API\UploadAPIController@store');
    Route::post('uploads/clear', 'API\UploadAPIController@clear');
    Route::post('users/{user}', 'API\UserAPIController@update');
    

    Route::get('payments/byMonth', 'API\PaymentAPIController@byMonth')->name('payments.byMonth');
    Route::post('payments/wallets/{id}', 'API\PaymentAPIController@wallets')->name('payments.wallets');
    Route::post('payments/cash', 'API\PaymentAPIController@cash')->name('payments.cash');
    Route::resource('payment_methods', 'API\PaymentMethodAPIController')->only([
        'index'
    ]);
    Route::post('e_service_reviews', 'API\EServiceReviewAPIController@store')->name('e_service_reviews.store');


    Route::resource('favorites', 'API\FavoriteAPIController');
    Route::resource('addresses', 'API\AddressAPIController');

    Route::get('notifications/count', 'API\NotificationAPIController@count');
    Route::resource('notifications', 'API\NotificationAPIController');
    Route::resource('bookings', 'API\BookingAPIController');

    Route::resource('earnings', 'API\EarningAPIController');

    Route::resource('e_provider_payouts', 'API\EProviderPayoutAPIController');

    Route::resource('coupons', 'API\CouponAPIController')->except([
        'show'
    ]);
    Route::resource('wallets', 'API\WalletAPIController')->except([
        'show', 'create', 'edit'
    ]);
    Route::get('wallet_transactions', 'API\WalletTransactionAPIController@index')->name('wallet_transactions.index');
});



// New Created API Start Here ---------------------------

// New Created API Close Here ---------------------------