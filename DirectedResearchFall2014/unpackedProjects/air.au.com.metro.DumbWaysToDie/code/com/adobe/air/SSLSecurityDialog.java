package com.adobe.air;

import java.util.concurrent.locks.*;
import android.net.http.*;
import com.adobe.air.utils.*;
import android.widget.*;
import android.content.*;
import android.app.*;
import android.content.res.*;
import android.view.*;

public class SSLSecurityDialog
{
    public static final String TAG;
    private static final String USER_ACTION_TRUST_ALWAYS = "always";
    private static final String USER_ACTION_TRUST_NONE = "none";
    private static final String USER_ACTION_TRUST_SESSION = "session";
    private Condition m_condition;
    private Lock m_lock;
    private String m_useraction;
    
    static {
        TAG = SSLSecurityDialog.class.toString();
    }
    
    public SSLSecurityDialog() {
        super();
        this.m_useraction = null;
        this.m_lock = new ReentrantLock();
        this.m_condition = this.m_lock.newCondition();
    }
    
    private void SetUserAction(final String useraction) {
        this.m_lock.lock();
        this.m_useraction = useraction;
        this.m_condition.signal();
        this.m_lock.unlock();
    }
    
    public void ShowSSLDialog(final String str, final byte[] certificate, final SslCertificate sslCertificate, final boolean b) {
        final AndroidActivityWrapper getAndroidActivityWrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
        Activity activity = getAndroidActivityWrapper.getActivity();
        if (activity == null) {
            activity = getAndroidActivityWrapper.WaitForNewActivity();
        }
        final AndroidAlertDialog androidAlertDialog = new AndroidAlertDialog((Context)activity);
        final AlertDialog$Builder getAlertDialogBuilder = androidAlertDialog.GetAlertDialogBuilder();
        final Context runtimeContext = getAndroidActivityWrapper.getRuntimeContext();
        final LayoutInflater from = LayoutInflater.from(runtimeContext);
        final Resources resources = runtimeContext.getResources();
        final View getLayoutViewFromRuntime = Utils.GetLayoutViewFromRuntime("ssl_certificate_warning", resources, from);
        if (getLayoutViewFromRuntime == null) {
            return;
        }
        final Resources resources2 = getLayoutViewFromRuntime.getResources();
        final TextView textView = (TextView)Utils.GetWidgetInViewByName("ServerName", resources2, getLayoutViewFromRuntime);
        textView.setText((CharSequence)((Object)textView.getText() + " " + str));
        Label_0411: {
            if (certificate == null) {
                break Label_0411;
            }
            Certificate certificate2 = new Certificate();
            certificate2.setCertificate(certificate);
            while (true) {
                ((TextView)Utils.GetWidgetInViewByName("CertificateDetails", resources2, getLayoutViewFromRuntime)).setText((CharSequence)String.format(Utils.GetResourceStringFromRuntime("IDA_CERTIFICATE_DETAILS", resources), certificate2.getIssuedToCommonName(), certificate2.getIssuedToOrganization(), certificate2.getIssuedToOrganizationalUnit(), certificate2.getIssuedByCommonName(), certificate2.getIssuedByOrganization(), certificate2.getIssuedByOrganizationalUnit(), certificate2.getIssuedOn(), certificate2.getExpiresOn()), TextView$BufferType.SPANNABLE);
                getAlertDialogBuilder.setView(getLayoutViewFromRuntime);
                if (b) {
                    getAlertDialogBuilder.setPositiveButton((CharSequence)Utils.GetResourceStringFromRuntime("IDA_CURL_INTERFACE_ALLSESS", resources), (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                        public void onClick(final DialogInterface dialogInterface, final int n) {
                            SSLSecurityDialog.this.SetUserAction("always");
                        }
                    });
                }
                getAlertDialogBuilder.setNeutralButton((CharSequence)Utils.GetResourceStringFromRuntime("IDA_CURL_INTERFACE_THISSESS", resources), (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                    public void onClick(final DialogInterface dialogInterface, final int n) {
                        SSLSecurityDialog.this.SetUserAction("session");
                    }
                });
                getAlertDialogBuilder.setNegativeButton((CharSequence)Utils.GetResourceStringFromRuntime("IDA_CURL_INTERFACE_NOSESS", resources), (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                    public void onClick(final DialogInterface dialogInterface, final int n) {
                        SSLSecurityDialog.this.SetUserAction("none");
                    }
                });
                getAlertDialogBuilder.setOnKeyListener((DialogInterface$OnKeyListener)new DialogInterface$OnKeyListener() {
                    public boolean onKey(final DialogInterface dialogInterface, final int n, final KeyEvent keyEvent) {
                        if (keyEvent.getKeyCode() == 4) {
                            SSLSecurityDialog.this.SetUserAction("none");
                        }
                        return false;
                    }
                });
                activity.runOnUiThread((Runnable)new Runnable() {
                    @Override
                    public void run() {
                        androidAlertDialog.show();
                    }
                });
                this.m_lock.lock();
                try {
                    if (this.m_useraction == null) {
                        this.m_condition.await();
                    }
                    return;
                    certificate2 = new Certificate(sslCertificate);
                    continue;
                }
                catch (InterruptedException ex) {}
                finally {
                    this.m_lock.unlock();
                }
                break;
            }
        }
    }
    
    public String getUserAction() {
        return this.m_useraction;
    }
    
    public String show(final String s, final SslCertificate sslCertificate) {
        this.ShowSSLDialog(s, null, sslCertificate, false);
        if (this.m_useraction != null) {
            return this.m_useraction;
        }
        return this.m_useraction;
    }
    
    public String show(final String s, final byte[] array) {
        this.ShowSSLDialog(s, array, null, false);
        if (this.m_useraction != null) {
            return this.m_useraction;
        }
        return this.m_useraction;
    }
}
