package com.milkmangames.extensions.android.goviral;

import android.util.*;
import android.annotation.*;
import android.app.*;
import c.m.x.a.gv.*;
import android.text.*;
import android.net.*;
import com.facebook.widget.*;
import android.os.*;
import android.provider.*;
import com.facebook.*;
import android.content.*;
import android.content.pm.*;
import org.json.*;
import com.adobe.fre.*;
import java.util.*;

final class i implements Session$StatusCallback
{
    final /* synthetic */ b a;
    
    i(final b a) {
        this.a = a;
        super();
    }
    
    @Override
    public final void call(final Session session, final SessionState sessionState, final Exception ex) {
        Log.d("[GVExtension]", "Auth complete, state:" + sessionState.toString());
        Log.d("[GVExtension]", "perms:" + session.getPermissions().toString());
        int n = -1;
        String s = "";
        String str = "";
    Label_0245:
        while (true) {
            int errorCode = 0;
            int n5 = 0;
        Label_0438_Outer:
            while (true) {
                FacebookServiceException ex2 = null;
                Label_0172: {
                    while (true) {
                        Label_0312: {
                            if (ex == null) {
                                final int i = n;
                                final int j = 9001;
                                final String str2 = s;
                                final int k = 0;
                                break Label_0312;
                            }
                            if (b.e) {
                                Log.d("[GVExtension]", "Exception on request:" + ex);
                            }
                            final String localizedMessage = ex.getLocalizedMessage();
                            final boolean b = ex instanceof FacebookServiceException;
                            ex2 = null;
                            if (b) {
                                ex2 = (FacebookServiceException)ex;
                            }
                            if (ex2 == null) {
                                final int n2 = 9001;
                                final int n3 = n;
                                final int n4 = 0;
                                break Label_0245;
                            }
                            errorCode = ex2.getRequestError().getErrorCode();
                            final FacebookRequestError$Category category = ex2.getRequestError().getCategory();
                            if (category == FacebookRequestError$Category.AUTHENTICATION_REOPEN_SESSION) {
                                n = 2;
                                break Label_0312;
                            }
                            Label_0353: {
                                break Label_0353;
                                while (true) {
                                    final int userActionMessageId = ex2.getRequestError().getUserActionMessageId();
                                    int i = 0;
                                    int j = 0;
                                    String str2 = null;
                                    int k = 0;
                                    Label_0498: {
                                        Label_0472: {
                                            Label_0878: {
                                                Label_0584: {
                                                    try {
                                                        final String string = this.a.b.getString(userActionMessageId);
                                                        Log.d("[GVExtension]", "User message:" + string);
                                                        final int n3 = n;
                                                        final int n4 = 1;
                                                        s = string;
                                                        final int n2 = errorCode;
                                                        Log.d("[GVExtension]", "Exception at login:" + ex);
                                                        Log.d("[GVExtension]", "Exception detail:" + ex.getLocalizedMessage());
                                                        i = n3;
                                                        str2 = s;
                                                        k = n4;
                                                        j = n2;
                                                        str = localizedMessage;
                                                        switch (com.milkmangames.extensions.android.goviral.j.a[sessionState.ordinal()]) {
                                                            default: {
                                                                return;
                                                            }
                                                            case 1: {
                                                                break Label_0472;
                                                            }
                                                            case 2: {
                                                                break Label_0498;
                                                            }
                                                            case 3: {
                                                                break Label_0584;
                                                            }
                                                            case 4: {
                                                                break Label_0878;
                                                            }
                                                        }
                                                        // iftrue(Label_0367:, category != FacebookRequestError$Category.AUTHENTICATION_RETRY)
                                                        // iftrue(Label_0410:, category != FacebookRequestError$Category.PERMISSION)
                                                        // iftrue(Label_0396:, category != FacebookRequestError$Category.OTHER)
                                                        // iftrue(Label_0424:, category != FacebookRequestError$Category.SERVER)
                                                        // iftrue(Label_0158:, category != FacebookRequestError$Category.THROTTLING)
                                                        while (true) {
                                                        Block_21:
                                                            while (true) {
                                                                n = 5;
                                                                break;
                                                                break Block_21;
                                                                n5 = 0;
                                                                break Label_0172;
                                                                n = -2;
                                                                break;
                                                            Label_0396:
                                                                while (true) {
                                                                    Block_24: {
                                                                        break Block_24;
                                                                        Label_0382: {
                                                                            n = -1;
                                                                        }
                                                                        break;
                                                                        n = 4;
                                                                        break;
                                                                    }
                                                                    n = 3;
                                                                    break;
                                                                    Label_0410: {
                                                                        continue;
                                                                    }
                                                                }
                                                                Label_0424:
                                                                continue Label_0438_Outer;
                                                            }
                                                            n = 1;
                                                            break;
                                                            Label_0367: {
                                                                continue;
                                                            }
                                                        }
                                                    }
                                                    // iftrue(Label_0382:, category != FacebookRequestError$Category.BAD_REQUEST)
                                                    catch (Exception ex3) {
                                                        Log.d("[GVExtension]", "Could not locate userMessage resource.");
                                                        final int n3 = n;
                                                        final int n4 = 1;
                                                        s = "";
                                                        final int n2 = errorCode;
                                                        continue Label_0245;
                                                    }
                                                    break Label_0472;
                                                }
                                                if (ex == null) {
                                                    this.a.dispatchStatusEventAsync("5", "");
                                                    return;
                                                }
                                                if (this.a.i != null) {
                                                    Log.d("[GVExtension]", "Pending async task has failed.");
                                                    this.a.b(2, "Could not get write permissions", this.a.l);
                                                    this.a.i = null;
                                                }
                                                if (this.a.k != null) {
                                                    Log.d("[GVExtension]", "Requested new publish permissions failed.");
                                                    this.a.dispatchStatusEventAsync("303", "{\"permissions\":\"" + this.a.k.concat(",") + "\",\"gvShouldNotify\":" + k + ",\"gvCategory\":" + i + ",\"gvErrCode\":" + j + ",\"gvErr\":\"" + str + "\",\"gvUserMessage\":\"" + str2 + "\"}");
                                                    this.a.k = null;
                                                }
                                                if (this.a.j != null) {
                                                    Log.d("[GVExtension]", "Requested new read permissions failed.");
                                                    this.a.dispatchStatusEventAsync("301", "{\"permissions\":\"" + this.a.j.concat(",") + "\",\"gvShouldNotify\":" + k + ",\"gvCategory\":" + i + ",\"gvErrCode\":" + j + ",\"gvErr\":\"" + str + "\",\"gvUserMessage\":\"" + str2 + "\"}");
                                                    this.a.j = null;
                                                    return;
                                                }
                                                return;
                                            }
                                            if (ex == null) {
                                                if (this.a.i != null) {
                                                    Log.d("[GVExtension]", "Running pending publish task on token update.");
                                                    this.a.i.execute((Object[])new Void[0]);
                                                    this.a.i = null;
                                                }
                                                if (this.a.j != null) {
                                                    Log.d("[GVExtension]", "Got new read permissions.");
                                                    this.a.dispatchStatusEventAsync("300", this.a.j.concat(","));
                                                    this.a.j = null;
                                                }
                                                if (this.a.k != null) {
                                                    Log.d("[GVExtension]", "Got new publish permissions.");
                                                    this.a.dispatchStatusEventAsync("302", this.a.k.concat(","));
                                                    this.a.k = null;
                                                }
                                                return;
                                            }
                                            else {
                                                if (this.a.i != null) {
                                                    Log.d("[GVExtension]", "Pending async task has failed.");
                                                    this.a.b(2, "Could not get write permissions", this.a.l);
                                                    this.a.i = null;
                                                }
                                                if (this.a.k != null) {
                                                    Log.d("[GVExtension]", "Requested new publish permissions failed.");
                                                    this.a.dispatchStatusEventAsync("303", "{\"permissions\":\"" + this.a.k.concat(",") + "\",\"gvShouldNotify\":" + k + ",\"gvCategory\":" + i + ",\"gvErrCode\":" + j + ",\"gvErr\":\"" + str + "\",\"gvUserMessage\":\"" + str2 + "\"}");
                                                    this.a.k = null;
                                                }
                                                if (this.a.j != null) {
                                                    Log.d("[GVExtension]", "Requested new read permissions failed.");
                                                    this.a.dispatchStatusEventAsync("301", "{\"permissions\":\"" + this.a.j.concat(",") + "\",\"gvShouldNotify\":" + k + ",\"gvCategory\":" + i + ",\"gvErrCode\":" + j + ",\"gvErr\":\"" + str + "\",\"gvUserMessage\":\"" + str2 + "\"}");
                                                    this.a.j = null;
                                                }
                                                return;
                                            }
                                        }
                                        Log.d("[GVExtension]", "Closed session- not 'failed'");
                                        Session.getActiveSession().closeAndClearTokenInformation();
                                        this.a.dispatchStatusEventAsync("6", "");
                                        return;
                                    }
                                    Log.d("[GVExtension]", "Closed session, clearing token (failed)");
                                    Session.getActiveSession().closeAndClearTokenInformation();
                                    this.a.dispatchStatusEventAsync("8", "{\"gvShouldNotify\":" + k + ",\"gvCategory\":" + i + ",\"gvErrCode\":" + j + ",\"gvErr\":\"" + str + "\",\"gvUserMessage\":\"" + str2 + "\"}");
                                    return;
                                }
                            }
                        }
                        if (!ex2.getRequestError().shouldNotifyUser()) {
                            continue;
                        }
                        break;
                    }
                    n5 = 1;
                }
                if (ex2.getRequestError().shouldNotifyUser()) {
                    continue Label_0438_Outer;
                }
                break;
            }
            final int n2 = errorCode;
            final int n3 = n;
            final int n4 = n5;
            continue Label_0245;
        }
    }
}
