package com.google.analytics.tracking.android;

import org.apache.http.client.*;

interface HttpClientFactory
{
    HttpClient newInstance();
}
