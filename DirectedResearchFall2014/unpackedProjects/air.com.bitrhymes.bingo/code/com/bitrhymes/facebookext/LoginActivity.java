package com.bitrhymes.facebookext;

import android.app.*;
import android.content.*;
import android.os.*;
import java.util.*;
import com.adobe.fre.*;
import android.view.*;
import android.util.*;
import java.security.*;
import android.content.pm.*;
import com.facebook.*;

public class LoginActivity extends Activity
{
    private boolean reauthorize;
    private Session.StatusCallback statusCallback;
    
    public LoginActivity() {
        super();
        this.statusCallback = new SessionStatusCallback((SessionStatusCallback)null);
        this.reauthorize = false;
    }
    
    protected void onActivityResult(final int n, final int n2, final Intent intent) {
        super.onActivityResult(n, n2, intent);
        Session.getActiveSession().onActivityResult(this, n, n2, intent);
    }
    
    public void onBackPressed() {
        this.onCancel();
    }
    
    public void onCancel() {
        FacebookExt.context.dispatchStatusEventAsync("fb_auth", "failed,");
        FacebookExtContext.session = null;
        this.finish();
    }
    
    protected void onCreate(final Bundle bundle) {
        FacebookExt.log("Login.onCreate");
        super.onCreate(bundle);
        final FREContext context = FacebookExt.context;
        if (context == null || FacebookExtContext.session == null) {
            this.finish();
            return;
        }
        this.requestWindowFeature(3);
        this.setContentView(context.getResourceId("layout.fb_main"));
        final Bundle extras = this.getIntent().getExtras();
        final ArrayList permissions = new ArrayList<String>(Arrays.asList(extras.getStringArray("permissions")));
        final String string = extras.getString("type");
        this.reauthorize = extras.getBoolean("reauthorize", false);
        FacebookExt.log("Login FacebookExtContext.session " + FacebookExtContext.session);
        FacebookExt.log("Login session.isClosed " + FacebookExtContext.session.isClosed() + ", state " + FacebookExtContext.session.getState());
        FacebookExt.log("Login session.isOpened : " + FacebookExtContext.session.isOpened());
        if (this.reauthorize) {
        Label_0373_Outer:
            while (true) {
                FacebookExt.log(" reauthorize : " + this.reauthorize);
                while (true) {
                Label_0410:
                    while (true) {
                        try {
                            if ("read".equals(string)) {
                                FacebookExtContext.session.requestNewReadPermissions(new Session.NewPermissionsRequest(this, new String[] { "email" }).setCallback(this.statusCallback));
                                return;
                            }
                            goto Label_0315;
                        }
                        catch (FacebookException obj) {
                            FacebookExt.log("Login FacebookException : " + obj);
                            if (obj != null) {
                                final String string2 = obj.toString();
                                FacebookExt.context.dispatchStatusEventAsync("fb_auth", "failed," + string2);
                                FacebookExtContext.session = null;
                                return;
                            }
                        }
                        catch (UnsupportedOperationException obj2) {
                            FacebookExt.log("Login UnsupportedOperationException : " + obj2);
                            if (obj2 != null) {
                                final String string3 = obj2.toString();
                                FacebookExt.context.dispatchStatusEventAsync("fb_auth", "failed," + string3);
                                FacebookExtContext.session = null;
                                return;
                            }
                            break Label_0410;
                        }
                        final String string2 = "null exception";
                        continue Label_0373_Outer;
                    }
                    final String string3 = "null exception";
                    continue;
                }
            }
        }
        else {
            if (FacebookExtContext.session.isOpened()) {
                FacebookExt.context.dispatchStatusEventAsync("fb_auth", "success," + FacebookExtContext.session.getAccessToken() + "," + FacebookExtContext.session.getExpirationDate().getTime());
                FacebookExt.log("Login else : ");
                this.finish();
                return;
            }
        Label_0741_Outer:
            while (true) {
                FacebookExt.log("Login session.isOpened : " + FacebookExtContext.session.isOpened());
                while (true) {
                Label_0810:
                    while (true) {
                        Label_0803: {
                            try {
                                FacebookExt.log("Login session.isOpened : try ");
                                if ("read".equals(string)) {
                                    FacebookExt.log("Login read : " + string);
                                    FacebookExtContext.session.openForRead(new Session.OpenRequest(this).setPermissions("email").setCallback(this.statusCallback));
                                    FacebookExt.log("Login FacebookExtContext.session : " + FacebookExtContext.session);
                                    FacebookExt.log("Login statusCallback : " + this.statusCallback);
                                    FacebookExt.log("Login read done: " + string);
                                    return;
                                }
                                goto Label_0650;
                            }
                            catch (FacebookException obj3) {
                                FacebookExt.log("Login FacebookException : " + obj3);
                                if (obj3 != null) {
                                    final String string4 = obj3.toString();
                                    FacebookExt.context.dispatchStatusEventAsync("fb_auth", "failed," + string4);
                                    FacebookExtContext.session = null;
                                    return;
                                }
                                break Label_0803;
                            }
                            catch (UnsupportedOperationException obj4) {
                                FacebookExt.log("Login UnsupportedOperationException : " + obj4);
                                if (obj4 != null) {
                                    final String string5 = obj4.toString();
                                    FacebookExt.context.dispatchStatusEventAsync("fb_auth", "failed," + string5);
                                    FacebookExtContext.session = null;
                                    return;
                                }
                                break Label_0810;
                            }
                            FacebookExt.log("Login session.isOpened else: ");
                            FacebookExtContext.session.openForPublish(new Session.OpenRequest(this).setPermissions((List<String>)permissions).setCallback(this.statusCallback));
                            return;
                        }
                        final String string4 = "null exception";
                        continue Label_0741_Outer;
                    }
                    final String string5 = "null exception";
                    continue;
                }
            }
        }
    }
    
    public boolean onKeyUp(final int n, final KeyEvent keyEvent) {
        if (n == 4) {
            this.onBackPressed();
            return true;
        }
        return super.onKeyUp(n, keyEvent);
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (FacebookExtContext.session != null) {
            Session.saveSession(FacebookExtContext.session, bundle);
        }
    }
    
    public void onStart() {
        super.onStart();
        if (FacebookExtContext.session != null) {
            FacebookExtContext.session.addCallback(this.statusCallback);
        }
    }
    
    public void onStop() {
        super.onStop();
        if (FacebookExtContext.session != null) {
            FacebookExtContext.session.removeCallback(this.statusCallback);
        }
    }
    
    public void printHashKey() {
        Block_0: {
            break Block_0;
        Label_0076:
            while (true) {
                int i;
                int length;
                do {
                    Label_0026: {
                        break Label_0026;
                        try {
                            final Signature[] signatures = this.getPackageManager().getPackageInfo("air.com.bitrhymes.slotsipad", 64).signatures;
                            length = signatures.length;
                            i = 0;
                            continue Label_0076;
                            final Signature signature = signatures[i];
                            final MessageDigest instance = MessageDigest.getInstance("SHA");
                            instance.update(signature.toByteArray());
                            Log.d("TEMPTAGHASH KEY:", Base64.encodeToString(instance.digest(), 0));
                            ++i;
                            continue Label_0076;
                        }
                        catch (NoSuchAlgorithmException ex) {
                            return;
                        }
                        catch (PackageManager$NameNotFoundException ex2) {
                            return;
                        }
                    }
                    continue Label_0076;
                } while (i < length);
                break;
            }
        }
    }
    
    private class SessionStatusCallback implements StatusCallback
    {
        @Override
        public void call(final Session session, final SessionState obj, final Exception ex) {
            FacebookExt.log("Login SessionStatusCallback, state = " + obj);
            FacebookExt.log("Login SessionStatusCallback, session = " + session);
            FacebookExt.log("Login SessionStatusCallback, exception = " + ex);
            FacebookExt.log("Login SessionStatusCallback, session.isClosed() = " + session.isClosed());
            FacebookExt.log("Login SessionStatusCallback, session.isOpened() = " + session.isOpened());
            final Boolean value = ex instanceof FacebookOperationCanceledException;
            FacebookExtContext.session = session;
            if (LoginActivity.this.reauthorize) {
                FacebookExt.log("Login SessionStatusCallback reauthorize cb : " + LoginActivity.this.reauthorize);
                if (obj.equals(SessionState.OPENED_TOKEN_UPDATED)) {
                    FacebookExt.context.dispatchStatusEventAsync("fb_auth", "success," + FacebookExtContext.session.getAccessToken() + "," + FacebookExtContext.session.getExpirationDate().getTime());
                    LoginActivity.this.finish();
                }
                else if (value) {
                    String string;
                    if (ex != null) {
                        string = ex.toString();
                    }
                    else {
                        string = "null exception";
                    }
                    FacebookExt.log("Login SessionStatusCallback isCancel : " + string);
                    FacebookExt.context.dispatchStatusEventAsync("fb_auth", "failed," + string);
                    FacebookExtContext.session = null;
                }
                else {
                    String string2;
                    if (ex != null) {
                        string2 = ex.toString();
                    }
                    else {
                        string2 = "null exception";
                    }
                    FacebookExt.log("Login SessionStatusCallback isCancel else: " + string2);
                    FacebookExt.context.dispatchStatusEventAsync("fb_auth", "failed," + string2);
                    FacebookExtContext.session = null;
                }
                LoginActivity.this.finish();
            }
            else if (session.isOpened()) {
                FacebookExt.log("Login SessionStatusCallback session.isOpened() : " + session.isOpened());
                FacebookExt.context.dispatchStatusEventAsync("fb_auth", "success," + FacebookExtContext.session.getAccessToken() + "," + FacebookExtContext.session.getExpirationDate().getTime());
                LoginActivity.this.finish();
            }
            else if (session.isClosed()) {
                FacebookExt.log("Login SessionStatusCallback FacebookException : " + ex);
                if (value) {
                    String string3;
                    if (ex != null) {
                        string3 = ex.toString();
                    }
                    else {
                        string3 = "null exception";
                    }
                    FacebookExt.log("Login SessionStatusCallback session.isClosed() : " + string3);
                    FacebookExt.context.dispatchStatusEventAsync("fb_auth", "failed," + string3);
                    FacebookExt.log(string3);
                    FacebookExtContext.session = null;
                }
                else {
                    String string4;
                    if (ex != null) {
                        string4 = ex.toString();
                    }
                    else {
                        string4 = "null exception";
                    }
                    FacebookExt.log("Login SessionStatusCallback session.isClosed() : " + string4);
                    FacebookExt.context.dispatchStatusEventAsync("fb_auth", "failed," + string4);
                    FacebookExt.log(string4);
                    FacebookExtContext.session = null;
                }
                LoginActivity.this.finish();
            }
            FacebookExt.log("Login SessionStatusCallback - ok");
        }
    }
}
