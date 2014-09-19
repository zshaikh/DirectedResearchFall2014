package com.applovin.impl.sdk;

import android.util.*;
import org.json.*;

class ay extends an
{
    ay(final AppLovinSdkImpl appLovinSdkImpl) {
        super("UploadAppIcon", appLovinSdkImpl);
    }
    
    private String a(final byte[] array) {
        return new String(Base64.encode(array, 0));
    }
    
    protected void b() {
    }
    
    protected void c() {
    }
    
    @Override
    public void run() {
        final byte[] e = this.f().e();
        if (e == null) {
            return;
        }
        try {
            final JSONObject jsonObject = new JSONObject();
            jsonObject.put("icon", (Object)this.a(e));
            jsonObject.put("icon_type", (Object)"image/jpeg");
            jsonObject.put("package_name", (Object)this.e.getApplicationContext().getPackageName());
            final StringBuffer sb = new StringBuffer("app");
            sb.append('/');
            sb.append((String)this.e.a(v.e));
            this.e.getConnectionManager().a(m.a(sb.toString(), this.e), jsonObject, new az(this));
        }
        catch (JSONException ex) {
            this.f.e(this.d, "Unable to create icon JSON request", (Throwable)ex);
        }
    }
}
