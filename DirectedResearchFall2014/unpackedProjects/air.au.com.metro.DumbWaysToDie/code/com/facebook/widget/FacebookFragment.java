package com.facebook.widget;

import c.m.x.a.gv.*;
import com.facebook.internal.*;
import java.util.*;
import android.os.*;
import com.facebook.*;
import android.content.*;
import android.app.*;

class FacebookFragment extends e
{
    private SessionTracker sessionTracker;
    
    private void openSession(final String applicationId, final List permissions, final SessionLoginBehavior loginBehavior, final int requestCode, final SessionAuthorizationType other) {
        if (this.sessionTracker != null) {
            Session activeSession = this.sessionTracker.getSession();
            if (activeSession == null || activeSession.getState().isClosed()) {
                activeSession = new Session$Builder((Context)this.getActivity()).setApplicationId(applicationId).build();
                Session.setActiveSession(activeSession);
            }
            if (!activeSession.isOpened()) {
                final Session$OpenRequest setRequestCode = new Session$OpenRequest(this).setPermissions(permissions).setLoginBehavior(loginBehavior).setRequestCode(requestCode);
                if (!SessionAuthorizationType.PUBLISH.equals(other)) {
                    activeSession.openForRead(setRequestCode);
                    return;
                }
                activeSession.openForPublish(setRequestCode);
            }
        }
    }
    
    protected final void closeSession() {
        if (this.sessionTracker != null) {
            final Session openSession = this.sessionTracker.getOpenSession();
            if (openSession != null) {
                openSession.close();
            }
        }
    }
    
    protected final void closeSessionAndClearTokenInformation() {
        if (this.sessionTracker != null) {
            final Session openSession = this.sessionTracker.getOpenSession();
            if (openSession != null) {
                openSession.closeAndClearTokenInformation();
            }
        }
    }
    
    protected final String getAccessToken() {
        if (this.sessionTracker == null) {
            return null;
        }
        final Session openSession = this.sessionTracker.getOpenSession();
        if (openSession != null) {
            return openSession.getAccessToken();
        }
        return null;
    }
    
    protected final Date getExpirationDate() {
        if (this.sessionTracker == null) {
            return null;
        }
        final Session openSession = this.sessionTracker.getOpenSession();
        if (openSession != null) {
            return openSession.getExpirationDate();
        }
        return null;
    }
    
    protected final Session getSession() {
        if (this.sessionTracker != null) {
            return this.sessionTracker.getSession();
        }
        return null;
    }
    
    protected final List getSessionPermissions() {
        if (this.sessionTracker == null) {
            return null;
        }
        final Session session = this.sessionTracker.getSession();
        if (session != null) {
            return session.getPermissions();
        }
        return null;
    }
    
    protected final SessionState getSessionState() {
        if (this.sessionTracker == null) {
            return null;
        }
        final Session session = this.sessionTracker.getSession();
        if (session != null) {
            return session.getState();
        }
        return null;
    }
    
    protected final boolean isSessionOpen() {
        return this.sessionTracker != null && this.sessionTracker.getOpenSession() != null;
    }
    
    @Override
    public void onActivityCreated(final Bundle bundle) {
        super.onActivityCreated(bundle);
        this.sessionTracker = new SessionTracker((Context)this.getActivity(), new FacebookFragment$DefaultSessionStatusCallback(this, null));
    }
    
    @Override
    public void onActivityResult(final int n, final int n2, final Intent intent) {
        super.onActivityResult(n, n2, intent);
        this.sessionTracker.getSession().onActivityResult(this.getActivity(), n, n2, intent);
    }
    
    @Override
    public void onDestroy() {
        super.onDestroy();
        this.sessionTracker.stopTracking();
    }
    
    protected void onSessionStateChange(final SessionState sessionState, final Exception ex) {
    }
    
    protected final void openSession() {
        this.openSessionForRead(null, null);
    }
    
    protected final void openSessionForPublish(final String s, final List list) {
        this.openSessionForPublish(s, list, SessionLoginBehavior.SSO_WITH_FALLBACK, 64206);
    }
    
    protected final void openSessionForPublish(final String s, final List list, final SessionLoginBehavior sessionLoginBehavior, final int n) {
        this.openSession(s, list, sessionLoginBehavior, n, SessionAuthorizationType.PUBLISH);
    }
    
    protected final void openSessionForRead(final String s, final List list) {
        this.openSessionForRead(s, list, SessionLoginBehavior.SSO_WITH_FALLBACK, 64206);
    }
    
    protected final void openSessionForRead(final String s, final List list, final SessionLoginBehavior sessionLoginBehavior, final int n) {
        this.openSession(s, list, sessionLoginBehavior, n, SessionAuthorizationType.READ);
    }
    
    public void setSession(final Session session) {
        if (this.sessionTracker != null) {
            this.sessionTracker.setSession(session);
        }
    }
}
