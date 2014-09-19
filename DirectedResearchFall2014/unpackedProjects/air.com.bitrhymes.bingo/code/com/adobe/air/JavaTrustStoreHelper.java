package com.adobe.air;

import javax.net.ssl.*;
import java.security.*;
import java.security.cert.*;
import java.io.*;

public final class JavaTrustStoreHelper
{
    private static final String LOG_TAG = "JavaTrustStoreHelper";
    private static SystemKeyStoreManager mSystemKeyStoreMgr;
    
    static {
        JavaTrustStoreHelper.mSystemKeyStoreMgr = initSystemKeyStoreMgr();
    }
    
    public static void copyTimestamp(final String pathname, final String pathname2) {
        try {
            new File(pathname2).setLastModified(new File(pathname).lastModified());
        }
        catch (IllegalArgumentException ex) {}
        catch (SecurityException ex2) {}
    }
    
    private static int dumpAcceptedIssuersToFile(final X509TrustManager x509TrustManager, final RandomAccessFile randomAccessFile) throws CertificateEncodingException, IOException, SyncFailedException {
        final X509Certificate[] acceptedIssuers = x509TrustManager.getAcceptedIssuers();
        for (int i = 0; i < acceptedIssuers.length; ++i) {
            final byte[] encoded = acceptedIssuers[i].getEncoded();
            randomAccessFile.writeInt(encoded.length);
            randomAccessFile.write(encoded);
        }
        randomAccessFile.getFD().sync();
        return acceptedIssuers.length;
    }
    
    public static boolean enumerateRootCAs(final String s, final String pathname) {
        if (!isAirCertBundleStale(s)) {
            return false;
        }
        final X509TrustManager x509TrustManager = getX509TrustManager();
        if (x509TrustManager == null) {
            return false;
        }
        try {
            final File file = new File(pathname);
            final RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            randomAccessFile.setLength(0L);
            dumpAcceptedIssuersToFile(x509TrustManager, randomAccessFile);
            file.setLastModified(getTrustStoreTimestamp());
            randomAccessFile.close();
            return true;
        }
        catch (FileNotFoundException ex) {
            return false;
        }
        catch (IOException ex2) {
            return false;
        }
        catch (CertificateEncodingException ex3) {
            return false;
        }
        catch (IllegalArgumentException ex4) {
            return false;
        }
        catch (SecurityException ex5) {
            return false;
        }
    }
    
    private static long getTrustStoreTimestamp() {
        return JavaTrustStoreHelper.mSystemKeyStoreMgr.getTimestamp();
    }
    
    private static X509TrustManager getX509TrustManager() {
        final TrustManagerFactory x509TrustManagerFactory = getX509TrustManagerFactory();
        if (x509TrustManagerFactory != null) {
            final TrustManager[] trustManagers = x509TrustManagerFactory.getTrustManagers();
            for (int i = 0; i < trustManagers.length; ++i) {
                if (trustManagers[i] instanceof X509TrustManager) {
                    return (X509TrustManager)trustManagers[i];
                }
            }
        }
        return null;
    }
    
    private static TrustManagerFactory getX509TrustManagerFactory() {
        try {
            final TrustManagerFactory instance = TrustManagerFactory.getInstance("X509");
            instance.init(JavaTrustStoreHelper.mSystemKeyStoreMgr.getKeyStore());
            return instance;
        }
        catch (Exception ex) {
            return null;
        }
    }
    
    private static SystemKeyStoreManager initSystemKeyStoreMgr() {
        if (SystemKeyStoreManager_sysprop.isValid()) {
            return (SystemKeyStoreManager)new SystemKeyStoreManager_sysprop();
        }
        if (SystemKeyStoreManager_files.isValid()) {
            return (SystemKeyStoreManager)new SystemKeyStoreManager_files();
        }
        return (SystemKeyStoreManager)new SystemKeyStoreManager_stub();
    }
    
    private static boolean isAirCertBundleStale(final String pathname) {
        final File file = new File(pathname);
        return !file.exists() || JavaTrustStoreHelper.mSystemKeyStoreMgr.getTimestamp() > file.lastModified();
    }
    
    private interface SystemKeyStoreManager
    {
        KeyStore getKeyStore();
        
        long getTimestamp();
    }
    
    private static class SystemKeyStoreManager_files implements SystemKeyStoreManager
    {
        private static final String kDirectoryPath = "/system/etc/security/cacerts";
        private int mNumFilesWhenCreated;
        
        private SystemKeyStoreManager_files() {
            super();
            this.mNumFilesWhenCreated = -1;
        }
        
        private static String[] getFileListing() {
            return new File("/system/etc/security/cacerts").list();
        }
        
        public static boolean isValid() {
            return new File("/system/etc/security/cacerts").exists();
        }
        
        @Override
        public KeyStore getKeyStore() {
            KeyStore instance;
            try {
                instance = KeyStore.getInstance(KeyStore.getDefaultType());
                instance.load(null);
                final CertificateFactory instance2 = CertificateFactory.getInstance("X.509");
                final String[] fileListing = getFileListing();
                this.mNumFilesWhenCreated = fileListing.length;
                for (int i = 0; i < fileListing.length; ++i) {
                    instance.setCertificateEntry(String.valueOf(i), instance2.generateCertificate(new FileInputStream(new File("/system/etc/security/cacerts/" + fileListing[i]))));
                }
            }
            catch (Exception ex) {
                this.mNumFilesWhenCreated = -1;
                instance = null;
            }
            return instance;
        }
        
        @Override
        public long getTimestamp() {
            final String[] fileListing = getFileListing();
            if (this.mNumFilesWhenCreated != -1 && fileListing.length != this.mNumFilesWhenCreated) {
                return Long.MAX_VALUE;
            }
            long max = 0L;
            for (int i = 0; i < fileListing.length; ++i) {
                max = Math.max(new File("/system/etc/security/cacerts/" + fileListing[i]).lastModified(), max);
            }
            return max;
        }
    }
    
    private static class SystemKeyStoreManager_stub implements SystemKeyStoreManager
    {
        @Override
        public KeyStore getKeyStore() {
            return null;
        }
        
        @Override
        public long getTimestamp() {
            return 0L;
        }
    }
    
    private static class SystemKeyStoreManager_sysprop implements SystemKeyStoreManager
    {
        private static final String kTheProp = "javax.net.ssl.trustStore";
        
        public static boolean isValid() {
            return System.getProperty("javax.net.ssl.trustStore") != null;
        }
        
        @Override
        public KeyStore getKeyStore() {
            try {
                final KeyStore instance = KeyStore.getInstance(KeyStore.getDefaultType());
                final String property = System.getProperty("javax.net.ssl.trustStore");
                if (property == null) {
                    return null;
                }
                final File file = new File(property);
                if (file == null) {
                    return null;
                }
                instance.load(new FileInputStream(file), null);
                return instance;
            }
            catch (Exception ex) {
                return null;
            }
        }
        
        @Override
        public long getTimestamp() {
            return new File(System.getProperty("javax.net.ssl.trustStore")).lastModified();
        }
    }
}
