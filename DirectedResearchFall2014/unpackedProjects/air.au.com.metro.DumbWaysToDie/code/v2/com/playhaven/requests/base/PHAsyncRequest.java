package v2.com.playhaven.requests.base;

import android.os.*;
import android.net.*;
import java.nio.*;
import v2.com.playhaven.model.*;
import v2.com.playhaven.listeners.*;
import org.apache.http.client.entity.*;
import org.apache.http.client.methods.*;
import v2.com.playhaven.requests.crashreport.*;
import java.io.*;
import org.apache.http.message.*;
import java.util.*;
import v2.com.playhaven.utils.*;
import org.apache.http.client.*;
import org.apache.http.params.*;
import org.apache.http.*;
import org.apache.http.client.params.*;
import android.util.*;
import org.apache.http.impl.client.*;
import org.apache.http.protocol.*;
import org.apache.http.conn.scheme.*;

public class PHAsyncRequest extends AsyncTask<Uri, Integer, ByteBuffer>
{
    public static final int INFINITE_REDIRECTS = Integer.MAX_VALUE;
    private PHHttpConn client;
    private boolean isDownloading;
    private PHError lastError;
    private PHHttpRequestListener listener;
    public HttpParams params;
    private String password;
    private ArrayList<NameValuePair> postParams;
    private long requestStart;
    public RequestType request_type;
    private int responseCode;
    public Uri url;
    private String username;
    
    public PHAsyncRequest(final PHHttpRequestListener listener) {
        super();
        this.postParams = new ArrayList<NameValuePair>();
        this.listener = listener;
        this.client = new PHHttpConn();
        this.request_type = RequestType.Get;
    }
    
    private ByteBuffer execRequest(final Uri... array) {
        ByteBuffer stream = null;
        this.responseCode = -1;
        this.lastError = null;
        synchronized (this) {
            try {
                this.isDownloading = true;
                this.requestStart = System.currentTimeMillis();
                this.client.clearRedirects();
                final int length = array.length;
                stream = null;
                if (length <= 0) {
                    return stream;
                }
                Uri url = array[0];
                final boolean equals = url.equals((Object)this.url);
                stream = null;
                if (!equals) {
                    final Uri url2 = this.url;
                    stream = null;
                    if (url2 != null) {
                        url = this.url;
                    }
                }
                try {
                    if (this.isCancelled()) {
                        return null;
                    }
                    final String string = url.toString();
                    final RequestType request_type = this.request_type;
                    final RequestType post = RequestType.Post;
                    stream = null;
                    HttpResponse httpResponse;
                    if (request_type == post) {
                        final HttpPost httpPost = new HttpPost(string);
                        httpPost.setEntity((HttpEntity)new UrlEncodedFormEntity((List)this.postParams));
                        httpResponse = this.client.start((HttpUriRequest)httpPost);
                    }
                    else {
                        final RequestType request_type2 = this.request_type;
                        final RequestType get = RequestType.Get;
                        stream = null;
                        if (request_type2 == get) {
                            httpResponse = this.client.start((HttpUriRequest)new HttpGet(string));
                        }
                        else {
                            httpResponse = this.client.start((HttpUriRequest)new HttpGet(string));
                        }
                    }
                    final HttpEntity entity = httpResponse.getEntity();
                    this.responseCode = httpResponse.getStatusLine().getStatusCode();
                    final int responseCode = this.responseCode;
                    stream = null;
                    if (responseCode == 302 && this.getLastRedirectURL() != null) {
                        this.responseCode = 200;
                    }
                    if (this.isCancelled()) {
                        return null;
                    }
                    stream = null;
                    if (entity != null) {
                        final InputStream content = entity.getContent();
                        stream = readStream(content);
                        content.close();
                    }
                    return stream;
                }
                catch (IOException ex) {
                    this.lastError = new PHError(ex);
                }
            }
            catch (Exception ex2) {
                PHCrashReport.reportCrash(ex2, "PHAsyncRequest - doInBackground", PHCrashReport.Urgency.critical);
                return stream;
            }
        }
    }
    
    private static ByteBuffer readStream(final InputStream inputStream) throws IOException {
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        final byte[] array = new byte[1024];
        while (true) {
            final int read = inputStream.read(array);
            if (read == -1) {
                break;
            }
            byteArrayOutputStream.write(array, 0, read);
        }
        byteArrayOutputStream.flush();
        return ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
    }
    
    public static String streamToString(final InputStream inputStream) throws IOException, UnsupportedEncodingException {
        return new String(readStream(inputStream).array(), "UTF-8");
    }
    
    public void addPostParam(final String s, final String s2) {
        this.postParams.add((NameValuePair)new BasicNameValuePair(s, s2));
    }
    
    public void addPostParams(final Hashtable<String, String> hashtable) {
        if (hashtable != null) {
            this.postParams.clear();
            for (final Map.Entry<String, String> entry : hashtable.entrySet()) {
                this.postParams.add((NameValuePair)new BasicNameValuePair((String)entry.getKey(), (String)entry.getValue()));
            }
        }
    }
    
    protected ByteBuffer doInBackground(final Uri... array) {
        return this.execRequest(array);
    }
    
    public String getLastRedirectURL() {
        return this.client.getLastRedirect();
    }
    
    public int getMaxRedirects() {
        return this.client.getMaxRedirects();
    }
    
    public PHHttpConn getPHHttpClient() {
        return this.client;
    }
    
    public String getPassword() {
        return this.password;
    }
    
    public ArrayList<NameValuePair> getPostParams() {
        return this.postParams;
    }
    
    public RequestType getRequestType() {
        return this.request_type;
    }
    
    public String getUsername() {
        return this.username;
    }
    
    public boolean isDownloading() {
        return this.isDownloading;
    }
    
    protected void onCancelled() {
        this.isDownloading = false;
    }
    
    protected void onPostExecute(final ByteBuffer byteBuffer) {
        super.onPostExecute((Object)byteBuffer);
        try {
            this.isDownloading = false;
            PHStringUtil.log("PHAsyncRequest elapsed time (ms) = " + (System.currentTimeMillis() - this.requestStart));
            if (this.lastError != null && this.listener != null) {
                this.listener.onHttpRequestFailed(this.lastError);
                return;
            }
            if (this.listener != null) {
                this.listener.onHttpRequestSucceeded(byteBuffer, this.responseCode);
            }
        }
        catch (Exception ex) {
            PHCrashReport.reportCrash(ex, "PHAsyncRequest - onPostExecute", PHCrashReport.Urgency.critical);
        }
    }
    
    public void setMaxRedirects(final int maxRedirect) {
        this.client.setMaxRedirect(maxRedirect);
    }
    
    public void setPHHttpClient(final PHHttpConn client) {
        this.client = client;
    }
    
    public void setPassword(final String s) {
        this.password = s;
        this.client.setPassword(s);
    }
    
    public void setUsername(final String s) {
        this.username = s;
        this.client.setUsername(s);
    }
    
    public static class PHHttpConn
    {
        protected DefaultHttpClient client;
        private HttpUriRequest cur_request;
        private PHSchemeRegistry mSchemeReg;
        private int max_redirects;
        private String password;
        private ArrayList<String> redirectUrls;
        private int totalRedirects;
        private String username;
        
        public PHHttpConn() {
            super();
            this.max_redirects = Integer.MAX_VALUE;
            this.mSchemeReg = new PHSchemeRegistry();
            this.totalRedirects = 0;
            this.redirectUrls = new ArrayList<String>();
            (this.client = new DefaultHttpClient(this.enableRedirecting(null))).setRedirectHandler((RedirectHandler)new PHRedirectHandler((PHRedirectHandler)null));
        }
        
        private HttpParams enableRedirecting(HttpParams httpParams) {
            if (httpParams == null) {
                httpParams = (HttpParams)new BasicHttpParams();
            }
            httpParams.setParameter("http.protocol.version", (Object)HttpVersion.HTTP_1_1);
            httpParams.setBooleanParameter("http.protocol.allow-circular-redirects", true);
            HttpClientParams.setRedirecting(httpParams, true);
            return httpParams;
        }
        
        public void addRedirectUrl(final String e) {
            this.redirectUrls.add(e);
        }
        
        public void clearRedirects() {
            this.redirectUrls.clear();
        }
        
        public HttpUriRequest getCurrentRequest() {
            return this.cur_request;
        }
        
        public DefaultHttpClient getHTTPClient() {
            return this.client;
        }
        
        public String getLastRedirect() {
            if (this.redirectUrls.size() == 0) {
                return null;
            }
            return this.redirectUrls.get(this.redirectUrls.size() - 1);
        }
        
        public int getMaxRedirects() {
            return this.max_redirects;
        }
        
        public String getPassword() {
            return this.password;
        }
        
        public String getUsername() {
            return this.username;
        }
        
        public boolean isRedirectResponse(final int n) {
            return n >= 300 && n <= 307;
        }
        
        public void setMaxRedirect(final int max_redirects) {
            this.max_redirects = max_redirects;
        }
        
        public void setPassword(final String password) {
            this.password = password;
        }
        
        public void setSchemeRegistry(final PHSchemeRegistry mSchemeReg) {
            this.mSchemeReg = mSchemeReg;
        }
        
        public void setUsername(final String username) {
            this.username = username;
        }
        
        public boolean shouldRedirect(final HttpResponse httpResponse) {
            if (!this.isRedirectResponse(httpResponse.getStatusLine().getStatusCode())) {
                return false;
            }
            if (httpResponse.getHeaders("Location").length == 0) {
                return false;
            }
            final String value = httpResponse.getHeaders("Location")[0].getValue();
            if (value == null) {
                return false;
            }
            final Uri parse = Uri.parse(value);
            if (parse == null || parse.getScheme() == null || parse.getPath() == null) {
                return false;
            }
            this.addRedirectUrl(parse.toString());
            if (this.mSchemeReg.get(parse.getScheme()) == null) {
                return false;
            }
            final int totalRedirects = 1 + this.totalRedirects;
            this.totalRedirects = totalRedirects;
            return totalRedirects <= this.max_redirects;
        }
        
        public HttpResponse start(final HttpUriRequest cur_request) throws IOException {
            this.cur_request = cur_request;
            this.totalRedirects = 0;
            this.clearRedirects();
            if (this.username != null && this.password != null) {
                cur_request.setHeader("Authorization", String.format("Basic %s", Base64.encodeToString((String.valueOf(this.username) + ":" + this.password).getBytes(), 10)));
            }
            return this.client.execute(cur_request);
        }
        
        private class PHRedirectHandler extends DefaultRedirectHandler
        {
            public boolean isRedirectRequested(final HttpResponse httpResponse, final HttpContext httpContext) {
                return PHHttpConn.this.shouldRedirect(httpResponse);
            }
        }
        
        public static class PHSchemeRegistry
        {
            private SchemeRegistry schemeReg;
            
            public PHSchemeRegistry() {
                super();
                this.schemeReg = new SchemeRegistry();
            }
            
            public Scheme get(final String s) {
                return this.schemeReg.get(s);
            }
        }
    }
    
    public enum RequestType
    {
        Delete("Delete", 3), 
        Get("Get", 1), 
        Post("Post", 0), 
        Put("Put", 2);
    }
}
