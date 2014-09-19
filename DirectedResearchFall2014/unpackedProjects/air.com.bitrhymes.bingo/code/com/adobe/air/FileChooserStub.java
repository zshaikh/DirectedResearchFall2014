package com.adobe.air;

import java.util.*;
import java.util.concurrent.locks.*;
import android.app.*;

public class FileChooserStub
{
    public static final String TAG;
    private AIRExpandableFileChooser fileChooser;
    private Condition m_condition;
    private ArrayList<String> m_filenames;
    private ArrayList<String> m_filterList;
    private Lock m_lock;
    private String m_userAction;
    
    static {
        TAG = FileChooserStub.class.toString();
    }
    
    public FileChooserStub() {
        super();
        this.m_filenames = null;
        this.m_userAction = null;
        this.m_filterList = new ArrayList<String>();
        this.m_lock = new ReentrantLock();
        this.m_condition = this.m_lock.newCondition();
    }
    
    public void SetUserAction(final String userAction) {
        this.m_lock.lock();
        this.m_userAction = userAction;
        this.m_condition.signal();
        this.m_lock.unlock();
    }
    
    public void addFilter(final String e) {
        this.m_filterList.add(e);
    }
    
    public String getFilename(final int index) {
        if (index >= this.m_filenames.size()) {
            return null;
        }
        return this.m_filenames.get(index);
    }
    
    public int getNumFilenames() {
        return this.m_filenames.size();
    }
    
    public void show(final String s, final boolean b, final boolean b2) {
        final AndroidActivityWrapper getAndroidActivityWrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
        final Activity activity = getAndroidActivityWrapper.getActivity();
        Activity waitForNewActivity;
        if (activity == null) {
            waitForNewActivity = getAndroidActivityWrapper.WaitForNewActivity();
        }
        else {
            waitForNewActivity = activity;
        }
        waitForNewActivity.runOnUiThread((Runnable)new Runnable() {
            @Override
            public void run() {
                FileChooserStub.this.fileChooser = new AIRExpandableFileChooser(FileChooserStub.this.m_filterList, b, b2, s, FileChooserStub.this);
                FileChooserStub.this.fileChooser.GetDialog().show();
            }
        });
        this.m_lock.lock();
        while (true) {
            try {
                if (this.m_userAction == null) {
                    this.m_condition.await();
                }
                this.m_lock.unlock();
                this.m_filenames = this.fileChooser.GetFileNames();
                if (this.m_filenames != null) {
                    for (int i = 0; i < this.m_filenames.size(); ++i) {}
                }
            }
            catch (InterruptedException ex) {
                this.m_lock.unlock();
                continue;
            }
            finally {
                this.m_lock.unlock();
            }
            break;
        }
    }
    
    public boolean userCancelled() {
        return this.m_userAction == null || this.m_userAction.equals("cancel");
    }
}
