package com.vungle.sdk.model;

import javax.inject.*;
import android.text.*;
import com.vungle.sdk.*;
import java.util.*;
import android.os.*;
import org.json.*;

@Singleton
public class VungleParser
{
    @Inject
    IVungleConstants a;
    @Inject
    VungleCache b;
    
    public final z a(final String s) {
        z z = null;
        while (true) {
            JSONObject jsonObject;
            int int1;
            int int2;
            IVungleConstants a;
            aa s2 = null;
            JSONObject jsonObject2 = null;
            JSONArray jsonArray;
            int length;
            aa.a[] array = null;
            JSONObject jsonObject3;
            aa.a a2;
            boolean b;
            int c;
            int c2;
            Label_0244_Outer:Label_0267_Outer:Label_0290_Outer:Label_0431_Outer:Label_0459_Outer:Label_0496_Outer:
            while (true) {
                Label_0798: {
                    Label_0727: {
                    Label_0712:
                        while (true) {
                        Label_0702:
                            while (true) {
                            Label_0692:
                                while (true) {
                                Label_0684:
                                    while (true) {
                                    Label_0674:
                                        while (true) {
                                        Label_0664:
                                            while (true) {
                                                try {
                                                    if (TextUtils.isEmpty((CharSequence)s)) {
                                                        break Label_0244_Outer;
                                                    }
                                                    z = new z();
                                                    jsonObject = new JSONObject(s);
                                                    if (!jsonObject.isNull(IVungleConstants.y)) {
                                                        int1 = jsonObject.getInt(IVungleConstants.y);
                                                        z.a = int1;
                                                        n.a((long)(int1 * 1000));
                                                        if (z.i == null && z.j == null) {
                                                            return null;
                                                        }
                                                        if (this.b != null) {
                                                            this.b.a(s);
                                                            return z;
                                                        }
                                                        break;
                                                    }
                                                    else {
                                                        z.l = jsonObject.getInt(IVungleConstants.v);
                                                        z.m = jsonObject.getInt(IVungleConstants.w);
                                                        z.k = jsonObject.getString(IVungleConstants.o);
                                                        z.f = jsonObject.getString(IVungleConstants.n);
                                                        z.d = jsonObject.getString(IVungleConstants.t);
                                                        if (!jsonObject.isNull(IVungleConstants.u)) {
                                                            z.e = jsonObject.getString(IVungleConstants.u);
                                                        }
                                                        z.h = jsonObject.getString(IVungleConstants.p).replace('|', '_');
                                                        if (!jsonObject.isNull(IVungleConstants.q)) {
                                                            z.b(jsonObject.getString(IVungleConstants.q));
                                                        }
                                                        else {
                                                            z.b(IVungleConstants.i);
                                                        }
                                                        if (!jsonObject.isNull(IVungleConstants.l)) {
                                                            z.b = jsonObject.getString(IVungleConstants.l);
                                                            if (jsonObject.isNull(IVungleConstants.m)) {
                                                                break Label_0664;
                                                            }
                                                            z.a(jsonObject.getString(IVungleConstants.m));
                                                            if (jsonObject.isNull(IVungleConstants.r)) {
                                                                break Label_0674;
                                                            }
                                                            z.c(jsonObject.getString(IVungleConstants.r));
                                                            if (!jsonObject.isNull(IVungleConstants.B)) {
                                                                z.n = jsonObject.getLong(IVungleConstants.B);
                                                            }
                                                            if (!jsonObject.isNull(IVungleConstants.z)) {
                                                                z.q = jsonObject.getInt(IVungleConstants.z);
                                                            }
                                                            if (!jsonObject.isNull(IVungleConstants.A)) {
                                                                z.p = jsonObject.getInt(IVungleConstants.A);
                                                            }
                                                            if (!jsonObject.isNull(IVungleConstants.x)) {
                                                                z.g = jsonObject.getString(IVungleConstants.x);
                                                            }
                                                            if (!jsonObject.isNull(IVungleConstants.s)) {
                                                                z.o = Long.parseLong(jsonObject.getString(IVungleConstants.s));
                                                            }
                                                            if (jsonObject.isNull(IVungleConstants.D)) {
                                                                break Label_0684;
                                                            }
                                                            z.a(jsonObject.getInt(IVungleConstants.D));
                                                            if (jsonObject.isNull(IVungleConstants.C)) {
                                                                break Label_0692;
                                                            }
                                                            z.a(1000L * jsonObject.getInt(IVungleConstants.C));
                                                            if (jsonObject.isNull(IVungleConstants.K)) {
                                                                break Label_0702;
                                                            }
                                                            int2 = jsonObject.getInt(IVungleConstants.K);
                                                            z.r = int2;
                                                            a = this.a;
                                                            IVungleConstants.a(int2);
                                                            if (jsonObject.isNull("tpat")) {
                                                                break Label_0798;
                                                            }
                                                            s2 = new aa();
                                                            jsonObject2 = jsonObject.getJSONObject("tpat");
                                                            if (!jsonObject2.isNull("play_percentage")) {
                                                                jsonArray = jsonObject2.getJSONArray("play_percentage");
                                                                length = jsonArray.length();
                                                                array = new aa.a[length];
                                                                for (int i = 0; i < length; ++i) {
                                                                    jsonObject3 = jsonArray.getJSONObject(i);
                                                                    a2 = new aa.a();
                                                                    if (!jsonObject3.isNull("checkpoint")) {
                                                                        a2.a = (float)jsonObject3.getDouble("checkpoint");
                                                                    }
                                                                    a2.b = v.a(jsonObject3, "urls");
                                                                    array[i] = a2;
                                                                }
                                                                break Label_0712;
                                                            }
                                                            break Label_0727;
                                                        }
                                                    }
                                                }
                                                catch (JSONException ex) {
                                                    r.a(IVungleConstants.b, (Throwable)ex);
                                                    return null;
                                                }
                                                z.b = null;
                                                continue Label_0267_Outer;
                                            }
                                            z.a(IVungleConstants.i);
                                            continue Label_0290_Outer;
                                        }
                                        z.c(IVungleConstants.i);
                                        continue Label_0431_Outer;
                                    }
                                    z.a(3);
                                    continue Label_0459_Outer;
                                }
                                z.a(30000L);
                                continue Label_0496_Outer;
                            }
                            z.r = IVungleConstants.L;
                            continue;
                        }
                        Arrays.sort(array, VungleParser.a.a);
                        s2.a = array;
                    }
                    s2.b = v.a(jsonObject2, "mute");
                    s2.c = v.a(jsonObject2, "unmute");
                    s2.d = v.a(jsonObject2, "video_close");
                    s2.f = v.a(jsonObject2, "postroll_click");
                    s2.e = v.a(jsonObject2, "postroll_view");
                    z.s = s2;
                }
                if (Build$VERSION.SDK_INT >= 9) {
                    b = true;
                }
                else {
                    b = false;
                }
                if (b && n.r) {
                    c = 10;
                }
                else {
                    if (z.q > z.p) {
                        if (b) {
                            c2 = 7;
                        }
                        else {
                            c2 = 1;
                        }
                        n.C = c2;
                        continue Label_0244_Outer;
                    }
                    if (b) {
                        c = 6;
                    }
                    else {
                        c = 0;
                    }
                }
                n.C = c;
                continue Label_0244_Outer;
            }
            z = null;
            break;
        }
        return z;
    }
    
    static final class a implements Comparator<aa.a>
    {
        static final a a;
        
        static {
            a = new a();
        }
    }
}
