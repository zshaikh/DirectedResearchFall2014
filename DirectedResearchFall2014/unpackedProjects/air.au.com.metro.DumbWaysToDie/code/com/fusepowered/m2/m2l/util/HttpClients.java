package com.fusepowered.m2.m2l.util;

import org.apache.http.client.*;

public class HttpClients
{
    public static void safeShutdown(final HttpClient httpClient) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                if (httpClient != null && httpClient.getConnectionManager() != null) {
                    httpClient.getConnectionManager().shutdown();
                }
            }
        }).start();
    }
}
