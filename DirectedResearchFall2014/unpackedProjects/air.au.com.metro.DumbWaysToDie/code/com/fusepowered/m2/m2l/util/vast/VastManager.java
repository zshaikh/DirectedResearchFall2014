package com.fusepowered.m2.m2l.util.vast;

import org.apache.http.client.*;
import com.fusepowered.m2.m2l.factories.*;
import java.io.*;
import org.xml.sax.*;
import javax.xml.parsers.*;
import java.util.*;
import org.apache.http.client.methods.*;
import org.apache.http.*;
import com.fusepowered.m2.m2l.util.*;
import android.os.*;

public class VastManager
{
    static final int MAX_TIMES_TO_FOLLOW_VAST_REDIRECT = 20;
    static final int VAST_REDIRECT_TIMEOUT_MILLISECONDS = 30000;
    private String mClickThroughUrl;
    private List<String> mClickTrackers;
    private HttpClient mHttpClient;
    private List<String> mImpressionTrackers;
    private VastManagerListener mListener;
    private String mMediaFileUrl;
    private int mTimesFollowedVastRedirect;
    private ProcessVastBackgroundTask mVastBackgroundTask;
    private List<String> mVideoCompleteTrackers;
    private List<String> mVideoFirstQuartileTrackers;
    private List<String> mVideoMidpointTrackers;
    private List<String> mVideoStartTrackers;
    private List<String> mVideoThirdQuartileTrackers;
    
    public VastManager() {
        super();
        this.mImpressionTrackers = new ArrayList<String>();
        this.mVideoStartTrackers = new ArrayList<String>();
        this.mVideoFirstQuartileTrackers = new ArrayList<String>();
        this.mVideoMidpointTrackers = new ArrayList<String>();
        this.mVideoThirdQuartileTrackers = new ArrayList<String>();
        this.mVideoCompleteTrackers = new ArrayList<String>();
        this.mClickTrackers = new ArrayList<String>();
        this.mHttpClient = (HttpClient)HttpClientFactory.create(30000);
    }
    
    private void loadVastDataFromXml(final VastXmlManager vastXmlManager) {
        this.mImpressionTrackers.addAll(vastXmlManager.getImpressionTrackers());
        this.mVideoStartTrackers.addAll(vastXmlManager.getVideoStartTrackers());
        this.mVideoFirstQuartileTrackers.addAll(vastXmlManager.getVideoFirstQuartileTrackers());
        this.mVideoMidpointTrackers.addAll(vastXmlManager.getVideoMidpointTrackers());
        this.mVideoThirdQuartileTrackers.addAll(vastXmlManager.getVideoThirdQuartileTrackers());
        this.mVideoCompleteTrackers.addAll(vastXmlManager.getVideoCompleteTrackers());
        this.mClickTrackers.addAll(vastXmlManager.getClickTrackers());
        if (this.mClickThroughUrl == null) {
            this.mClickThroughUrl = vastXmlManager.getClickThroughUrl();
        }
        if (this.mMediaFileUrl == null) {
            this.mMediaFileUrl = vastXmlManager.getMediaFileUrl();
        }
    }
    
    private String processVastFollowingRedirect(final String s) throws IOException, SAXException, ParserConfigurationException {
        final VastXmlManager vastXmlManager = new VastXmlManager();
        vastXmlManager.parseVastXml(s);
        this.loadVastDataFromXml(vastXmlManager);
        final String vastAdTagURI = vastXmlManager.getVastAdTagURI();
        if (vastAdTagURI == null || this.mTimesFollowedVastRedirect >= 20) {
            return null;
        }
        ++this.mTimesFollowedVastRedirect;
        final HttpEntity entity = this.mHttpClient.execute((HttpUriRequest)new HttpGet(vastAdTagURI)).getEntity();
        if (entity != null) {
            return Strings.fromStream(entity.getContent());
        }
        return null;
    }
    
    private void vastProcessComplete(final boolean b) {
        HttpClients.safeShutdown(this.mHttpClient);
        this.mTimesFollowedVastRedirect = 0;
        this.mVastBackgroundTask = null;
        if (!b) {
            this.mListener.onComplete(this);
        }
    }
    
    public void cancel() {
        if (this.mVastBackgroundTask != null) {
            this.mVastBackgroundTask.cancel(true);
        }
    }
    
    public String getClickThroughUrl() {
        return this.mClickThroughUrl;
    }
    
    public List<String> getClickTrackers() {
        return this.mClickTrackers;
    }
    
    public List<String> getImpressionTrackers() {
        return this.mImpressionTrackers;
    }
    
    public String getMediaFileUrl() {
        return this.mMediaFileUrl;
    }
    
    public List<String> getVideoCompleteTrackers() {
        return this.mVideoCompleteTrackers;
    }
    
    public List<String> getVideoFirstQuartileTrackers() {
        return this.mVideoFirstQuartileTrackers;
    }
    
    public List<String> getVideoMidpointTrackers() {
        return this.mVideoMidpointTrackers;
    }
    
    public List<String> getVideoStartTrackers() {
        return this.mVideoStartTrackers;
    }
    
    public List<String> getVideoThirdQuartileTrackers() {
        return this.mVideoThirdQuartileTrackers;
    }
    
    public void processVast(final String s, final VastManagerListener mListener) {
        if (this.mVastBackgroundTask == null) {
            this.mListener = mListener;
            (this.mVastBackgroundTask = new ProcessVastBackgroundTask((ProcessVastBackgroundTask)null)).execute((Object[])new String[] { s });
        }
    }
    
    @Deprecated
    void setTimesFollowedVastRedirect(final int mTimesFollowedVastRedirect) {
        this.mTimesFollowedVastRedirect = mTimesFollowedVastRedirect;
    }
    
    private class ProcessVastBackgroundTask extends AsyncTask<String, Void, Void>
    {
        protected Void doInBackground(final String... array) {
            if (array != null) {
                try {
                    if (array.length > 0) {
                        for (String access$0 = array[0]; access$0 != null && access$0.length() > 0; access$0 = VastManager.this.processVastFollowingRedirect(access$0)) {
                            if (this.isCancelled()) {
                                break;
                            }
                        }
                    }
                }
                catch (IOException ex) {
                    ex.printStackTrace();
                }
                catch (SAXException ex2) {
                    ex2.printStackTrace();
                }
                catch (ParserConfigurationException ex3) {
                    ex3.printStackTrace();
                }
            }
            return null;
        }
        
        protected void onCancelled() {
            VastManager.this.vastProcessComplete(true);
        }
        
        protected void onPostExecute(final Void void1) {
            VastManager.this.vastProcessComplete(false);
        }
    }
    
    public interface VastManagerListener
    {
        void onComplete(VastManager p0);
    }
}
