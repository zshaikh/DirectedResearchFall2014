package c.m.x.a.iab;

import android.app.*;
import org.json.*;

public class x
{
    public Activity m;
    z n;
    
    public x(final Activity m, final z n) {
        super();
        this.m = m;
        this.n = n;
    }
    
    public final void a(final String s, final String s2) {
        this.n.a(s, s2);
    }
    
    public final void a(final String s, final String s2, final int n) {
        final JSONObject jsonObject = new JSONObject();
        while (true) {
            try {
                jsonObject.put("errorId", n);
                jsonObject.put("message", (Object)s2);
                final String string = jsonObject.toString();
                this.a(s, string);
            }
            catch (JSONException ex) {
                ex.printStackTrace();
                final String string = "{'errorId':-1000,'message':'parse failed'}";
                continue;
            }
            break;
        }
    }
}
