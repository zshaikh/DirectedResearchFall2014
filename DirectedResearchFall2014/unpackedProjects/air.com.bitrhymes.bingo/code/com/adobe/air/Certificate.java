package com.adobe.air;

import android.net.http.*;
import java.security.cert.*;
import java.io.*;

public class Certificate
{
    private final String TAG;
    private SslCertificate m_certificate;
    private CertificateFactory m_factory;
    private SslCertificate$DName m_issuedBy;
    private SslCertificate$DName m_issuedTo;
    
    public Certificate() {
        super();
        this.TAG = "AIRCertificateWarningDialog";
        try {
            this.m_factory = CertificateFactory.getInstance("X.509");
        }
        catch (Exception ex) {}
    }
    
    public Certificate(final SslCertificate certificate) {
        super();
        this.TAG = "AIRCertificateWarningDialog";
        try {
            this.m_certificate = certificate;
            this.m_issuedBy = this.m_certificate.getIssuedBy();
            this.m_issuedTo = this.m_certificate.getIssuedTo();
        }
        catch (Exception ex) {}
    }
    
    public String getExpiresOn() {
        return this.m_certificate.getValidNotAfter();
    }
    
    public String getIssuedByCommonName() {
        return this.m_issuedBy.getCName();
    }
    
    public String getIssuedByOrganization() {
        return this.m_issuedBy.getOName();
    }
    
    public String getIssuedByOrganizationalUnit() {
        return this.m_issuedBy.getUName();
    }
    
    public String getIssuedOn() {
        return this.m_certificate.getValidNotBefore();
    }
    
    public String getIssuedToCommonName() {
        return this.m_issuedTo.getCName();
    }
    
    public String getIssuedToOrganization() {
        return this.m_issuedTo.getOName();
    }
    
    public String getIssuedToOrganizationalUnit() {
        return this.m_issuedTo.getUName();
    }
    
    public Boolean setCertificate(final byte[] buf) {
        if (this.m_factory == null) {
            return false;
        }
        try {
            this.m_certificate = new SslCertificate((X509Certificate)this.m_factory.generateCertificate(new ByteArrayInputStream(buf)));
            this.m_issuedBy = this.m_certificate.getIssuedBy();
            this.m_issuedTo = this.m_certificate.getIssuedTo();
            return true;
        }
        catch (Exception ex) {
            return false;
        }
    }
}
