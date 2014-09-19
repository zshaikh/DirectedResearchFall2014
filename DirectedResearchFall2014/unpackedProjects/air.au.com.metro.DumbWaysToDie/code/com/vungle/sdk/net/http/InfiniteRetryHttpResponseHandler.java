package com.vungle.sdk.net.http;

abstract class InfiniteRetryHttpResponseHandler extends MaxRetryAgeHttpResponseHandler
{
    InfiniteRetryHttpResponseHandler() {
        super();
        super.c = 0L;
        super.a = 0;
        super.b = 0;
    }
}
