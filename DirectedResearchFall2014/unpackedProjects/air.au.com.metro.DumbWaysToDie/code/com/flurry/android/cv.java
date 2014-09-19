package com.flurry.android;

import org.apache.http.conn.ssl.*;
import javax.net.ssl.*;
import java.security.*;
import java.io.*;
import java.net.*;

final class cv extends SSLSocketFactory
{
    private SSLContext eV;
    
    public cv(final KeyStore keyStore) throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException {
        super(keyStore);
        (this.eV = SSLContext.getInstance("TLS")).init(null, new TrustManager[] { new n() }, null);
    }
    
    public final Socket createSocket() throws IOException {
        return this.eV.getSocketFactory().createSocket();
    }
    
    public final Socket createSocket(final Socket socket, final String s, final int n, final boolean b) throws IOException, UnknownHostException {
        return this.eV.getSocketFactory().createSocket(socket, s, n, b);
    }
}
