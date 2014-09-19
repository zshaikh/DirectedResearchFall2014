package v2.com.playhaven.requests.open;

import v2.com.playhaven.requests.base.*;
import v2.com.playhaven.configuration.*;
import java.util.concurrent.*;
import v2.com.playhaven.listeners.*;
import java.util.*;
import v2.com.playhaven.model.*;
import v2.com.playhaven.utils.*;
import org.json.*;
import v2.com.playhaven.requests.crashreport.*;
import v2.com.playhaven.cache.*;
import android.preference.*;
import android.content.*;

public class PHOpenRequest extends PHAPIRequest implements PHPrefetchTaskListener
{
    private PHConfiguration config;
    private PHOpenRequestListener open_listener;
    private ConcurrentLinkedQueue<PHPrefetchTask> prefetchTasks;
    private PHPrefetchListener prefetch_listener;
    private PHSession session;
    private boolean shouldPrecache;
    public boolean startPrecachingImmediately;
    
    public PHOpenRequest() {
        super();
        this.prefetchTasks = new ConcurrentLinkedQueue<PHPrefetchTask>();
        this.startPrecachingImmediately = true;
        this.config = new PHConfiguration();
    }
    
    public PHOpenRequest(final PHOpenRequestListener open_listener) {
        this();
        this.open_listener = open_listener;
    }
    
    @Override
    public String baseURL(final Context context) {
        return super.createAPIURL(context, "/v3/publisher/open/");
    }
    
    @Override
    public Hashtable<String, String> getAdditionalParams(final Context context) {
        final Hashtable<String, String> hashtable = new Hashtable<String, String>();
        hashtable.put("ssum", String.valueOf(this.session.getTotalTime()));
        hashtable.put("scount", String.valueOf(this.session.getSessionCount()));
        if (this.shouldPrecache) {
            hashtable.put("precache", "1");
        }
        return hashtable;
    }
    
    public PHOpenRequestListener getOpenRequestListener() {
        return this.open_listener;
    }
    
    public PHPrefetchListener getPrefetchListener() {
        return this.prefetch_listener;
    }
    
    public ConcurrentLinkedQueue<PHPrefetchTask> getPrefetchTasks() {
        return this.prefetchTasks;
    }
    
    public PHSession getSession() {
        return this.session;
    }
    
    @Override
    public void handleRequestFailure(final PHError phError) {
        if (this.open_listener != null) {
            this.open_listener.onOpenFailed(this, phError);
        }
    }
    
    @Override
    public void handleRequestSuccess(final JSONObject jsonObject) {
        PHStringUtil.log("Open request received a response...should we precache: " + this.shouldPrecache);
        if (jsonObject != null && this.shouldPrecache && jsonObject.has("precache")) {
            this.prefetchTasks.clear();
            final JSONArray optJSONArray = jsonObject.optJSONArray("precache");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); ++i) {
                    final String optString = optJSONArray.optString(i);
                    if (optString != null) {
                        final PHPrefetchTask e = new PHPrefetchTask();
                        e.setPrefetchListener(this);
                        e.setURL(optString);
                        this.prefetchTasks.add(e);
                    }
                }
            }
            if (this.startPrecachingImmediately) {
                this.startNextPrefetch();
            }
        }
        this.session.startAndReset();
        if (this.open_listener != null) {
            this.open_listener.onOpenSuccessful(this);
        }
    }
    
    @Override
    public void onPrefetchDone(final int n) {
        try {
            PHStringUtil.log("Pre-cache task done. Starting next out of " + this.prefetchTasks.size());
            if (this.prefetchTasks.size() == 0 && this.prefetch_listener != null) {
                this.prefetch_listener.onPrefetchFinished(this);
                return;
            }
            if (this.prefetchTasks.size() > 0 && this.startPrecachingImmediately) {
                this.startNextPrefetch();
            }
        }
        catch (Exception ex) {
            PHCrashReport.reportCrash(ex, "PHOpenRequest - prefetchDone", PHCrashReport.Urgency.low);
        }
    }
    
    @Override
    public void send(final Context context) {
        this.shouldPrecache = this.config.getShouldPrecache(context);
        synchronized (PHOpenRequest.class) {
            Label_0032: {
                if (!this.shouldPrecache) {
                    break Label_0032;
                }
                synchronized (PHCache.class) {
                    PHCache.installCache(context);
                    // monitorexit(PHCache.class)
                    // monitorexit(PHOpenRequest.class)
                    (this.session = PHSession.getInstance(context)).start();
                    final SharedPreferences$Editor edit = PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext()).edit();
                    edit.putLong("com_playhaven_time_in_game_ssum", this.session.getTotalTime());
                    edit.putLong("com_playhaven_time_in_game_scount", this.session.getSessionCount());
                    edit.commit();
                    super.send(context);
                }
            }
        }
    }
    
    public void setOpenRequestListener(final PHOpenRequestListener open_listener) {
        this.open_listener = open_listener;
    }
    
    public void setPrefetchListener(final PHPrefetchListener prefetch_listener) {
        this.prefetch_listener = prefetch_listener;
    }
    
    public void startNextPrefetch() {
        PHStringUtil.log("Starting precache task with a total of: " + this.prefetchTasks.size());
        if (this.prefetchTasks.size() > 0) {
            this.prefetchTasks.poll().execute((Object[])new Integer[0]);
        }
    }
}
