package com.flurry.android;

import java.nio.*;
import java.util.*;
import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.io.*;
import java.util.regex.*;
import java.util.concurrent.*;
import org.apache.http.entity.*;
import org.apache.http.params.*;
import org.apache.http.client.methods.*;
import org.apache.http.client.*;
import org.apache.http.*;
import android.app.*;
import android.net.*;
import android.text.*;
import android.util.*;
import android.os.*;
import android.content.*;
import java.io.*;
import android.view.*;

public class FlurryAds implements bm
{
    private static List<Integer> cr;
    private static DecoderFactory cs;
    private static ag ct;
    static String d;
    private static FlurryAds dc;
    private String aS;
    private String aW;
    private Map<Integer, ByteBuffer> aX;
    private long bb;
    private long bc;
    private boolean cA;
    private volatile String cB;
    private volatile String cC;
    private volatile float cD;
    private volatile float cE;
    private volatile Map<String, String> cF;
    private cz cG;
    private AdUnit cH;
    private long cI;
    aj cJ;
    private Handler cK;
    dc cL;
    FlurryFreqCapManager cM;
    private ICustomAdNetworkHandler cN;
    private final k cO;
    private final bq cP;
    private FlurryAdListener cQ;
    private int cR;
    private volatile List<cz> cS;
    private volatile Map<String, cz> cT;
    private volatile List<cz> cU;
    private volatile List<String> cV;
    private volatile boolean cW;
    private Map<String, String> cX;
    private AdUnit cY;
    private bf cZ;
    private w cu;
    private boolean cv;
    private boolean cw;
    private File cx;
    private File cy;
    private String cz;
    private final Map<String, String> da;
    private final Set<String> db;
    private boolean dd;
    private FlurryUserIdProvider de;
    
    static {
        FlurryAds.d = "FlurryAgent";
    }
    
    FlurryAds() {
        super();
        this.cv = false;
        this.cw = false;
        this.cx = null;
        this.cy = null;
        this.cA = true;
        this.cB = null;
        this.cC = null;
        this.cM = FlurryFreqCapManager.an();
        this.cS = new CopyOnWriteArrayList<cz>();
        this.cT = new HashMap<String, cz>();
        this.cU = new ArrayList<cz>();
        this.cV = new ArrayList<String>();
        this.cW = false;
        final HashMap<String, String> m = new HashMap<String, String>();
        m.put("open", "directOpen");
        m.put("expand", "doExpand");
        m.put("collapse", "doCollapse");
        this.da = (Map<String, String>)Collections.unmodifiableMap((Map<?, ?>)m);
        final HashSet<String> s = new HashSet<String>();
        s.addAll((Collection<?>)Arrays.asList("closeAd", "processRedirect", "nextFrame", "nextAdUnit", "notifyUser"));
        this.db = (Set<String>)Collections.unmodifiableSet((Set<?>)s);
        final HandlerThread handlerThread = new HandlerThread("FlurryAdThread");
        handlerThread.start();
        this.cK = new Handler(handlerThread.getLooper());
        this.cJ = new aj();
        FlurryAds.cr = Arrays.asList(0, 1, 2, 3, 4, 5);
        FlurryAds.cs = new DecoderFactory();
        FlurryAds.ct = new ag(this);
        this.cu = new w(this);
        this.cL = new dc();
        this.aS = Build$VERSION.RELEASE;
        this.cz = Build.DEVICE;
        this.cF = new HashMap<String, String>();
        this.cO = new j();
        this.cP = new h();
    }
    
    private Map<CharSequence, CharSequence> N() {
        final HashMap<CharSequence, CharSequence> hashMap = new HashMap<CharSequence, CharSequence>();
        for (final Map.Entry<String, String> entry : this.cX.entrySet()) {
            String s = entry.getKey();
            final String s2 = entry.getValue();
            if (s == null) {
                s = "";
            }
            String s3;
            if (s2 == null) {
                s3 = "";
            }
            else {
                s3 = s2;
            }
            hashMap.put(s, s3);
        }
        return hashMap;
    }
    
    private void P() {
        synchronized (this) {
            this.cK.post((Runnable)new cq(this));
        }
    }
    
    private byte[] Q() {
        final List<AdReportedId> r = this.R();
        final List<cz> cs = this.cS;
        final SdkLogRequest build;
        final SpecificDatumWriter<SdkLogRequest> specificDatumWriter;
        final ByteArrayOutputStream byteArrayOutputStream;
        final BinaryEncoder directBinaryEncoder;
        synchronized (cs) {
            final List<SdkAdLog> a = FlurryAds.ct.a(this.cS);
            if (a.size() == 0) {
                return null;
            }
            // monitorexit(cs)
            build = SdkLogRequest.aa().setApiKey(FlurryAgent.w()).setAdReportedIds(r).setSdkAdLogs(a).setTestDevice(false).setAgentTimestamp(System.currentTimeMillis()).build();
            new StringBuilder().append("Got ad log request:").append(build.toString()).toString();
            specificDatumWriter = new SpecificDatumWriter<SdkLogRequest>(SdkLogRequest.class);
            byteArrayOutputStream = new ByteArrayOutputStream();
            directBinaryEncoder = EncoderFactory.get().directBinaryEncoder(byteArrayOutputStream, null);
            final SpecificDatumWriter<SdkLogRequest> specificDatumWriter2 = specificDatumWriter;
            final SdkLogRequest sdkLogRequest = build;
            final BinaryEncoder binaryEncoder = directBinaryEncoder;
            specificDatumWriter2.write(sdkLogRequest, binaryEncoder);
            final BinaryEncoder binaryEncoder2 = directBinaryEncoder;
            binaryEncoder2.flush();
            final ByteArrayOutputStream byteArrayOutputStream2 = byteArrayOutputStream;
            return byteArrayOutputStream2.toByteArray();
        }
        try {
            final SpecificDatumWriter<SdkLogRequest> specificDatumWriter2 = specificDatumWriter;
            final SdkLogRequest sdkLogRequest = build;
            final BinaryEncoder binaryEncoder = directBinaryEncoder;
            specificDatumWriter2.write(sdkLogRequest, binaryEncoder);
            final BinaryEncoder binaryEncoder2 = directBinaryEncoder;
            binaryEncoder2.flush();
            final ByteArrayOutputStream byteArrayOutputStream2 = byteArrayOutputStream;
            return byteArrayOutputStream2.toByteArray();
        }
        catch (IOException ex) {
            new StringBuilder().append("Error generating adlog request").append(ex.getMessage()).toString();
            return null;
        }
    }
    
    private List<AdReportedId> R() {
        final ArrayList<AdReportedId> list = new ArrayList<AdReportedId>();
        list.add(AdReportedId.aq().setId(ByteBuffer.wrap(this.aW.getBytes())).setType(0).build());
        for (final Map.Entry<Integer, ByteBuffer> entry : this.aX.entrySet()) {
            list.add(AdReportedId.aq().setId(entry.getValue()).setType(entry.getKey()).build());
        }
        return list;
    }
    
    private void T() {
        synchronized (this) {
            new cm(this).execute((Object[])new Void[0]);
        }
    }
    
    private void V() {
        synchronized (this) {
            new co(this).execute((Object[])new Void[0]);
        }
    }
    
    private bf a(final Context context, final AdUnit ch) {
        this.cY = ch;
        if (ch == null) {
            return null;
        }
        final List<AdFrame> adFrames = ch.getAdFrames();
        if (adFrames.size() > 0) {
            final AdFrame adFrame = adFrames.get(0);
            final int intValue = adFrame.getBinding();
            final String string = adFrame.getContent().toString();
            final String string2 = adFrame.getAdSpaceLayout().getFormat().toString();
            final String string3 = adFrame.getAdGuid().toString();
            cz a = this.cT.get(string3);
            if (a == null) {
                a = com.flurry.android.cx.a(this, string3);
            }
            final cz a2 = this.a(a, "requested", true, null);
            this.onEvent(new cw("filled", Collections.emptyMap(), context, ch, a2, 0), this, 1);
            final AdCreative b = com.flurry.android.cx.b(adFrame.getAdSpaceLayout());
            if (this.cY != null && this.cY == ch) {
                this.cZ = null;
                final ICustomAdNetworkHandler cn = this.cN;
                if (intValue == 4 && cn != null) {
                    final AdNetworkView adFromNetwork = cn.getAdFromNetwork(context, b, string);
                    if (adFromNetwork != null) {
                        adFromNetwork.K = this;
                        adFromNetwork.L = a2;
                        adFromNetwork.N = 0;
                        adFromNetwork.M = ch;
                        this.cZ = new at(adFromNetwork, ch);
                        return this.cZ;
                    }
                }
                if (string2.equals("takeover")) {
                    this.cG = a2;
                    this.cH = ch;
                    final ao a3 = this.cP.a(context, this, a2, ch);
                    if (a3 != null) {
                        this.cZ = new cb(a3, ch);
                    }
                }
                else {
                    final p b2 = this.cO.b(context, this, a2, ch);
                    if (b2 != null) {
                        this.cZ = new at(b2, ch);
                    }
                }
            }
            return this.cZ;
        }
        return null;
    }
    
    private bu a(final String s, final boolean b, final Map<String, String> map) {
        synchronized (this) {
            return new bu(s, b, this.M(), map);
        }
    }
    
    private static <A extends SpecificRecordBase> A a(final byte[] obj, final Class<A> clazz) {
        final BinaryDecoder binaryDecoder = FlurryAds.cs.binaryDecoder(new ByteArrayInputStream(obj), null);
        try {
            return new SpecificDatumReader<A>(clazz).read(null, binaryDecoder);
        }
        catch (ClassCastException ex) {
            new StringBuilder().append("ClassCastException in parseAvroBinary:").append(ex.getMessage()).toString();
            new StringBuilder().append("ClassCastException in parseAvroBinary: bytes = ").append(obj).append(" type = ").append(clazz.getSimpleName()).toString();
            return null;
        }
        catch (IOException ex2) {
            new StringBuilder().append("IOException in parseAvroBinary:").append(ex2.getMessage()).toString();
            new StringBuilder().append("IOException in parseAvroBinary: bytes = ").append(obj).append(" type = ").append(clazz.getSimpleName()).toString();
            return null;
        }
    }
    
    private String a(final cz cz, final AdUnit adUnit, final af af, final String input) {
        final Pattern compile = Pattern.compile(".*?(%\\{\\w+\\}).*?");
        Matcher matcher = compile.matcher(input);
        String s = input;
        while (matcher.matches()) {
            final String a = this.cu.a(cz, adUnit, s, matcher.group(1));
            final Matcher matcher2 = compile.matcher(a);
            s = a;
            matcher = matcher2;
        }
        return s;
    }
    
    private static List<af> a(final AdFrame adFrame, final cw cw) {
        final ArrayList<af> list = new ArrayList<af>();
        final List<Callback> callbacks = adFrame.getCallbacks();
        final String ew = cw.eW;
        for (final Callback callback : callbacks) {
            if (callback.getEvent().toString().equals(ew)) {
                for (final CharSequence charSequence : callback.getActions()) {
                    final HashMap<String, String> hashMap = new HashMap<String, String>();
                    String string = charSequence.toString();
                    final int index = string.indexOf(63);
                    if (index != -1) {
                        final String substring = string.substring(0, index);
                        String s = string.substring(index + 1);
                        if (s.contains("%{eventParams}")) {
                            s = s.replace("%{eventParams}", "");
                            hashMap.putAll((Map<?, ?>)cw.bv);
                        }
                        hashMap.putAll((Map<?, ?>)bd.t(s));
                        string = substring;
                    }
                    list.add(new af(string, hashMap, cw));
                }
            }
        }
        return list;
    }
    
    private void a(final Context context, final String s, final boolean b, final AdUnit adUnit) {
        this.cK.post((Runnable)new cu(this, s, adUnit, context, b));
    }
    
    private void a(final FlurryFreqCapManager flurryFreqCapManager, final DataOutputStream dataOutputStream) {
        synchronized (this) {
            for (final FlurryFreqCapInfo flurryFreqCapInfo : flurryFreqCapManager.ao()) {
                try {
                    dataOutputStream.writeShort(1);
                    flurryFreqCapInfo.a(dataOutputStream);
                }
                catch (IOException ex) {
                    com.flurry.android.db.c(FlurryAds.d, "unable to convert freqCap to byte[]: " + flurryFreqCapInfo.getIdHash());
                }
            }
        }
    }
    // monitorexit(this)
    
    private void a(final SdkLogResponse sdkLogResponse) {
        synchronized (this) {
            if (sdkLogResponse.getResult().toString().equals("success")) {
                this.cS.removeAll(this.cU);
            }
        }
    }
    
    private void a(final List<cz> list, final DataOutputStream dataOutputStream) {
        synchronized (this) {
            final int size = list.size();
            int i = 0;
            while (i < size) {
                try {
                    list.get(i).a(dataOutputStream);
                    ++i;
                }
                catch (IOException ex) {
                    com.flurry.android.db.c(FlurryAds.d, "unable to convert adLog to byte[]: " + list.get(i).at());
                }
            }
        }
    }
    // monitorexit(this)
    
    private boolean a(final Context context, final String s, final FlurryAdSize flurryAdSize, final long n) {
        if (this.i(s)) {
            return true;
        }
        final bw bw = new bw(this, context, s, flurryAdSize, null, false, false);
        bw.execute((Object[])new Void[0]);
        try {
            bw.get(n, TimeUnit.MILLISECONDS);
            if (this.i(s)) {
                return true;
            }
        }
        catch (InterruptedException ex) {
            ex.printStackTrace();
            return false;
        }
        catch (ExecutionException ex2) {
            ex2.printStackTrace();
            return false;
        }
        catch (TimeoutException ex3) {
            return false;
        }
        return false;
    }
    
    static boolean a(final Context context, final String s, final String s2) {
        final Intent intent = new Intent(s2);
        intent.setData(Uri.parse(s));
        return bd.a(context, intent);
    }
    
    private static byte[] a(final InputStream inputStream) throws IOException {
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        final byte[] array = new byte[128];
        while (true) {
            final int read = inputStream.read(array);
            if (read == -1) {
                break;
            }
            byteArrayOutputStream.write(array, 0, read);
        }
        return byteArrayOutputStream.toByteArray();
    }
    
    private byte[] a(final String s, final int viewWidth, final int viewHeight, final int screenWidth, final int screenHeight, final boolean b, final FlurryAdSize flurryAdSize) {
        final List<AdReportedId> r = this.R();
        final ArrayList<FrequencyCapInfo> frequencyCapInfos = new ArrayList<FrequencyCapInfo>();
        for (final FlurryFreqCapInfo flurryFreqCapInfo : this.cM.ao()) {
            frequencyCapInfos.add(FrequencyCapInfo.ak().setIdHash(flurryFreqCapInfo.getIdHash()).setExpirationTime(flurryFreqCapInfo.getExpirationTime()).setNewCap(flurryFreqCapInfo.getNewCap()).setPreviousCap(flurryFreqCapInfo.getPreviousCap()).setPreviousCapType(flurryFreqCapInfo.getPreviousCapType()).setServeTime(flurryFreqCapInfo.getServeTime()).setViews(flurryFreqCapInfo.getViews()).build());
        }
        final AdRequest build = AdRequest.ab().setApiKey(FlurryAgent.w()).setAdSpaceName("").setBindings(FlurryAds.cr).setAdReportedIds(r).setLocation(Location.as().setLat(this.cD).setLon(this.cE).build()).setTestDevice(this.cW).setAgentVersion(Integer.toString(FlurryAgent.getAgentVersion())).setSessionId(this.bb).setAdViewContainer(AdViewContainer.A().setScreenHeight(screenHeight).setScreenWidth(screenWidth).setViewHeight(viewHeight).setViewWidth(viewWidth).build()).setLocale(FlurryAgent.getLocale()).setTimezone(FlurryAgent.x()).setOsVersion(this.aS).setDevicePlatform(this.cz).setCanDoSKAppStore(false).setNetworkStatus(1).setFrequencyCapInfos(frequencyCapInfos).build();
        Label_0396: {
            if (!b) {
                break Label_0396;
            }
            build.a(Boolean.valueOf(b));
            while (true) {
                if (flurryAdSize != null) {
                    build.a(TestAds.al().setAdspacePlacement(flurryAdSize.getValue()).build());
                }
                if (this.cX != null) {
                    build.c(this.N());
                }
                new StringBuilder().append("Got ad request: ").append(build).toString();
                final SpecificDatumWriter<AdRequest> specificDatumWriter = new SpecificDatumWriter<AdRequest>(AdRequest.class);
                final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                final BinaryEncoder directBinaryEncoder = EncoderFactory.get().directBinaryEncoder(byteArrayOutputStream, null);
                try {
                    specificDatumWriter.write(build, directBinaryEncoder);
                    directBinaryEncoder.flush();
                    return byteArrayOutputStream.toByteArray();
                    build.b(s);
                    continue;
                }
                catch (IOException ex) {
                    ex.getMessage();
                    return new byte[0];
                }
                break;
            }
        }
    }
    
    private static int b(final byte[] input) {
        final CrcMessageDigest crcMessageDigest = new CrcMessageDigest();
        crcMessageDigest.update(input);
        return crcMessageDigest.getChecksum();
    }
    
    private boolean b(final byte[] array, final String s) {
        if (s == null) {
            return false;
        }
        Label_0106: {
            if (!s.equals("/v5/getAds.do")) {
                break Label_0106;
            }
            final StringBuilder sb = new StringBuilder();
            Label_0084: {
                if (this.cB == null) {
                    break Label_0084;
                }
                String cb = this.cB;
            Label_0052_Outer:
                while (true) {
                    String s2 = sb.append(cb).append(s).toString();
                    byte[] c;
                    String cc;
                    StringBuilder sb2;
                    Block_9_Outer:Label_0128_Outer:Block_7_Outer:
                    while (true) {
                        c = this.c(array, s2);
                        if (c == null) {
                            return true;
                        }
                        try {
                            if (s.equals("/postAdLog.do")) {
                                this.c(c);
                            }
                            return true;
                            Label_0098: {
                                cb = "http://ads.flurry.com";
                            }
                            continue Label_0052_Outer;
                            // iftrue(Label_0161:, !FlurryAgent.getUseHttps())
                            // iftrue(Label_0147:, this.cC == null)
                            while (true) {
                                while (true) {
                                    while (true) {
                                        cc = "https://adlog.flurry.com";
                                        s2 = sb2.append(cc).append(s).toString();
                                        continue Block_9_Outer;
                                        Label_0147:
                                        continue Label_0128_Outer;
                                    }
                                    sb2 = new StringBuilder();
                                    Block_8: {
                                        break Block_8;
                                        cb = "https://ads.flurry.com";
                                        continue Label_0052_Outer;
                                    }
                                    cc = this.cC;
                                    continue Block_7_Outer;
                                    Label_0161:
                                    cc = "http://adlog.flurry.com";
                                    continue Block_7_Outer;
                                }
                                continue;
                            }
                        }
                        // iftrue(Label_0098:, !FlurryAgent.getUseHttps())
                        catch (IOException ex) {
                            com.flurry.android.db.d(FlurryAds.d, "IOException: " + ex.toString());
                            return true;
                        }
                        break;
                    }
                    break;
                }
            }
        }
    }
    
    private void c(final byte[] array) throws IOException {
        final SdkLogResponse obj = a(array, SdkLogResponse.class);
        if (obj != null) {
            new StringBuilder().append("Got ad log response: ").append(obj).toString();
            if (obj.getResult().toString().equals("success")) {
                this.a(obj);
            }
            else {
                final Iterator<CharSequence> iterator = obj.getErrors().iterator();
                while (iterator.hasNext()) {
                    com.flurry.android.db.d(FlurryAds.d, iterator.next().toString());
                }
            }
        }
    }
    
    private byte[] c(final byte[] array, final String s) {
        final ByteArrayEntity entity = new ByteArrayEntity(array);
        entity.setContentType("avro/binary");
        final HttpPost httpPost = new HttpPost(s);
        httpPost.setEntity((HttpEntity)entity);
        httpPost.setHeader("accept", "avro/binary");
        httpPost.setHeader("FM-Checksum", Integer.toString(b(array)));
        final BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout((HttpParams)basicHttpParams, 10000);
        HttpConnectionParams.setSoTimeout((HttpParams)basicHttpParams, 15000);
        httpPost.getParams().setBooleanParameter("http.protocol.expect-continue", false);
        final HttpClient a = cn.a((HttpParams)basicHttpParams);
        byte[] a2;
        try {
            final HttpResponse execute = a.execute((HttpUriRequest)httpPost);
            final int statusCode = execute.getStatusLine().getStatusCode();
            if (statusCode == 200 && execute.getEntity() != null && execute.getEntity().getContentLength() != 0L) {
                com.flurry.android.db.e(FlurryAds.d, "Request successful");
                a2 = a(execute.getEntity().getContent());
                entity.consumeContent();
                final String string = Integer.toString(b(a2));
                if (!execute.containsHeader("FM-Checksum")) {
                    return a2;
                }
                if (execute.getFirstHeader("FM-Checksum").getValue().equals(string)) {
                    return a2;
                }
            }
            else {
                com.flurry.android.db.d(FlurryAds.d, "Request to url = " + s + " failed with HTTP = " + statusCode);
            }
            return null;
        }
        catch (IOException ex) {
            com.flurry.android.db.b(FlurryAds.d, "Request to url = " + s + " failed with IOException = " + ex.toString(), ex);
            return null;
        }
        return a2;
    }
    
    public static void clearTargetingKeywords() {
        getInstance().cX = null;
    }
    
    public static void clearUserCookies() {
        getInstance().cF.clear();
    }
    
    public static void displayAd(final Context context, final String s, final ViewGroup viewGroup) {
        if (context == null) {
            db.d(FlurryAds.d, "Context passed to displayAd was null.");
        }
        else {
            if (s == null) {
                db.d(FlurryAds.d, "Ad space name passed to displayAd was null.");
                return;
            }
            if (s.length() == 0) {
                db.d(FlurryAds.d, "Ad space name passed to displayAd was empty.");
                return;
            }
            if (viewGroup == null) {
                db.d(FlurryAds.d, "ViewGroup  passed to displayAd was null.");
                return;
            }
            while (true) {
                getInstance().g(context);
                while (true) {
                    FlurryAds dc = null;
                    Label_0138: {
                        try {
                            dc = FlurryAds.dc;
                            final bf n = dc.n(s);
                            if (n != null) {
                                if (dc.cQ != null) {
                                    if (!(n instanceof at)) {
                                        break Label_0138;
                                    }
                                    dc.cQ.shouldDisplayAd(s.toString(), FlurryAdType.WEB_BANNER);
                                }
                                n.a(context, viewGroup);
                                return;
                            }
                            break;
                        }
                        catch (Throwable t) {
                            db.b(FlurryAds.d, "", t);
                            return;
                        }
                    }
                    dc.cQ.shouldDisplayAd(s.toString(), FlurryAdType.WEB_TAKEOVER);
                    continue;
                }
            }
        }
    }
    
    static boolean e(final Context context, final String str) {
        int i = 0;
    Label_0087_Outer:
        while (i < 5) {
            while (true) {
                if (i(context) && !h(context)) {
                    final HttpResponse a = bd.a(str, 10000, 15000, true);
                    if (a != null && a.getStatusLine().getStatusCode() == 200) {
                        new StringBuilder().append("URL hit succeeded for: ").append(str).toString();
                        return true;
                    }
                    break Label_0087;
                }
                try {
                    Thread.sleep(100L);
                    ++i;
                    continue Label_0087_Outer;
                }
                catch (InterruptedException ex) {
                    ex.getMessage();
                    continue;
                }
                break;
            }
            break;
        }
        return false;
    }
    
    public static void enableTestAds(final boolean cw) {
        getInstance().cW = cw;
    }
    
    public static void fetchAd(final Context context, final String s, final ViewGroup viewGroup, final FlurryAdSize flurryAdSize) {
        if (context == null) {
            db.d(FlurryAds.d, "Context passed to fetchAd was null.");
        }
        else {
            if (s == null) {
                db.d(FlurryAds.d, "Ad space name passed to fetchAd was null.");
                return;
            }
            if (s.length() == 0) {
                db.d(FlurryAds.d, "Ad space name passed to fetchAd was empty.");
                return;
            }
            if (viewGroup == null) {
                db.d(FlurryAds.d, "ViewGroup passed to fetchAd was null.");
                return;
            }
            if (flurryAdSize == null) {
                db.d(FlurryAds.d, "FlurryAdSize passed to fetchAd was null.");
                return;
            }
            getInstance().g(context);
            FlurryAds dc;
            try {
                dc = FlurryAds.dc;
                if (dc.i(s) && !h(context)) {
                    dc.c(context, s);
                    return;
                }
            }
            catch (Throwable t) {
                db.b(FlurryAds.d, "", t);
                return;
            }
            if (!h(context)) {
                new bw(dc, context, s, flurryAdSize, viewGroup, true, false).execute((Object[])new Void[0]);
            }
        }
    }
    
    private void g(final Context be) {
        synchronized (this) {
            if (!this.dd) {
                this.cx = be.getFileStreamPath(".flurryadlog." + Integer.toString(FlurryAgent.w().hashCode(), 16));
                this.cy = be.getFileStreamPath(".flurryfreqcap." + Integer.toString(FlurryAgent.w().hashCode(), 16));
                this.cA = a(be, "market://details?id=" + be.getPackageName(), "android.intent.action.VIEW");
                this.cJ.bE = be;
                this.T();
                com.flurry.android.db.c(FlurryAds.d, "Attempting to load FreqCap data");
                this.V();
                this.dd = true;
            }
        }
    }
    
    public static boolean getAd(final Context context, final String s, final ViewGroup viewGroup, final FlurryAdSize flurryAdSize, final long n) {
        if (context == null) {
            db.d(FlurryAds.d, "Context passed to getAd was null.");
            return false;
        }
        if (s == null) {
            db.d(FlurryAds.d, "Ad space name passed to getAd was null.");
            return false;
        }
        if (s.length() == 0) {
            db.d(FlurryAds.d, "Ad space name passed to getAd was empty.");
            return false;
        }
        if (viewGroup == null) {
            db.d(FlurryAds.d, "ViewGroup passed to getAd was null.");
            return false;
        }
        if (flurryAdSize == null) {
            db.d(FlurryAds.d, "FlurryAdSize passed to getAd was null.");
            return false;
        }
        getInstance().g(context);
        try {
            return FlurryAds.dc.a(context, s, flurryAdSize, viewGroup, n);
        }
        catch (Throwable t) {
            db.b(FlurryAds.d, "", t);
            return false;
        }
    }
    
    static FlurryAds getInstance() {
        if (FlurryAds.dc == null) {
            FlurryAds.dc = new FlurryAds();
        }
        return FlurryAds.dc;
    }
    
    private static boolean h(final Context context) {
        return ((KeyguardManager)context.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    }
    
    private static boolean i(final Context context) {
        boolean b;
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
            b = true;
        }
        else {
            final NetworkInfo activeNetworkInfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
            b = (activeNetworkInfo != null && (activeNetworkInfo.isConnected() || activeNetworkInfo.isRoaming()));
            if (!b) {
                db.g(FlurryAds.d, "No connectivity found.");
                return b;
            }
        }
        return b;
    }
    
    private boolean i(final String s) {
        return this.cJ.i(s);
    }
    
    public static void initializeAds(final Context context) {
        if (context == null) {
            db.d(FlurryAds.d, "Context passed to initializeAds was null.");
            return;
        }
        getInstance().g(context);
        try {
            final FlurryAds dc = FlurryAds.dc;
            db.e(FlurryAds.d, "Initializing ads -- requesting ads with precaching enabled on the server");
            final boolean m = FlurryAgent.m();
            int n = 0;
            if (!m) {
                n = 500;
            }
            dc.cK.postDelayed((Runnable)new cr(dc, context), (long)n);
        }
        catch (Throwable t) {
            db.b(FlurryAds.d, "", t);
        }
    }
    
    public static boolean isAdAvailable(final Context context, final String s, final FlurryAdSize flurryAdSize, final long n) {
        if (context == null) {
            db.d(FlurryAds.d, "Context passed to isAdAvailable was null.");
            return false;
        }
        if (s == null) {
            db.d(FlurryAds.d, "Ad space name passed to isAdAvailable was null.");
            return false;
        }
        if (s.length() == 0) {
            db.d(FlurryAds.d, "Ad space name passed to isAdAvailable was empty.");
            return false;
        }
        if (flurryAdSize == null) {
            db.d(FlurryAds.d, "FlurryAdSize passed to isAdAvailable was null.");
            return false;
        }
        getInstance().g(context);
        try {
            return FlurryAds.dc.a(context, s, flurryAdSize, n);
        }
        catch (Throwable t) {
            db.b(FlurryAds.d, "", t);
            return false;
        }
    }
    
    private AdUnit l(final String s) {
        return this.cJ.h(s);
    }
    
    private bf n(final String s) {
        return this.cL.n(s);
    }
    
    private void o(final String s) {
        this.cL.o(s);
    }
    
    public static void removeAd(final Context context, final String s, final ViewGroup viewGroup) {
        if (context == null) {
            db.d(FlurryAds.d, "Context passed to removeAd was null.");
            return;
        }
        if (s == null) {
            db.d(FlurryAds.d, "Ad space name passed to removeAd was null.");
            return;
        }
        if (s.length() == 0) {
            db.d(FlurryAds.d, "Ad space name passed to removeAd was empty.");
            return;
        }
        if (viewGroup == null) {
            db.d(FlurryAds.d, "ViewGroup passed to removeAd was null.");
            return;
        }
        getInstance().g(context);
        try {
            FlurryAds.dc.d(context, s);
        }
        catch (Throwable t) {
            db.b(FlurryAds.d, "", t);
        }
    }
    
    public static void setAdListener(final FlurryAdListener cq) {
        getInstance().cQ = cq;
    }
    
    public static void setAdLogUrl(final String cc) {
        getInstance().cC = cc;
    }
    
    public static void setAdServerUrl(final String cb) {
        getInstance().cB = cb;
    }
    
    public static void setCustomAdNetworkHandler(final ICustomAdNetworkHandler cn) {
        if (cn == null) {
            db.d(FlurryAds.d, "ICustomAdNetworkHandler passed to setCustomAdNetworkHandler was null.");
            return;
        }
        getInstance().cN = cn;
    }
    
    public static void setLocation(final float cd, final float ce) {
        getInstance().cD = cd;
        getInstance().cE = ce;
    }
    
    public static void setTargetingKeywords(final Map<String, String> cx) {
        if (cx == null) {
            db.d(FlurryAds.d, "targetingKeywords Map passed to setTargetingKeywords was null.");
        }
        else if (cx != null) {
            getInstance().cX = cx;
        }
    }
    
    public static void setUserCookies(final Map<String, String> map) {
        if (map == null) {
            db.d(FlurryAds.d, "userCookies Map passed to setUserCookies was null.");
        }
        else {
            final FlurryAds instance = getInstance();
            if (map != null && map.size() > 0) {
                for (final Map.Entry<String, String> entry : map.entrySet()) {
                    if (entry.getKey() != null && entry.getValue() != null) {
                        instance.cF.put(entry.getKey(), entry.getValue());
                    }
                    else {
                        db.g(FlurryAds.d, "User cookie keys and values may not be null.");
                    }
                }
            }
        }
    }
    
    static String w() {
        return FlurryAgent.w();
    }
    
    final void J() {
        this.cM.ap();
    }
    
    final void K() {
        this.P();
    }
    
    final long L() {
        return this.bb;
    }
    
    final long M() {
        synchronized (this) {
            long n = SystemClock.elapsedRealtime() - this.bc;
            if (n <= this.cI) {
                n = 1L + this.cI;
                this.cI = n;
            }
            return this.cI = n;
        }
    }
    
    final Map<String, String> O() {
        final Map<String, String> cf = this.cF;
        if (this.de != null) {
            final FlurryUserIdProvider de = this.de;
            String string;
            if (de.mContext == null) {
                string = "";
            }
            else {
                string = de.mContext.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).getString("flurry_last_user_id", "");
            }
            if (!TextUtils.isEmpty((CharSequence)string)) {
                cf.put("appCloudUserId", string);
            }
        }
        return cf;
    }
    
    final void S() {
        // monitorenter(this)
        while (true) {
            try {
                DataOutputStream dataOutputStream = null;
                Label_0023: {
                    if (com.flurry.android.bc.b(this.cx)) {
                        break Label_0023;
                    }
                    try {
                        bd.a(null);
                        return;
                        final DataOutputStream dataOutputStream2;
                        dataOutputStream = (dataOutputStream2 = new DataOutputStream(new FileOutputStream(this.cx)));
                        final int n = 46586;
                        dataOutputStream2.writeShort(n);
                        final FlurryAds flurryAds = this;
                        final List<cz> list = flurryAds.cS;
                        final List<cz> list3;
                        final List<cz> list2 = list3 = list;
                        // monitorenter(list3)
                        final FlurryAds flurryAds2 = this;
                        final FlurryAds flurryAds3 = this;
                        final List<cz> list4 = flurryAds3.cS;
                        final DataOutputStream dataOutputStream3 = dataOutputStream;
                        flurryAds2.a(list4, dataOutputStream3);
                        final List<cz> list5 = list2;
                        // monitorexit(list5)
                        final DataOutputStream dataOutputStream4 = dataOutputStream;
                        final boolean b = false;
                        dataOutputStream4.writeShort(b ? 1 : 0);
                        final DataOutputStream dataOutputStream5 = dataOutputStream;
                        bd.a(dataOutputStream5);
                        return;
                    }
                    finally {
                    }
                    // monitorexit(this)
                }
                try {
                    final DataOutputStream dataOutputStream2 = dataOutputStream;
                    final int n = 46586;
                    dataOutputStream2.writeShort(n);
                    final FlurryAds flurryAds = this;
                    final List<cz> list = flurryAds.cS;
                    final List<cz> list3;
                    final List<cz> list2 = list3 = list;
                    synchronized (list3) {
                        final FlurryAds flurryAds2 = this;
                        final FlurryAds flurryAds3 = this;
                        final List<cz> list4 = flurryAds3.cS;
                        final DataOutputStream dataOutputStream3 = dataOutputStream;
                        flurryAds2.a(list4, dataOutputStream3);
                        final List<cz> list5 = list2;
                        // monitorexit(list5)
                        final DataOutputStream dataOutputStream4 = dataOutputStream;
                        final boolean b = false;
                        dataOutputStream4.writeShort(b ? 1 : 0);
                        final DataOutputStream dataOutputStream5 = dataOutputStream;
                        bd.a(dataOutputStream5);
                    }
                }
                catch (Throwable t3) {
                    try {
                        final Throwable t;
                        com.flurry.android.db.b(FlurryAds.d, "", t);
                        bd.a(dataOutputStream);
                        return;
                        bd.a(dataOutputStream);
                        throw;
                    }
                    finally {}
                }
            }
            catch (Throwable t) {}
            finally {
                final DataOutputStream dataOutputStream = null;
                continue;
            }
            break;
        }
    }
    
    final void U() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: aload_0        
        //     3: getfield        com/flurry/android/FlurryAds.cM:Lcom/flurry/android/FlurryFreqCapManager;
        //     6: invokevirtual   com/flurry/android/FlurryFreqCapManager.ap:()V
        //     9: aload_0        
        //    10: getfield        com/flurry/android/FlurryAds.cy:Ljava/io/File;
        //    13: invokestatic    com/flurry/android/bc.b:(Ljava/io/File;)Z
        //    16: istore          5
        //    18: iload           5
        //    20: ifne            30
        //    23: aconst_null    
        //    24: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //    27: aload_0        
        //    28: monitorexit    
        //    29: return         
        //    30: new             Ljava/io/DataOutputStream;
        //    33: dup            
        //    34: new             Ljava/io/FileOutputStream;
        //    37: dup            
        //    38: aload_0        
        //    39: getfield        com/flurry/android/FlurryAds.cy:Ljava/io/File;
        //    42: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //    45: invokespecial   java/io/DataOutputStream.<init>:(Ljava/io/OutputStream;)V
        //    48: astore_3       
        //    49: aload_0        
        //    50: getfield        com/flurry/android/FlurryAds.cM:Lcom/flurry/android/FlurryFreqCapManager;
        //    53: astore          6
        //    55: aload           6
        //    57: monitorenter   
        //    58: aload_0        
        //    59: aload_0        
        //    60: getfield        com/flurry/android/FlurryAds.cM:Lcom/flurry/android/FlurryFreqCapManager;
        //    63: aload_3        
        //    64: invokespecial   com/flurry/android/FlurryAds.a:(Lcom/flurry/android/FlurryFreqCapManager;Ljava/io/DataOutputStream;)V
        //    67: aload           6
        //    69: monitorexit    
        //    70: aload_3        
        //    71: iconst_0       
        //    72: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //    75: aload_3        
        //    76: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //    79: goto            27
        //    82: astore_1       
        //    83: aload_0        
        //    84: monitorexit    
        //    85: aload_1        
        //    86: athrow         
        //    87: astore          7
        //    89: aload           6
        //    91: monitorexit    
        //    92: aload           7
        //    94: athrow         
        //    95: astore_2       
        //    96: getstatic       com/flurry/android/FlurryAds.d:Ljava/lang/String;
        //    99: ldc_w           ""
        //   102: aload_2        
        //   103: invokestatic    com/flurry/android/db.b:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   106: aload_3        
        //   107: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   110: goto            27
        //   113: aload_3        
        //   114: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   117: aload           4
        //   119: athrow         
        //   120: astore          4
        //   122: goto            113
        //   125: astore_2       
        //   126: aconst_null    
        //   127: astore_3       
        //   128: goto            96
        //   131: astore          4
        //   133: aconst_null    
        //   134: astore_3       
        //   135: goto            113
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  2      9      82     87     Any
        //  9      18     125    131    Ljava/lang/Throwable;
        //  9      18     131    138    Any
        //  23     27     82     87     Any
        //  30     49     125    131    Ljava/lang/Throwable;
        //  30     49     131    138    Any
        //  49     58     95     96     Ljava/lang/Throwable;
        //  49     58     120    125    Any
        //  58     70     87     95     Any
        //  70     75     95     96     Ljava/lang/Throwable;
        //  70     75     120    125    Any
        //  75     79     82     87     Any
        //  89     92     87     95     Any
        //  92     95     95     96     Ljava/lang/Throwable;
        //  92     95     120    125    Any
        //  96     106    120    125    Any
        //  106    110    82     87     Any
        //  113    120    82     87     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0027:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    final cz W() {
        return this.cG;
    }
    
    final AdUnit X() {
        return this.cH;
    }
    
    final cz a(final cz cz, final String str, final boolean b, final Map<String, String> obj) {
        synchronized (this) {
            new StringBuilder().append("changeAdState(").append(cz).append(", ").append(str).append(", ").append(b).append(", ").append(obj).append(")").toString();
            synchronized (cz) {
                if (!this.cS.contains(cz)) {
                    this.cS.add(cz);
                    new StringBuilder().append("changeAdState added adLog = ").append(cz).toString();
                }
                cz.a(this.a(str, b, obj));
                return cz;
            }
        }
    }
    
    final List<AdUnit> a(final Context context, final String s, final ViewGroup viewGroup, final boolean b, final FlurryAdSize flurryAdSize) {
        this.cM.ap();
        final int n = bd.n(context);
        final int o = bd.o(context);
        Pair pair = null;
        switch (context.getResources().getConfiguration().orientation) {
            default: {
                pair = Pair.create((Object)n, (Object)o);
                break;
            }
            case 2: {
                pair = Pair.create((Object)o, (Object)n);
                break;
            }
        }
        final int intValue = (int)pair.first;
        final int intValue2 = (int)pair.second;
        final Pair create = Pair.create((Object)bd.n(context), (Object)bd.o(context));
        int n2 = (int)create.first;
        int n3 = (int)create.second;
        while (true) {
            Label_0500: {
                if (!flurryAdSize.equals(FlurryAdSize.BANNER_BOTTOM) && !flurryAdSize.equals(FlurryAdSize.BANNER_TOP)) {
                    break Label_0500;
                }
                if (viewGroup != null && viewGroup.getHeight() > 0) {
                    n3 = bd.a(context, viewGroup.getHeight());
                }
                if (viewGroup == null || viewGroup.getWidth() <= 0) {
                    break Label_0500;
                }
                n2 = bd.a(context, viewGroup.getWidth());
                final int n4 = n3;
                final byte[] a = this.a(s, n2, n4, intValue, intValue2, b, flurryAdSize);
                if (a == null || a.length < 1) {
                    return Collections.emptyList();
                }
                String string;
                if (this.cB != null) {
                    string = this.cB + "/v5/getAds.do";
                }
                else if (FlurryAgent.getUseHttps()) {
                    string = "https://ads.flurry.com/v5/getAds.do";
                }
                else {
                    string = "http://ads.flurry.com/v5/getAds.do";
                }
                final byte[] c = this.c(a, string);
                if (c == null || c.length < 1) {
                    return Collections.emptyList();
                }
                final AdResponse obj = a(c, AdResponse.class);
                if (obj == null) {
                    return Collections.emptyList();
                }
                new StringBuilder().append("Got ad response: ").append(obj).toString();
                if (obj.getErrors().size() > 0) {
                    com.flurry.android.db.d(FlurryAds.d, "Ad server responded with the following error(s):");
                    final Iterator<CharSequence> iterator = obj.getErrors().iterator();
                    while (iterator.hasNext()) {
                        com.flurry.android.db.d(FlurryAds.d, iterator.next().toString());
                    }
                    return Collections.emptyList();
                }
                if (!TextUtils.isEmpty((CharSequence)s) && (obj.getAdUnits() == null || obj.getAdUnits().size() == 0)) {
                    com.flurry.android.db.d(FlurryAds.d, "Ad server responded but sent no ad units.");
                    return Collections.emptyList();
                }
                return obj.getAdUnits();
            }
            final int n4 = n3;
            continue;
        }
    }
    
    final void a(final Context context, final long bb, final long bc) {
        this.de = new FlurryUserIdProvider(context);
        this.bb = bb;
        this.bc = bc;
        this.cI = 0L;
    }
    
    final void a(final Context context, final String s, final AdUnit adUnit) {
        if (!s.startsWith("market://details?id=")) {
            com.flurry.android.db.g(FlurryAds.d, "Unexpected Google Play url scheme: " + s);
            return;
        }
        final String string = adUnit.getAdSpace().toString();
        if (this.cA) {
            if (!this.b(context, s, string)) {
                com.flurry.android.db.d(FlurryAds.d, "Cannot launch Google Play url " + s);
            }
            return;
        }
        this.b(context, "https://market.android.com/details?id=" + s.substring("market://details?id=".length()), string);
    }
    
    final void a(final AdUnit ch) {
        this.cH = ch;
    }
    
    final void a(final cz cz) {
        synchronized (this) {
            if (this.cS.size() < 32767) {
                this.cS.add(cz);
                this.cT.put(cz.at(), cz);
            }
        }
    }
    
    final boolean a(final Context context, final Intent intent, final String s) {
        if (context != null && intent != null && s != null && bd.a(context, intent)) {
            Label_0090: {
                if (context == null || intent == null || !context.getPackageName().equals(intent.resolveActivity(context.getPackageManager()).getPackageName())) {
                    break Label_0090;
                }
                Intent intent2 = new Intent(intent);
                while (true) {
                    if (intent2 != null) {
                        intent2.putExtra("adSpaceName", s);
                    }
                    try {
                        context.startActivity(intent2);
                        return true;
                        intent2 = new Intent(context, (Class)FlurryFullscreenTakeoverActivity.class);
                        intent2.putExtra("targetIntent", (Parcelable)intent);
                        continue;
                    }
                    catch (ActivityNotFoundException ex) {
                        com.flurry.android.db.b(FlurryAds.d, "Cannot launch Activity", (Throwable)ex);
                    }
                    break;
                }
            }
        }
        return false;
    }
    
    final boolean a(final Context context, final String s, final ViewGroup viewGroup) {
        this.c(context, s);
        if (this.n(s) == null) {
            return false;
        }
        displayAd(context, s, viewGroup);
        return true;
    }
    
    final boolean a(final Context context, final String s, final FlurryAdSize flurryAdSize, final ViewGroup viewGroup, final long n) {
        if (!this.i(s)) {
            if (i(context) && !h(context)) {
                Label_0110: {
                    if (n != 0L) {
                        break Label_0110;
                    }
                    boolean b = true;
                Label_0042_Outer:
                    while (true) {
                        Label_0116: {
                            if (n != 0L) {
                                break Label_0116;
                            }
                            boolean b2 = true;
                            while (true) {
                                final bw bw = new bw(this, context, s, flurryAdSize, viewGroup, b, b2);
                                bw.execute((Object[])new Void[0]);
                                if (n <= 0L) {
                                    return false;
                                }
                                try {
                                    bw.get(n, TimeUnit.MILLISECONDS);
                                    if (this.i(s)) {
                                        return this.a(context, s, viewGroup);
                                    }
                                    return false;
                                    b = false;
                                    continue Label_0042_Outer;
                                    b2 = false;
                                    continue;
                                }
                                catch (InterruptedException ex) {
                                    ex.printStackTrace();
                                    return false;
                                }
                                catch (ExecutionException ex2) {
                                    ex2.printStackTrace();
                                    return false;
                                }
                                catch (TimeoutException ex3) {
                                    return false;
                                }
                                break;
                            }
                        }
                        break;
                    }
                }
            }
            if (!i(context) && this.cQ != null) {
                this.cQ.spaceDidFailToReceiveAd(s.toString());
            }
            return false;
        }
        return !h(context) && this.a(context, s, viewGroup);
    }
    
    final void b(final cz cg) {
        this.cG = cg;
    }
    
    final void b(final DataInputStream dataInputStream) throws IOException {
        synchronized (this) {
            while (dataInputStream.readUnsignedShort() != 0) {
                synchronized (this.cS) {
                    this.cS.add(new cz(dataInputStream));
                }
            }
        }
        this.cv = true;
    }
    // monitorexit(this)
    
    final void b(final String s, final boolean b) {
        ++this.cR;
        if (1 == this.cR && this.cQ != null) {
            this.cQ.onAdOpened(s);
        }
        if (b && this.cQ != null) {
            this.cQ.onApplicationExit(s);
        }
    }
    
    final void b(final Map<Integer, ByteBuffer> ax) {
        this.aX = ax;
    }
    
    final boolean b(final Context context, final String s, final String s2) {
        return this.a(context, new Intent("android.intent.action.VIEW").setData(Uri.parse(s)), s2);
    }
    
    final void c(final Context context, final String s) {
        final AdUnit l = this.l(s);
        if (l == null) {
            if (this.cQ != null) {
                this.cQ.spaceDidFailToReceiveAd(s.toString());
            }
        }
        else {
            this.cZ = null;
            this.cL.a(s, this.a(context, l));
            if (this.cQ != null) {
                this.cQ.spaceDidReceiveAd(s.toString());
            }
        }
    }
    
    final void c(final DataInputStream dataInputStream) throws IOException {
        synchronized (this) {
            while (dataInputStream.readShort() != 0) {
                synchronized (this.cM) {
                    this.cM.a(new FlurryFreqCapInfo(dataInputStream));
                }
            }
        }
        this.cw = true;
    }
    // monitorexit(this)
    
    final void d(final Context obj, final String str) {
        new StringBuilder().append("_removeAd(context = ").append(obj).append(", adSpaceName = ").append(str).append(")").toString();
        final ac a = this.cL.A(str);
        if (a == null) {
            this.o(str);
            return;
        }
        a.stop();
        final ViewGroup h = a.h();
        if (h != null) {
            a.removeAllViews();
            h.removeView((View)a);
        }
        this.o(str);
        this.cL.B(str);
    }
    
    final void d(final List<cz> cu) {
        this.cU = cu;
    }
    
    final void e(final List<AdUnit> list) {
        this.cJ.b(list);
    }
    
    final String getPhoneId() {
        return this.aW;
    }
    
    final void j(final String s) {
        --this.cR;
        if (this.cR == 0 && this.cQ != null) {
            this.cQ.onAdClosed(s);
        }
    }
    
    final void k(final String aw) {
        this.aW = aw;
    }
    
    final void m(final String s) {
        final byte[] q = this.Q();
        if (q != null) {
            this.b(q, s);
        }
    }
    
    public void onEvent(final cw cw, final bm bm, final int n) {
        new StringBuilder().append("onEvent:event=").append(cw.eW).append(",params=").append(cw.bv).toString();
        final List<af> a = a(cw.M.getAdFrames().get(cw.eX), cw);
        if (a.isEmpty()) {
            for (final Map.Entry<String, String> entry : this.da.entrySet()) {
                if (entry.getKey().equals(cw.eW)) {
                    a.add(new af(entry.getValue(), cw.bv, cw));
                }
            }
        }
        Label_0253: {
            if (cw.eW.equals("adWillClose")) {
                final Iterator<af> iterator2 = a.iterator();
                while (true) {
                    while (iterator2.hasNext()) {
                        if (this.db.contains(iterator2.next().bu)) {
                            final int n2 = 1;
                            if (n2 == 0) {
                                a.add(new af("closeAd", Collections.emptyMap(), cw));
                            }
                            break Label_0253;
                        }
                    }
                    final int n2 = 0;
                    continue;
                }
            }
        }
        if (cw.eW.equals("renderFailed") && this.cQ != null) {
            this.cQ.onRenderFailed(cw.M.getAdSpace().toString());
        }
        if (cw.eW.equals("clicked") && this.cQ != null) {
            this.cQ.onAdClicked(cw.M.getAdSpace().toString());
        }
        if (cw.eW.equals("videoCompleted") && this.cQ != null) {
            this.cQ.onVideoCompleted(cw.M.getAdSpace().toString());
        }
        final Iterator<af> iterator3 = a.iterator();
        af af = null;
        while (iterator3.hasNext()) {
            final af af2 = iterator3.next();
            af af3;
            if (af2.bu.equals("logEvent")) {
                af2.bv.put("__sendToServer", "true");
                af3 = af2;
            }
            else {
                af3 = af;
            }
            if (af2.bu.equals("loadAdComponents")) {
                for (final Map.Entry<String, String> entry2 : af2.bw.bv.entrySet()) {
                    af2.bv.put(entry2.getKey().toString(), entry2.getValue().toString());
                }
            }
            com.flurry.android.db.f(FlurryAds.d, af2.toString());
            bm.performAction$3deb3ec3(af2, this, n + 1);
            af = af3;
        }
        if (af == null) {
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("__sendToServer", "false");
            final af af4 = new af("logEvent", hashMap, cw);
            bm.performAction$3deb3ec3(af4, this, n + 1);
            com.flurry.android.db.f(FlurryAds.d, af4.toString());
        }
    }
    
    @Override
    public void performAction$3deb3ec3(final af af, final FlurryAds flurryAds, final int n) {
        new StringBuilder().append("performAction:action=").append(af.bu).append(",params=").append(af.bv).append(",triggering event=").append(af.bw.eW).toString();
        final String bu = af.bu;
        final Context j = af.bw.J;
        final cz l = af.bw.L;
        final AdUnit m = af.bw.M;
        final String string = m.getAdSpace().toString();
        if (n > 10) {
            new StringBuilder().append("Maximum depth for event/action loop exceeded when performing action:").append(bu).append(",").append(af.bv).append(",triggered by:").append(af.bw.eW).toString();
        }
        else if (bu.equals("directOpen")) {
            if (!af.bv.containsKey("url")) {
                com.flurry.android.db.d(FlurryAds.d, "failed to perform directOpen action: no url in " + af.bw.eW);
                return;
            }
            final String s = af.bv.get("url");
            if (s.startsWith("market://")) {
                this.a(j, s, m);
                return;
            }
            if ("true".equals(af.bv.get("native"))) {
                this.b(j, this.a(l, m, af, s), string);
                return;
            }
            final Intent intent = new Intent(j, (Class)FlurryFullscreenTakeoverActivity.class);
            intent.putExtra("url", s);
            if (bd.a(j, intent)) {
                this.a(j, intent, string);
                return;
            }
            com.flurry.android.db.g(FlurryAds.d, "Can't start FlurryFullscreenTakeoverActivity, was it declared in the manifest? Falling back to default browser");
            this.b(j, s, string);
        }
        else if (bu.equals("delete")) {
            if (af.bv.containsKey("count")) {
                final String s2 = af.bv.get("count");
                while (true) {
                    try {
                        final int int1 = Integer.parseInt(s2);
                        this.cJ.a(string, int1);
                        return;
                    }
                    catch (NumberFormatException ex4) {
                        new StringBuilder().append("caught NumberFormatException with count parameter in deleteAds:").append(s2).toString();
                        final int int1 = -1;
                        continue;
                    }
                    break;
                }
            }
            if (af.bv.containsKey("groupId")) {
                this.cJ.b(string, af.bv.get("groupId"));
            }
        }
        else if (bu.equals("processRedirect")) {
            if (af.bv.containsKey("url")) {
                final String s3 = af.bv.get("url");
                if ("true".equals(af.bv.get("native"))) {
                    this.b(j, this.a(l, m, af, s3), string);
                    return;
                }
                if (s3.startsWith("http")) {
                    final String a = this.a(l, m, af, s3);
                    final ab ab = new ab(this, j, a);
                    while (true) {
                        try {
                            final String s4 = (String)ab.execute((Object[])new Void[0]).get();
                            if (s4 != null) {
                                this.a(j, s4, true, m);
                                return;
                            }
                        }
                        catch (InterruptedException ex) {
                            ex.printStackTrace();
                            final String s4 = "";
                            continue;
                        }
                        catch (ExecutionException ex2) {
                            ex2.printStackTrace();
                            final String s4 = "";
                            continue;
                        }
                        break;
                    }
                    com.flurry.android.db.g(FlurryAds.d, "Redirect URL could not be found for: " + a);
                    return;
                }
                this.a(j, s3, false, m);
            }
        }
        else if (bu.equals("verifyUrl")) {
            if (af.bv.containsKey("url")) {
                final Intent launchIntentForPackage = j.getPackageManager().getLaunchIntentForPackage((String)af.bv.get("url"));
                int n2;
                if (launchIntentForPackage != null && bd.a(j, launchIntentForPackage)) {
                    n2 = 1;
                }
                else {
                    n2 = 0;
                }
                String s5;
                if (n2 != 0) {
                    s5 = "urlVerified";
                }
                else {
                    s5 = "urlNotVerified";
                }
                flurryAds.onEvent(new cw(s5, Collections.emptyMap(), af.bw.J, m, l, af.bw.eX), this, n + 1);
            }
        }
        else if (bu.equals("launchPackage")) {
            if (af.bv.containsKey("package")) {
                final String str = af.bv.get("package");
                final Intent launchIntentForPackage2 = j.getPackageManager().getLaunchIntentForPackage(str);
                if (launchIntentForPackage2 != null && bd.a(j, launchIntentForPackage2)) {
                    this.a(j, launchIntentForPackage2, m.getAdSpace().toString());
                    return;
                }
                this.a(j, "https://play.google.com/store/apps/details?id=" + str, false, m);
            }
        }
        else if (bu.equals("sendUrlAsync")) {
            if (af.bv.containsKey("url")) {
                final String a2 = this.a(l, m, af, af.bv.get("url"));
                new StringBuilder().append("url after is: ").append(a2).toString();
                this.cK.post((Runnable)new ct(this, j, a2));
            }
        }
        else {
            if (bu.equals("sendAdLogs")) {
                this.P();
                return;
            }
            if (bu.equals("logEvent")) {
                final boolean b = af.bv.containsKey("__sendToServer") && af.bv.get("__sendToServer").equals("true");
                af.bv.remove("__sendToServer");
                this.a(af.bw.L, af.bw.eW, b, af.bv);
                return;
            }
            if (!bu.equals("nextFrame")) {
                if (bu.equals("nextAdUnit")) {
                    final ac a3 = this.cL.A(string);
                    Label_1397: {
                        if (a3 != null && af.bv.containsKey("delay")) {
                            final int ex3 = af.bw.eX;
                            Label_1351: {
                                if (m == null || m.getAdFrames().size() <= 0) {
                                    break Label_1351;
                                }
                                int equals = m.getAdFrames().get(ex3).getAdSpaceLayout().getFormat().toString().equals("banner") ? 1 : 0;
                            Label_1339_Outer:
                                while (true) {
                                    if (equals == 0) {
                                        break Label_1397;
                                    }
                                    long long1 = 30L;
                                    while (true) {
                                        try {
                                            long1 = Long.parseLong(af.bv.get("delay"));
                                            a3.a(long1 * 1000L);
                                            return;
                                            equals = 0;
                                            continue Label_1339_Outer;
                                        }
                                        catch (NumberFormatException ex5) {
                                            new StringBuilder().append("caught NumberFormatException with delay parameter in nextAdUnit:").append(af.bv.get("delay")).toString();
                                            continue;
                                        }
                                        break;
                                    }
                                    break;
                                }
                            }
                        }
                    }
                    if (a3 != null) {
                        a3.post((Runnable)new cp(this, j, string, a3));
                        return;
                    }
                    if (af.bw.eW.equals("renderFailed")) {
                        this.c(j, string);
                        return;
                    }
                    this.a(j, this.cY = this.l(string));
                }
                else if (bu.equals("checkCap")) {
                    if (af.bv.containsKey("idHash")) {
                        final String s6 = af.bv.get("idHash");
                        FlurryFreqCapInfo y = this.cM.y(s6);
                        if (y != null && FlurryFreqCapManager.d(y.getExpirationTime())) {
                            com.flurry.android.db.f(FlurryAds.d, "Discarding expired frequency cap info for idHash=" + s6);
                            this.cM.z(s6);
                            y = null;
                        }
                        String s7;
                        if (y != null && y.getViews() >= y.getNewCap()) {
                            com.flurry.android.db.f(FlurryAds.d, "Frequency cap exhausted for idHash=" + s6);
                            s7 = "capExhausted";
                        }
                        else {
                            s7 = "capNotExhausted";
                        }
                        flurryAds.onEvent(new cw(s7, Collections.emptyMap(), af.bw.J, m, l, af.bw.eX), this, n + 1);
                    }
                }
                else {
                    if (!bu.equals("updateViewCount")) {
                        new StringBuilder().append("Unknown action:").append(bu).append(",triggered by:").append(af.bw.eW).toString();
                        return;
                    }
                    if (af.bv.containsKey("idHash")) {
                        final FlurryFreqCapInfo y2 = this.cM.y(af.bv.get("idHash"));
                        if (y2 != null) {
                            y2.updateViews();
                            com.flurry.android.db.f(FlurryAds.d, "updateViewCount:idHash=" + y2.getIdHash() + ",newCap=" + y2.getNewCap() + ",prevCap=" + y2.getPreviousCap() + ",views=" + y2.getViews());
                            if (y2.getViews() > y2.getNewCap()) {
                                new StringBuilder().append("FlurryAdAction: !! rendering a capped object: ").append(y2.getIdHash()).toString();
                            }
                        }
                    }
                }
            }
        }
    }
}
