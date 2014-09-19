package com.fusepowered.m1.android;

import android.os.*;
import android.net.*;
import org.json.*;
import android.content.*;
import java.io.*;
import java.util.*;
import java.lang.ref.*;

class VideoAd extends CachedAd implements Parcelable, Externalizable
{
    public static final Parcelable$Creator<VideoAd> CREATOR;
    static final String VIDEO_FILE_ID = "video.dat";
    static final long serialVersionUID = 2679125946930815832L;
    ArrayList<VideoLogEvent> activities;
    ArrayList<VideoImage> buttons;
    String[] cacheComplete;
    String[] cacheFailed;
    String cacheMissURL;
    DTOCachedVideo cachedVideoDto;
    long closeDelayMillis;
    long contentLength;
    long duration;
    String[] endActivity;
    String endOverlayURL;
    String onCompletionUrl;
    boolean reloadNonEndOverlayOnRestart;
    boolean showControls;
    boolean showCountdown;
    String[] startActivity;
    boolean stayInPlayer;
    boolean usingInternalStorage;
    String[] videoError;
    private String videoFileId;
    String webOverlayURL;
    
    static {
        CREATOR = (Parcelable$Creator)new Parcelable$Creator<VideoAd>() {
            public VideoAd createFromParcel(final Parcel parcel) {
                return new VideoAd(parcel);
            }
            
            public VideoAd[] newArray(final int n) {
                return new VideoAd[n];
            }
        };
    }
    
    public VideoAd() {
        super();
        this.buttons = new ArrayList<VideoImage>();
        this.activities = new ArrayList<VideoLogEvent>();
    }
    
    VideoAd(final Parcel parcel) {
        super(parcel);
        this.buttons = new ArrayList<VideoImage>();
        this.activities = new ArrayList<VideoLogEvent>();
        try {
            parcel.readStringArray(this.startActivity = new String[parcel.readInt()]);
            parcel.readStringArray(this.endActivity = new String[parcel.readInt()]);
            final boolean[] array = new boolean[5];
            parcel.readBooleanArray(array);
            this.showControls = array[0];
            this.stayInPlayer = array[1];
            this.showCountdown = array[2];
            this.reloadNonEndOverlayOnRestart = array[3];
            this.usingInternalStorage = array[4];
            this.onCompletionUrl = parcel.readString();
            this.webOverlayURL = parcel.readString();
            this.endOverlayURL = parcel.readString();
            this.cacheMissURL = parcel.readString();
            this.videoFileId = parcel.readString();
            this.duration = parcel.readLong();
            this.contentLength = parcel.readLong();
            this.closeDelayMillis = parcel.readLong();
            this.buttons = (ArrayList<VideoImage>)parcel.readArrayList(VideoImage.class.getClassLoader());
            this.activities = (ArrayList<VideoLogEvent>)parcel.readArrayList(VideoLogEvent.class.getClassLoader());
            parcel.readStringArray(this.cacheComplete = new String[parcel.readInt()]);
            parcel.readStringArray(this.cacheFailed = new String[parcel.readInt()]);
            parcel.readStringArray(this.videoError = new String[parcel.readInt()]);
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    VideoAd(final String s) {
        super();
        this.buttons = new ArrayList<VideoImage>();
        this.activities = new ArrayList<VideoLogEvent>();
        if (s == null) {
            return;
        }
        while (true) {
            try {
                final JSONObject jsonObject = new JSONObject(s);
                if (jsonObject != null) {
                    final JSONObject optJSONObject = jsonObject.optJSONObject("video");
                    if (optJSONObject != null) {
                        this.deserializeFromObj(optJSONObject);
                    }
                }
            }
            catch (JSONException ex) {
                ex.printStackTrace();
                final JSONObject jsonObject = null;
                continue;
            }
            break;
        }
    }
    
    static boolean downloadVideoFile(final Context context, final String s, final String str) {
        final File cacheDirectory = AdCache.getCacheDirectory(context);
        if (cacheDirectory == null || !cacheDirectory.isDirectory()) {
            return false;
        }
        MMSDK.Log.v("Downloading (" + str + "video.dat" + ") content to %s", cacheDirectory);
        final boolean downloadComponent = AdCache.downloadComponent(s, str + "video.dat", cacheDirectory, context);
        MMSDK.Log.v("Caching completed successfully (" + str + "video.dat" + ")? %b", downloadComponent);
        return downloadComponent;
    }
    
    static Uri getVideoUri(final Context context, final String str) {
        return Uri.fromFile(AdCache.getDownloadFile(context, str + "video.dat"));
    }
    
    private void handleSharedVideoFile(final Context context) {
        AdCache.iterateCachedAds(context, 2, (AdCache.Iterator)new VideoIterator(context, this));
    }
    
    static boolean hasVideoFile(final Context context, final String str) {
        return AdCache.hasDownloadFile(context, str + "video.dat");
    }
    
    static void playAd(final Context context, final String s, final HttpRedirection.RedirectionListenerImpl redirectionListenerImpl) {
        if (s != null) {
            final VideoAd videoAd = (VideoAd)AdCache.load(context, s);
            if (videoAd == null || !videoAd.canShow(context, null, false)) {
                MMSDK.Log.v("mmvideo: Ad %s cannot be shown at this time.", s);
                return;
            }
            redirectionListenerImpl.updateLastVideoViewedTime();
            MMSDK.Log.v("mmvideo: attempting to play video %s", s);
            videoAd.show(context, redirectionListenerImpl.creatorAdImplInternalId);
            redirectionListenerImpl.startingVideo();
        }
    }
    
    @Override
    boolean canShow(final Context context, final MMAdImpl mmAdImpl, final boolean b) {
        if (b) {
            return !this.isExpired() && this.isOnDisk(context) && HandShake.sharedHandShake(context).canDisplayCachedAd(mmAdImpl.adType, this.deferredViewStart);
        }
        return !this.isExpired() && this.isOnDisk(context);
    }
    
    @Override
    void delete(final Context context) {
        super.delete(context);
        this.handleSharedVideoFile(context);
        AdCache.cachedVideoWasRemoved(context, this.acid);
        MMSDK.Log.v("Ad %s was deleted.", this.getId());
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    protected void deserializeFromObj(final JSONObject jsonObject) {
        super.deserializeFromObj(jsonObject);
        final JSONArray optJSONArray = jsonObject.optJSONArray("startActivity");
        this.webOverlayURL = jsonObject.optString("overlayURL", (String)null);
        this.endOverlayURL = jsonObject.optString("endURL", (String)null);
        this.cacheMissURL = jsonObject.optString("cacheMissURL", (String)null);
        this.videoFileId = jsonObject.optString("videoFileId", (String)null);
        if (optJSONArray != null) {
            this.startActivity = new String[optJSONArray.length()];
            for (int i = 0; i < optJSONArray.length(); ++i) {
                this.startActivity[i] = optJSONArray.optString(i);
            }
        }
        else {
            this.startActivity = new String[0];
        }
        final JSONArray optJSONArray2 = jsonObject.optJSONArray("endActivity");
        if (optJSONArray2 != null) {
            this.endActivity = new String[optJSONArray2.length()];
            for (int j = 0; j < optJSONArray2.length(); ++j) {
                this.endActivity[j] = optJSONArray2.optString(j);
            }
        }
        else {
            this.endActivity = new String[0];
        }
        final JSONArray optJSONArray3 = jsonObject.optJSONArray("cacheComplete");
        if (optJSONArray3 != null) {
            this.cacheComplete = new String[optJSONArray3.length()];
            for (int k = 0; k < optJSONArray3.length(); ++k) {
                this.cacheComplete[k] = optJSONArray3.optString(k);
            }
        }
        else {
            this.cacheComplete = new String[0];
        }
        final JSONArray optJSONArray4 = jsonObject.optJSONArray("cacheFailed");
        if (optJSONArray4 != null) {
            this.cacheFailed = new String[optJSONArray4.length()];
            for (int l = 0; l < optJSONArray4.length(); ++l) {
                this.cacheFailed[l] = optJSONArray4.optString(l);
            }
        }
        else {
            this.cacheFailed = new String[0];
        }
        final JSONArray optJSONArray5 = jsonObject.optJSONArray("videoError");
        if (optJSONArray5 != null) {
            this.videoError = new String[optJSONArray5.length()];
            for (int n = 0; n < optJSONArray5.length(); ++n) {
                this.videoError[n] = optJSONArray5.optString(n);
            }
        }
        else {
            this.videoError = new String[0];
        }
        this.showControls = jsonObject.optBoolean("showVideoPlayerControls");
        this.showCountdown = jsonObject.optBoolean("showCountdownHUD");
        this.reloadNonEndOverlayOnRestart = jsonObject.optBoolean("reloadOverlayOnRestart");
        final JSONObject optJSONObject = jsonObject.optJSONObject("onCompletion");
        if (optJSONObject != null) {
            this.onCompletionUrl = optJSONObject.optString("url", (String)null);
            this.stayInPlayer = optJSONObject.optBoolean("stayInPlayer");
        }
        this.duration = (long)(1000.0 * jsonObject.optDouble("duration", 0.0));
        this.contentLength = jsonObject.optLong("contentLength");
        this.closeDelayMillis = jsonObject.optLong("closeAfterDelay");
        final JSONArray optJSONArray6 = jsonObject.optJSONArray("buttons");
        if (optJSONArray6 != null) {
            for (int n2 = 0; n2 < optJSONArray6.length(); ++n2) {
                final JSONObject optJSONObject2 = optJSONArray6.optJSONObject(n2);
                if (optJSONObject2 != null) {
                    this.buttons.add(new VideoImage(optJSONObject2));
                }
            }
        }
        final JSONArray optJSONArray7 = jsonObject.optJSONArray("log");
        if (optJSONArray7 != null) {
            for (int n3 = 0; n3 < optJSONArray7.length(); ++n3) {
                final JSONObject optJSONObject3 = optJSONArray7.optJSONObject(n3);
                if (optJSONObject3 != null) {
                    this.activities.add(new VideoLogEvent(optJSONObject3));
                }
            }
        }
    }
    
    @Override
    boolean download(final Context context) {
        final File cacheDirectory = AdCache.getCacheDirectory(context);
        if (cacheDirectory == null || !cacheDirectory.isDirectory()) {
            return false;
        }
        this.usingInternalStorage = AdCache.isInternalDir(context, cacheDirectory);
        MMSDK.Log.v("Downloading content to %s", cacheDirectory);
        boolean b = AdCache.downloadComponent(this.contentUrl, this.videoFileId + "video.dat", cacheDirectory, context);
        if (b) {
            for (int i = 0; i < this.buttons.size(); ++i) {
                final VideoImage videoImage = this.buttons.get(i);
                b = AdCache.downloadComponent(videoImage.imageUrl, this.getId() + videoImage.getImageName(), cacheDirectory, context);
                if (!b) {
                    break;
                }
            }
        }
        if (!b) {
            if (this.downloadAllOrNothing) {
                this.delete(context);
            }
            HttpGetRequest.log(this.cacheFailed);
        }
        else if (b) {
            if (this.acid != null && this.acid.length() > 0) {
                AdCache.cachedVideoWasAdded(context, this.acid);
            }
            HttpGetRequest.log(this.cacheComplete);
        }
        MMSDK.Log.v("Caching completed successfully? %b", b);
        return b;
    }
    
    @Override
    int getType() {
        return 1;
    }
    
    @Override
    String getTypeString() {
        return "Video";
    }
    
    Intent getVideoExtrasIntent(final Context context, final long n) {
        final Intent intent = new Intent();
        intent.putExtra("videoId", this.getId());
        if (n != -4L) {
            intent.putExtra("internalId", n);
        }
        intent.setData(Uri.parse(AdCache.getCacheDirectory(context).getAbsolutePath() + File.separator + this.videoFileId + "video.dat"));
        return intent;
    }
    
    boolean hasEndCard() {
        final Iterator<VideoImage> iterator = this.buttons.iterator();
        while (iterator.hasNext()) {
            if (iterator.next().isLeaveBehind) {
                return true;
            }
        }
        return false;
    }
    
    @Override
    boolean isOnDisk(final Context context) {
        final File cacheDirectory = AdCache.getCacheDirectory(context);
        boolean b = false;
        if (cacheDirectory != null) {
            final boolean exists = cacheDirectory.exists();
            b = false;
            if (exists) {
                final String[] list = cacheDirectory.list(new VideoFilenameFilter(this));
                b = false;
                if (list != null) {
                    final int length = list.length;
                    final int n = 1 + this.buttons.size();
                    b = false;
                    if (length >= n) {
                        b = true;
                    }
                }
                if (b) {
                    if (!new File(cacheDirectory, this.videoFileId + "video.dat").exists()) {
                        b = false;
                    }
                    else {
                        final Iterator<VideoImage> iterator = this.buttons.iterator();
                        while (iterator.hasNext()) {
                            if (!new File(cacheDirectory, this.getId() + iterator.next().getImageName()).exists()) {
                                return false;
                            }
                        }
                    }
                }
            }
        }
        return b;
    }
    
    void logBeginEvent() {
        if (this.startActivity != null) {
            MMSDK.Log.d("Cached video begin event logged");
            for (int i = 0; i < this.startActivity.length; ++i) {
                MMSDK.Event.logEvent(this.startActivity[i]);
            }
        }
    }
    
    void logEndEvent() {
        if (this.endActivity != null) {
            MMSDK.Log.d("Cached video end event logged");
            for (int i = 0; i < this.endActivity.length; ++i) {
                MMSDK.Event.logEvent(this.endActivity[i]);
            }
        }
    }
    
    @Override
    public void readExternal(final ObjectInput objectInput) throws IOException, ClassNotFoundException {
        super.readExternal(objectInput);
        this.showControls = objectInput.readBoolean();
        this.onCompletionUrl = (String)objectInput.readObject();
        this.webOverlayURL = (String)objectInput.readObject();
        this.endOverlayURL = (String)objectInput.readObject();
        this.cacheMissURL = (String)objectInput.readObject();
        this.videoFileId = (String)objectInput.readObject();
        this.stayInPlayer = objectInput.readBoolean();
        this.showCountdown = objectInput.readBoolean();
        this.reloadNonEndOverlayOnRestart = objectInput.readBoolean();
        final int int1 = objectInput.readInt();
        this.startActivity = new String[int1];
        for (int i = 0; i < int1; ++i) {
            this.startActivity[i] = (String)objectInput.readObject();
        }
        final int int2 = objectInput.readInt();
        this.endActivity = new String[int2];
        for (int j = 0; j < int2; ++j) {
            this.endActivity[j] = (String)objectInput.readObject();
        }
        this.duration = objectInput.readLong();
        this.usingInternalStorage = objectInput.readBoolean();
        this.contentLength = objectInput.readLong();
        this.closeDelayMillis = objectInput.readLong();
        final int int3 = objectInput.readInt();
        this.cacheComplete = new String[int3];
        for (int k = 0; k < int3; ++k) {
            this.cacheComplete[k] = (String)objectInput.readObject();
        }
        final int int4 = objectInput.readInt();
        this.cacheFailed = new String[int4];
        for (int l = 0; l < int4; ++l) {
            this.cacheFailed[l] = (String)objectInput.readObject();
        }
        final int int5 = objectInput.readInt();
        this.videoError = new String[int5];
        for (int n = 0; n < int5; ++n) {
            this.videoError[n] = (String)objectInput.readObject();
        }
        this.buttons.clear();
        for (int int6 = objectInput.readInt(), n2 = 0; n2 < int6; ++n2) {
            this.buttons.add((VideoImage)objectInput.readObject());
        }
        this.activities.clear();
        for (int int7 = objectInput.readInt(), n3 = 0; n3 < int7; ++n3) {
            this.activities.add((VideoLogEvent)objectInput.readObject());
        }
    }
    
    @Override
    boolean saveAssets(final Context context) {
        return true;
    }
    
    void setDtoCachedVideo(final DTOCachedVideo cachedVideoDto) {
        this.cachedVideoDto = cachedVideoDto;
    }
    
    @Override
    void show(final Context context, final long n) {
        Utils.IntentUtils.startCachedVideoPlayerActivity(context, this.getVideoExtrasIntent(context, n));
    }
    
    @Override
    public void writeExternal(final ObjectOutput objectOutput) throws IOException {
        super.writeExternal(objectOutput);
        objectOutput.writeBoolean(this.showControls);
        objectOutput.writeObject(this.onCompletionUrl);
        objectOutput.writeObject(this.webOverlayURL);
        objectOutput.writeObject(this.endOverlayURL);
        objectOutput.writeObject(this.cacheMissURL);
        objectOutput.writeObject(this.videoFileId);
        objectOutput.writeBoolean(this.stayInPlayer);
        objectOutput.writeBoolean(this.showCountdown);
        objectOutput.writeBoolean(this.reloadNonEndOverlayOnRestart);
        objectOutput.writeInt(this.startActivity.length);
        final String[] startActivity = this.startActivity;
        for (int length = startActivity.length, i = 0; i < length; ++i) {
            objectOutput.writeObject(startActivity[i]);
        }
        objectOutput.writeInt(this.endActivity.length);
        final String[] endActivity = this.endActivity;
        for (int length2 = endActivity.length, j = 0; j < length2; ++j) {
            objectOutput.writeObject(endActivity[j]);
        }
        objectOutput.writeLong(this.duration);
        objectOutput.writeBoolean(this.usingInternalStorage);
        objectOutput.writeLong(this.contentLength);
        objectOutput.writeLong(this.closeDelayMillis);
        objectOutput.writeInt(this.cacheComplete.length);
        final String[] cacheComplete = this.cacheComplete;
        for (int length3 = cacheComplete.length, k = 0; k < length3; ++k) {
            objectOutput.writeObject(cacheComplete[k]);
        }
        objectOutput.writeInt(this.cacheFailed.length);
        final String[] cacheFailed = this.cacheFailed;
        for (int length4 = cacheFailed.length, l = 0; l < length4; ++l) {
            objectOutput.writeObject(cacheFailed[l]);
        }
        objectOutput.writeInt(this.videoError.length);
        final String[] videoError = this.videoError;
        for (int length5 = videoError.length, n = 0; n < length5; ++n) {
            objectOutput.writeObject(videoError[n]);
        }
        objectOutput.writeInt(this.buttons.size());
        final Iterator<VideoImage> iterator = this.buttons.iterator();
        while (iterator.hasNext()) {
            objectOutput.writeObject(iterator.next());
        }
        objectOutput.writeInt(this.activities.size());
        final Iterator<VideoLogEvent> iterator2 = this.activities.iterator();
        while (iterator2.hasNext()) {
            objectOutput.writeObject(iterator2.next());
        }
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeInt(this.startActivity.length);
        parcel.writeStringArray(this.startActivity);
        parcel.writeInt(this.endActivity.length);
        parcel.writeStringArray(this.endActivity);
        parcel.writeBooleanArray(new boolean[] { this.showControls, this.stayInPlayer, this.showCountdown, this.reloadNonEndOverlayOnRestart, this.usingInternalStorage });
        parcel.writeString(this.onCompletionUrl);
        parcel.writeString(this.endOverlayURL);
        parcel.writeString(this.webOverlayURL);
        parcel.writeString(this.cacheMissURL);
        parcel.writeString(this.videoFileId);
        parcel.writeLong(this.duration);
        parcel.writeLong(this.contentLength);
        parcel.writeLong(this.closeDelayMillis);
        parcel.writeList((List)this.buttons);
        parcel.writeList((List)this.activities);
        parcel.writeInt(this.cacheComplete.length);
        parcel.writeStringArray(this.cacheComplete);
        parcel.writeInt(this.cacheFailed.length);
        parcel.writeStringArray(this.cacheFailed);
        parcel.writeInt(this.videoError.length);
        parcel.writeStringArray(this.videoError);
    }
    
    private static class VideoFilenameFilter implements FilenameFilter
    {
        private WeakReference<VideoAd> videoAdRef;
        
        public VideoFilenameFilter(final VideoAd referent) {
            super();
            this.videoAdRef = new WeakReference<VideoAd>(referent);
        }
        
        @Override
        public boolean accept(final File file, final String s) {
            final VideoAd videoAd = this.videoAdRef.get();
            if (videoAd != null) {
                final String id = videoAd.getId();
                return id != null && s.startsWith(id);
            }
            return false;
        }
    }
    
    private static class VideoIterator extends Iterator
    {
        private WeakReference<Context> contextRef;
        boolean hasSharedVideoFile;
        private WeakReference<VideoAd> videoAdRef;
        
        public VideoIterator(final Context referent, final VideoAd referent2) {
            super();
            this.hasSharedVideoFile = false;
            this.videoAdRef = new WeakReference<VideoAd>(referent2);
            this.contextRef = new WeakReference<Context>(referent);
        }
        
        @Override
        boolean callback(final CachedAd cachedAd) {
            if (cachedAd != null && cachedAd instanceof VideoAd) {
                final VideoAd videoAd = (VideoAd)cachedAd;
                final VideoAd videoAd2 = this.videoAdRef.get();
                if (videoAd2 != null && videoAd.videoFileId.equals(videoAd2.videoFileId)) {
                    this.hasSharedVideoFile = true;
                }
            }
            return super.callback(cachedAd);
        }
        
        void deleteVideoFile(final Context context) {
            final VideoAd videoAd = this.videoAdRef.get();
            if (videoAd != null && AdCache.deleteFile(context, videoAd.videoFileId + "video.dat")) {
                MMSDK.Log.v("VideoAd video file %s was deleted.", videoAd.videoFileId);
            }
        }
        
        @Override
        void done() {
            if (!this.hasSharedVideoFile) {
                final Context context = this.contextRef.get();
                if (context != null) {
                    this.deleteVideoFile(context);
                }
            }
            super.done();
        }
    }
}
