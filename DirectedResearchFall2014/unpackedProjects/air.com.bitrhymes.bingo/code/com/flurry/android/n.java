package com.flurry.android;

import javax.net.ssl.*;
import java.security.cert.*;

final class n implements X509TrustManager
{
    @Override
    public final void checkClientTrusted(final X509Certificate[] array, final String s) throws CertificateException {
    }
    
    @Override
    public final void checkServerTrusted(final X509Certificate[] array, final String s) throws CertificateException {
    }
    
    @Override
    public final X509Certificate[] getAcceptedIssuers() {
        return null;
    }
}
