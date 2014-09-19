package c.m.x.a.gv;

import android.content.*;
import java.io.*;

public class ac
{
    boolean mAbandoned;
    boolean mContentChanged;
    Context mContext;
    int mId;
    ad mListener;
    boolean mReset;
    boolean mStarted;
    
    public ac(final Context context) {
        super();
        this.mStarted = false;
        this.mAbandoned = false;
        this.mReset = true;
        this.mContentChanged = false;
        this.mContext = context.getApplicationContext();
    }
    
    public void abandon() {
        this.mAbandoned = true;
        this.onAbandon();
    }
    
    public String dataToString(final Object o) {
        final StringBuilder sb = new StringBuilder(64);
        ai.a(o, sb);
        sb.append("}");
        return sb.toString();
    }
    
    public void deliverResult(final Object o) {
        if (this.mListener != null) {
            this.mListener.a(this, o);
        }
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        printWriter.print(s);
        printWriter.print("mId=");
        printWriter.print(this.mId);
        printWriter.print(" mListener=");
        printWriter.println(this.mListener);
        printWriter.print(s);
        printWriter.print("mStarted=");
        printWriter.print(this.mStarted);
        printWriter.print(" mContentChanged=");
        printWriter.print(this.mContentChanged);
        printWriter.print(" mAbandoned=");
        printWriter.print(this.mAbandoned);
        printWriter.print(" mReset=");
        printWriter.println(this.mReset);
    }
    
    public void forceLoad() {
        this.onForceLoad();
    }
    
    public Context getContext() {
        return this.mContext;
    }
    
    public int getId() {
        return this.mId;
    }
    
    public boolean isAbandoned() {
        return this.mAbandoned;
    }
    
    public boolean isReset() {
        return this.mReset;
    }
    
    public boolean isStarted() {
        return this.mStarted;
    }
    
    protected void onAbandon() {
    }
    
    public void onContentChanged() {
        if (this.mStarted) {
            this.forceLoad();
            return;
        }
        this.mContentChanged = true;
    }
    
    protected void onForceLoad() {
    }
    
    protected void onReset() {
    }
    
    protected void onStartLoading() {
    }
    
    protected void onStopLoading() {
    }
    
    public void registerListener(final int mId, final ad mListener) {
        if (this.mListener != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.mListener = mListener;
        this.mId = mId;
    }
    
    public void reset() {
        this.onReset();
        this.mReset = true;
        this.mStarted = false;
        this.mAbandoned = false;
        this.mContentChanged = false;
    }
    
    public final void startLoading() {
        this.mStarted = true;
        this.mReset = false;
        this.mAbandoned = false;
        this.onStartLoading();
    }
    
    public void stopLoading() {
        this.mStarted = false;
        this.onStopLoading();
    }
    
    public boolean takeContentChanged() {
        final boolean mContentChanged = this.mContentChanged;
        this.mContentChanged = false;
        return mContentChanged;
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder(64);
        ai.a(this, sb);
        sb.append(" id=");
        sb.append(this.mId);
        sb.append("}");
        return sb.toString();
    }
    
    public void unregisterListener(final ad ad) {
        if (this.mListener == null) {
            throw new IllegalStateException("No listener register");
        }
        if (this.mListener != ad) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        this.mListener = null;
    }
}
