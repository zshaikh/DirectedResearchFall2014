package com.facebook.widget;

import android.content.*;
import android.os.*;
import com.facebook.internal.*;
import com.facebook.*;

class WebDialog$BuilderBase
{
    private String action;
    private String applicationId;
    private Context context;
    private WebDialog$OnCompleteListener listener;
    private Bundle parameters;
    private Session session;
    private int theme;
    
    protected WebDialog$BuilderBase(final Context context, final Session session, final String s, final Bundle bundle) {
        super();
        this.theme = 16973840;
        Validate.notNull(session, "session");
        if (!session.isOpened()) {
            throw new FacebookException("Attempted to use a Session that was not open.");
        }
        this.session = session;
        this.finishInit(context, s, bundle);
    }
    
    protected WebDialog$BuilderBase(final Context context, final String applicationId, final String s, final Bundle bundle) {
        super();
        this.theme = 16973840;
        Validate.notNullOrEmpty(applicationId, "applicationId");
        this.applicationId = applicationId;
        this.finishInit(context, s, bundle);
    }
    
    private void finishInit(final Context context, final String action, final Bundle parameters) {
        this.context = context;
        this.action = action;
        if (parameters != null) {
            this.parameters = parameters;
            return;
        }
        this.parameters = new Bundle();
    }
    
    public WebDialog build() {
        if (this.session != null && this.session.isOpened()) {
            this.parameters.putString("app_id", this.session.getApplicationId());
            this.parameters.putString("access_token", this.session.getAccessToken());
        }
        else {
            this.parameters.putString("app_id", this.applicationId);
        }
        if (!this.parameters.containsKey("redirect_uri")) {
            this.parameters.putString("redirect_uri", "fbconnect://success");
        }
        return new WebDialog(this.context, this.action, this.parameters, this.theme, this.listener);
    }
    
    protected String getApplicationId() {
        return this.applicationId;
    }
    
    protected Context getContext() {
        return this.context;
    }
    
    protected WebDialog$OnCompleteListener getListener() {
        return this.listener;
    }
    
    protected Bundle getParameters() {
        return this.parameters;
    }
    
    protected int getTheme() {
        return this.theme;
    }
    
    public WebDialog$BuilderBase setOnCompleteListener(final WebDialog$OnCompleteListener listener) {
        this.listener = listener;
        return this;
    }
    
    public WebDialog$BuilderBase setTheme(final int theme) {
        this.theme = theme;
        return this;
    }
}
