package c.m.x.a.gv;

import android.content.*;
import java.io.*;

public class ac<D>
{
    boolean mAbandoned;
    boolean mContentChanged;
    Context mContext;
    int mId;
    ad<D> mListener;
    boolean mProcessingChange;
    boolean mReset;
    boolean mStarted;
    
    public ac(final Context context) {
        super();
        this.mStarted = false;
        this.mAbandoned = false;
        this.mReset = true;
        this.mContentChanged = false;
        this.mProcessingChange = false;
        this.mContext = context.getApplicationContext();
    }
    
    public void abandon() {
        this.mAbandoned = true;
        this.onAbandon();
    }
    
    public void commitContentChanged() {
        this.mProcessingChange = false;
    }
    
    public String dataToString(final D n) {
        final StringBuilder sb = new StringBuilder(64);
        al.a(n, sb);
        sb.append("}");
        return sb.toString();
    }
    
    public void deliverResult(final D n) {
        if (this.mListener != null) {
            this.mListener.a(this, n);
        }
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        printWriter.print(s);
        printWriter.print("mId=");
        printWriter.print(this.mId);
        printWriter.print(" mListener=");
        printWriter.println(this.mListener);
        if (this.mStarted || this.mContentChanged || this.mProcessingChange) {
            printWriter.print(s);
            printWriter.print("mStarted=");
            printWriter.print(this.mStarted);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.mContentChanged);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.mProcessingChange);
        }
        if (this.mAbandoned || this.mReset) {
            printWriter.print(s);
            printWriter.print("mAbandoned=");
            printWriter.print(this.mAbandoned);
            printWriter.print(" mReset=");
            printWriter.println(this.mReset);
        }
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
    
    public void registerListener(final int mId, final ad<D> mListener) {
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
        this.mProcessingChange = false;
    }
    
    public void rollbackContentChanged() {
        if (this.mProcessingChange) {
            this.mContentChanged = true;
        }
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
        this.mProcessingChange |= mContentChanged;
        return mContentChanged;
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder(64);
        al.a(this, sb);
        sb.append(" id=");
        sb.append(this.mId);
        sb.append("}");
        return sb.toString();
    }
    
    public void unregisterListener(final ad<D> ad) {
        if (this.mListener == null) {
            throw new IllegalStateException("No listener register");
        }
        if (this.mListener != ad) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        this.mListener = null;
    }
}
