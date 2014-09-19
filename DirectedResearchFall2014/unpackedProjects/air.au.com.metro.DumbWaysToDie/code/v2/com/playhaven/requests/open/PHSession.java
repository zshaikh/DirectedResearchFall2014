package v2.com.playhaven.requests.open;

import android.os.*;
import android.preference.*;
import android.app.*;
import android.content.*;
import v2.com.playhaven.utils.*;

public class PHSession
{
    public static final String SCOUNT_PREF = "com_playhaven_time_in_game_scount";
    public static final String SSUM_PREF = "com_playhaven_time_in_game_ssum";
    private static PHSession mSession;
    private long mCurTime;
    private long mSessionCount;
    private boolean mSessionPaused;
    private boolean mSessionStarted;
    private long mSessionTime;
    private long mTotalTime;
    
    static {
        PHSession.mSession = null;
    }
    
    protected PHSession(final Context context) {
        super();
        this.inflate(context);
        this.mSessionStarted = false;
        this.mSessionPaused = true;
    }
    
    public static PHSession getInstance(final Context context) {
        if (PHSession.mSession == null) {
            PHSession.mSession = new PHSession(context);
        }
        return PHSession.mSession;
    }
    
    private long getLastElapsedTime() {
        if (!this.mSessionStarted || this.mSessionPaused) {
            return 0L;
        }
        return (SystemClock.uptimeMillis() - this.mCurTime) / 1000L;
    }
    
    private void inflate(final Context context) {
        final SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext());
        this.mTotalTime = defaultSharedPreferences.getLong("com_playhaven_time_in_game_ssum", 0L);
        this.mSessionCount = defaultSharedPreferences.getLong("com_playhaven_time_in_game_scount", 0L);
    }
    
    private void pauseSession() {
        this.mSessionTime = this.getSessionTime();
        this.mSessionPaused = true;
    }
    
    public static PHSession regenerateInstance(final Context context) {
        getInstance(context).clear(context);
        getInstance(context).reset();
        PHSession.mSession = null;
        return getInstance(context);
    }
    
    public static void register(final Activity activity) {
        if (activity != null) {
            PHSession.mSession = getInstance((Context)activity);
            if (PHSession.mSession.mSessionPaused) {
                PHSession.mSession.resumeSession();
            }
        }
    }
    
    private void resumeSession() {
        this.mCurTime = SystemClock.uptimeMillis();
        this.mSessionPaused = false;
    }
    
    private void save(final Context context) {
        if (!this.mSessionStarted) {
            return;
        }
        final SharedPreferences$Editor edit = PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext()).edit();
        edit.putLong("com_playhaven_time_in_game_ssum", this.mTotalTime + this.getSessionTime());
        edit.putLong("com_playhaven_time_in_game_scount", 1L + this.mSessionCount);
        edit.commit();
    }
    
    public static void unregister(final Activity activity) {
        if (activity != null) {
            PHSession.mSession = getInstance((Context)activity);
            if (!PHSession.mSession.mSessionPaused) {
                PHSession.mSession.pauseSession();
                if (PHSession.mSession.mSessionStarted && activity.isFinishing()) {
                    PHSession.mSession.save((Context)activity);
                }
            }
        }
    }
    
    public void clear(final Context context) {
        final SharedPreferences$Editor edit = PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext()).edit();
        edit.remove("com_playhaven_time_in_game_ssum");
        edit.remove("com_playhaven_time_in_game_scount");
        edit.commit();
    }
    
    public long getSessionCount() {
        return this.mSessionCount;
    }
    
    public long getSessionTime() {
        return this.mSessionTime + this.getLastElapsedTime();
    }
    
    public long getTotalTime() {
        return this.mTotalTime + this.getSessionTime();
    }
    
    public void reset() {
        this.mTotalTime = 0L;
        this.mSessionCount = 0L;
        this.mSessionTime = 0L;
        this.mCurTime = SystemClock.uptimeMillis();
        this.mSessionStarted = false;
        this.mSessionPaused = true;
    }
    
    public void start() {
        PHStringUtil.log("Starting a new session.");
        if (this.mSessionStarted) {
            this.mTotalTime += this.getSessionTime();
            ++this.mSessionCount;
        }
        this.mSessionTime = 0L;
        this.mCurTime = SystemClock.uptimeMillis();
        this.mSessionStarted = true;
    }
    
    public void startAndReset() {
        this.start();
        this.mTotalTime = 0L;
        this.mSessionCount = 0L;
    }
}
