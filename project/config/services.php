<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, SparkPost and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
    ],

    'ses' => [
        'key' => env('SES_KEY'),
        'secret' => env('SES_SECRET'),
        'region' => 'us-east-1',
    ],

    'sparkpost' => [
        'secret' => env('SPARKPOST_SECRET'),
    ],

    'stripe' => [
        'model' => App\User::class,
        'key' => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
    ],
    'facebook' => [ //change it to any provider
        'client_id' => '',
        'client_secret' => '',
        'redirect' => '',
    ],

    'google' => [ //change it to any provider
        'client_id' => '30168385440-slsdj55d953558fmptipi5k2bf7uai2d.apps.googleusercontent.com',
        'client_secret' => 'uIhDVVlhw9TtN8XM3_jEpPIZ',
        'redirect' => 'https://brnnda.com/auth/google/callback',
    ],
    'genius' => [
        'ocean' => 'https://geniusocean.com/verify/'
    ],
];
