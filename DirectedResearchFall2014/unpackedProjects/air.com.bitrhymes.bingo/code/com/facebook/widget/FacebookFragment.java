package com.facebook.widget;

import android.support.v4.app.*;
import com.facebook.internal.*;
import java.util.*;
import com.facebook.*;
import android.os.*;
import android.content.*;
import android.app.*;

class FacebookFragment extends Fragment
{
    private SessionTracker sessionTracker;
    
    private void openSession(final String applicationId, final List<String> permissions, final SessionLoginBehavior loginBehavior, final int requestCode, final SessionAuthorizationType other) {
        if (this.sessionTracker != null) {
            Session session = this.sessionTracker.getSession();
            if (session == null || session.getState().isClosed()) {
                final Session build = new Session.Builder((Context)this.getActivity()).setApplicationId(applicationId).build();
                Session.setActiveSession(build);
                session = build;
            }
            if (!session.isOpened()) {
                final Session.OpenRequest setRequestCode = new Session.OpenRequest(this).setPermissions(permissions).setLoginBehavior(loginBehavior).setRequestCode(requestCode);
                if (!SessionAuthorizationType.PUBLISH.equals(other)) {
                    session.openForRead(setRequestCode);
                    return;
                }
                session.openForPublish(setRequestCode);
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
    
    protected final List<String> getSessionPermissions() {
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
        this.sessionTracker = new SessionTracker((Context)this.getActivity(), new DefaultSessionStatusCallback((DefaultSessionStatusCallback)null));
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
    
    protected final void openSessionForPublish(final String s, final List<String> list) {
        this.openSessionForPublish(s, list, SessionLoginBehavior.SSO_WITH_FALLBACK, 64206);
    }
    
    protected final void openSessionForPublish(final String s, final List<String> list, final SessionLoginBehavior sessionLoginBehavior, final int n) {
        this.openSession(s, list, sessionLoginBehavior, n, SessionAuthorizationType.PUBLISH);
    }
    
    protected final void openSessionForRead(final String s, final List<String> list) {
        this.openSessionForRead(s, list, SessionLoginBehavior.SSO_WITH_FALLBACK, 64206);
    }
    
    protected final void openSessionForRead(final String s, final List<String> list, final SessionLoginBehavior sessionLoginBehavior, final int n) {
        this.openSession(s, list, sessionLoginBehavior, n, SessionAuthorizationType.READ);
    }
    
    public void setSession(final Session session) {
        if (this.sessionTracker != null) {
            this.sessionTracker.setSession(session);
        }
    }
    
    private class DefaultSessionStatusCallback implements StatusCallback
    {
        @Override
        public void call(final Session session, final SessionState sessionState, final Exception ex) {
            FacebookFragment.this.onSessionStateChange(sessionState, ex);
        }
    }
}
