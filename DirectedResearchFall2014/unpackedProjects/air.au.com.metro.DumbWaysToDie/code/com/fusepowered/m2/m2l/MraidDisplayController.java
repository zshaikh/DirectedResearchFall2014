package com.fusepowered.m2.m2l;

import java.net.*;
import android.media.*;
import com.fusepowered.m2.m2l.factories.*;
import org.apache.http.client.methods.*;
import org.apache.http.*;
import android.os.*;
import android.util.*;
import android.graphics.*;
import java.text.*;
import android.app.*;
import com.fusepowered.m2.m2l.util.*;
import android.webkit.*;
import java.util.*;
import com.fusepowered.m2.m2l.resource.*;
import android.graphics.drawable.*;
import android.view.*;
import android.widget.*;
import android.net.*;
import android.content.*;
import java.io.*;
import org.apache.http.client.*;

class MraidDisplayController extends MraidAbstractController
{
    private static final int CLOSE_BUTTON_SIZE_DP = 50;
    private static final String[] DATE_FORMATS;
    private static final String LOGTAG = "MraidDisplayController";
    private static final int MAX_NUMBER_DAYS_IN_MONTH = 31;
    private static final long VIEWABILITY_TIMER_MILLIS = 3000L;
    private FrameLayout mAdContainerLayout;
    private boolean mAdWantsCustomCloseButton;
    private Runnable mCheckViewabilityTask;
    private ImageView mCloseButton;
    protected float mDensity;
    private RelativeLayout mExpansionLayout;
    private final MraidView.ExpansionStyle mExpansionStyle;
    private Handler mHandler;
    private boolean mIsViewable;
    private final MraidView.NativeCloseButtonStyle mNativeCloseButtonStyle;
    private OrientationBroadcastReceiver mOrientationBroadcastReceiver;
    private final int mOriginalRequestedOrientation;
    private FrameLayout mPlaceholderView;
    private FrameLayout mRootView;
    protected int mScreenHeight;
    protected int mScreenWidth;
    private MraidView mTwoPartExpansionView;
    private int mViewIndexInParent;
    private MraidView.ViewState mViewState;
    
    static {
        DATE_FORMATS = new String[] { "yyyy-MM-dd'T'HH:mm:ssZZZZZ", "yyyy-MM-dd'T'HH:mmZZZZZ" };
    }
    
    MraidDisplayController(final MraidView mraidView, final MraidView.ExpansionStyle mExpansionStyle, final MraidView.NativeCloseButtonStyle mNativeCloseButtonStyle) {
        super(mraidView);
        this.mViewState = MraidView.ViewState.HIDDEN;
        this.mCheckViewabilityTask = new Runnable() {
            @Override
            public void run() {
                final boolean checkViewable = MraidDisplayController.this.checkViewable();
                if (MraidDisplayController.this.mIsViewable != checkViewable) {
                    MraidDisplayController.access$1(MraidDisplayController.this, checkViewable);
                    MraidDisplayController.this.getMraidView().fireChangeEventForProperty(MraidViewableProperty.createWithViewable(MraidDisplayController.this.mIsViewable));
                }
                MraidDisplayController.this.mHandler.postDelayed((Runnable)this, 3000L);
            }
        };
        this.mHandler = new Handler();
        this.mOrientationBroadcastReceiver = new OrientationBroadcastReceiver();
        this.mScreenWidth = -1;
        this.mScreenHeight = -1;
        this.mExpansionStyle = mExpansionStyle;
        this.mNativeCloseButtonStyle = mNativeCloseButtonStyle;
        final Context context = this.getContext();
        int requestedOrientation;
        if (context instanceof Activity) {
            requestedOrientation = ((Activity)context).getRequestedOrientation();
        }
        else {
            requestedOrientation = -1;
        }
        this.mOriginalRequestedOrientation = requestedOrientation;
        this.mAdContainerLayout = this.createAdContainerLayout();
        this.mExpansionLayout = this.createExpansionLayout();
        this.mPlaceholderView = this.createPlaceholderView();
        this.initialize();
    }
    
    static /* synthetic */ void access$1(final MraidDisplayController mraidDisplayController, final boolean mIsViewable) {
        mraidDisplayController.mIsViewable = mIsViewable;
    }
    
    private String dayNumberToDayOfMonthString(final int n) throws IllegalArgumentException {
        if (n != 0 && n >= -31 && n <= 31) {
            return new StringBuilder().append(n).toString();
        }
        throw new IllegalArgumentException("invalid day of month " + n);
    }
    
    private String dayNumberToDayOfWeekString(final int i) throws IllegalArgumentException {
        switch (i) {
            default: {
                throw new IllegalArgumentException("invalid day of week " + i);
            }
            case 0: {
                return "SU";
            }
            case 1: {
                return "MO";
            }
            case 2: {
                return "TU";
            }
            case 3: {
                return "WE";
            }
            case 4: {
                return "TH";
            }
            case 5: {
                return "FR";
            }
            case 6: {
                return "SA";
            }
        }
    }
    
    private void downloadImage(final String s) {
        final File pictureStoragePath = this.getPictureStoragePath();
        pictureStoragePath.mkdirs();
        new Thread(new Runnable() {
            private MediaScannerConnection mediaScannerConnection;
            private InputStream pictureInputStream;
            private OutputStream pictureOutputStream;
            private URI uri;
            
            private void loadPictureIntoGalleryApp(final String s) {
                final MoPubMediaScannerConnectionClient moPubMediaScannerConnectionClient = new MoPubMediaScannerConnectionClient(s, (String)null, (MoPubMediaScannerConnectionClient)null);
                moPubMediaScannerConnectionClient.setMediaScannerConnection(this.mediaScannerConnection = new MediaScannerConnection(MraidDisplayController.this.getContext().getApplicationContext(), (MediaScannerConnection$MediaScannerConnectionClient)moPubMediaScannerConnectionClient));
                this.mediaScannerConnection.connect();
            }
            
            @Override
            public void run() {
                try {
                    this.uri = URI.create(s);
                    final HttpResponse execute = ((HttpClient)HttpClientFactory.create()).execute((HttpUriRequest)new HttpGet(this.uri));
                    this.pictureInputStream = execute.getEntity().getContent();
                    final String header = HttpResponses.extractHeader(execute, ResponseHeader.LOCATION);
                    if (header != null) {
                        this.uri = URI.create(header);
                    }
                    final File file = new File(pictureStoragePath, MraidDisplayController.this.getFileNameForUriAndHttpResponse(this.uri, execute));
                    final String string = file.toString();
                    this.pictureOutputStream = new FileOutputStream(file);
                    Streams.copyContent(this.pictureInputStream, this.pictureOutputStream);
                    this.loadPictureIntoGalleryApp(string);
                }
                catch (Exception ex) {
                    MraidDisplayController.this.mHandler.post((Runnable)new Runnable() {
                        @Override
                        public void run() {
                            MraidDisplayController.this.showUserToast("Image failed to download.");
                            MraidDisplayController.this.getMraidView().fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.STORE_PICTURE, "Error downloading and saving image file.");
                            Log.d("MoPub", "Error downloading and saving image file.");
                        }
                    });
                }
                finally {
                    Streams.closeStream(this.pictureInputStream);
                    Streams.closeStream(this.pictureOutputStream);
                }
            }
        }).start();
    }
    
    private void expandLayouts(final View view, int n, int n2) {
        final int n3 = (int)(0.5f + 50.0f * this.mDensity);
        if (n < n3) {
            n = n3;
        }
        if (n2 < n3) {
            n2 = n3;
        }
        final View view2 = new View(this.getContext());
        view2.setBackgroundColor(0);
        view2.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
            public boolean onTouch(final View view, final MotionEvent motionEvent) {
                return true;
            }
        });
        this.mExpansionLayout.addView(view2, (ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
        this.mAdContainerLayout.addView(view, (ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(n, n2);
        relativeLayout$LayoutParams.addRule(13);
        this.mExpansionLayout.addView((View)this.mAdContainerLayout, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
    }
    
    private Context getContext() {
        return this.getMraidView().getContext();
    }
    
    private int getDisplayRotation() {
        return ((WindowManager)this.getContext().getSystemService("window")).getDefaultDisplay().getOrientation();
    }
    
    private String getFileNameForUriAndHttpResponse(final URI uri, final HttpResponse httpResponse) {
        final String path = uri.getPath();
        if (path == null) {
            return null;
        }
        String obj = new File(path).getName();
        final Header firstHeader = httpResponse.getFirstHeader("Content-Type");
        if (firstHeader != null) {
            final String[] split = firstHeader.getValue().split(";");
            final int length = split.length;
            int i = 0;
            while (i < length) {
                final String s = split[i];
                if (s.contains("image/")) {
                    final String string = "." + s.split("/")[1];
                    if (!obj.endsWith(string)) {
                        obj = String.valueOf(obj) + string;
                        break;
                    }
                    break;
                }
                else {
                    ++i;
                }
            }
        }
        return obj;
    }
    
    private File getPictureStoragePath() {
        return new File(Environment.getExternalStorageDirectory(), "Pictures");
    }
    
    private void initialize() {
        this.mViewState = MraidView.ViewState.LOADING;
        this.initializeScreenMetrics();
        this.initializeViewabilityTimer();
        this.mOrientationBroadcastReceiver.register(this.getContext());
    }
    
    private void initializeScreenMetrics() {
        final Context context = this.getContext();
        final DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        this.mDensity = displayMetrics.density;
        final boolean b = context instanceof Activity;
        int top = 0;
        int n = 0;
        if (b) {
            final Window window = ((Activity)context).getWindow();
            final Rect rect = new Rect();
            window.getDecorView().getWindowVisibleDisplayFrame(rect);
            top = rect.top;
            n = window.findViewById(16908290).getTop() - top;
        }
        final int widthPixels = displayMetrics.widthPixels;
        final int n2 = displayMetrics.heightPixels - top - n;
        this.mScreenWidth = (int)(widthPixels * (160.0 / displayMetrics.densityDpi));
        this.mScreenHeight = (int)(n2 * (160.0 / displayMetrics.densityDpi));
    }
    
    private void initializeViewabilityTimer() {
        this.mHandler.removeCallbacks(this.mCheckViewabilityTask);
        this.mHandler.post(this.mCheckViewabilityTask);
    }
    
    private void onOrientationChanged(final int n) {
        this.initializeScreenMetrics();
        this.getMraidView().fireChangeEventForProperty(MraidScreenSizeProperty.createWithSize(this.mScreenWidth, this.mScreenHeight));
    }
    
    private Date parseDate(final String source) {
        Date parse = null;
        int i = 0;
        while (i < MraidDisplayController.DATE_FORMATS.length) {
            while (true) {
                try {
                    parse = new SimpleDateFormat(MraidDisplayController.DATE_FORMATS[i]).parse(source);
                    if (parse != null) {
                        break;
                    }
                    ++i;
                }
                catch (ParseException ex) {
                    continue;
                }
                break;
            }
        }
        return parse;
    }
    
    private String parseRecurrenceRule(final Map<String, String> map) throws IllegalArgumentException {
        final StringBuilder sb = new StringBuilder();
        if (map.containsKey("frequency")) {
            final String anObject = map.get("frequency");
            int int1 = -1;
            if (map.containsKey("interval")) {
                int1 = Integer.parseInt(map.get("interval"));
            }
            if ("daily".equals(anObject)) {
                sb.append("FREQ=DAILY;");
                if (int1 != -1) {
                    sb.append("INTERVAL=" + int1 + ";");
                }
            }
            else if ("weekly".equals(anObject)) {
                sb.append("FREQ=WEEKLY;");
                if (int1 != -1) {
                    sb.append("INTERVAL=" + int1 + ";");
                }
                if (map.containsKey("daysInWeek")) {
                    final String translateWeekIntegersToDays = this.translateWeekIntegersToDays(map.get("daysInWeek"));
                    if (translateWeekIntegersToDays == null) {
                        throw new IllegalArgumentException("invalid ");
                    }
                    sb.append("BYDAY=" + translateWeekIntegersToDays + ";");
                }
            }
            else {
                if (!"monthly".equals(anObject)) {
                    throw new IllegalArgumentException("frequency is only supported for daily, weekly, and monthly.");
                }
                sb.append("FREQ=MONTHLY;");
                if (int1 != -1) {
                    sb.append("INTERVAL=" + int1 + ";");
                }
                if (map.containsKey("daysInMonth")) {
                    final String translateMonthIntegersToDays = this.translateMonthIntegersToDays(map.get("daysInMonth"));
                    if (translateMonthIntegersToDays == null) {
                        throw new IllegalArgumentException();
                    }
                    sb.append("BYMONTHDAY=" + translateMonthIntegersToDays + ";");
                }
            }
        }
        return sb.toString();
    }
    
    private void resetViewToDefaultState() {
        this.setNativeCloseButtonEnabled(false);
        this.mAdContainerLayout.removeAllViewsInLayout();
        this.mExpansionLayout.removeAllViewsInLayout();
        this.mRootView.removeView((View)this.mExpansionLayout);
        this.getMraidView().requestLayout();
        final ViewGroup viewGroup = (ViewGroup)this.mPlaceholderView.getParent();
        viewGroup.addView((View)this.getMraidView(), this.mViewIndexInParent);
        viewGroup.removeView((View)this.mPlaceholderView);
        viewGroup.invalidate();
    }
    
    private void setOrientationLockEnabled(final boolean b) {
        final Context context = this.getContext();
        try {
            final Activity activity = (Activity)context;
            int requestedOrientation;
            if (b) {
                requestedOrientation = activity.getResources().getConfiguration().orientation;
            }
            else {
                requestedOrientation = this.mOriginalRequestedOrientation;
            }
            activity.setRequestedOrientation(requestedOrientation);
        }
        catch (ClassCastException ex) {
            Log.d("MraidDisplayController", "Unable to modify device orientation.");
        }
    }
    
    private void showUserDialog(final String s) {
        new AlertDialog$Builder(this.getContext()).setTitle((CharSequence)"Save Image").setMessage((CharSequence)"Download image to Picture gallery?").setNegativeButton((CharSequence)"Cancel", (DialogInterface$OnClickListener)null).setPositiveButton((CharSequence)"Okay", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
            public void onClick(final DialogInterface dialogInterface, final int n) {
                MraidDisplayController.this.downloadImage(s);
            }
        }).setCancelable(true).show();
    }
    
    private void showUserToast(final String s) {
        this.mHandler.post((Runnable)new Runnable() {
            @Override
            public void run() {
                Toast.makeText(MraidDisplayController.this.getContext(), (CharSequence)s, 0).show();
            }
        });
    }
    
    private void swapViewWithPlaceholderView() {
        final ViewGroup viewGroup = (ViewGroup)this.getMraidView().getParent();
        if (viewGroup == null) {
            return;
        }
        int childCount;
        int mViewIndexInParent;
        for (childCount = viewGroup.getChildCount(), mViewIndexInParent = 0; mViewIndexInParent < childCount && viewGroup.getChildAt(mViewIndexInParent) != this.getMraidView(); ++mViewIndexInParent) {}
        this.mViewIndexInParent = mViewIndexInParent;
        viewGroup.addView((View)this.mPlaceholderView, mViewIndexInParent, new ViewGroup$LayoutParams(this.getMraidView().getWidth(), this.getMraidView().getHeight()));
        viewGroup.removeView((View)this.getMraidView());
    }
    
    private Map<String, Object> translateJSParamsToAndroidCalendarEventMapping(final Map<String, String> map) throws Exception {
        final HashMap<String, String> hashMap = (HashMap<String, String>)new HashMap<String, Integer>();
        if (!map.containsKey("description") || !map.containsKey("start")) {
            throw new IllegalArgumentException("Missing start and description fields");
        }
        hashMap.put("title", (Integer)map.get("description"));
        if (!map.containsKey("start") || map.get("start") == null) {
            throw new IllegalArgumentException("Invalid calendar event: start is null.");
        }
        final Date date = this.parseDate(map.get("start"));
        if (date != null) {
            hashMap.put("beginTime", (Integer)date.getTime());
            if (map.containsKey("end") && map.get("end") != null) {
                final Date date2 = this.parseDate(map.get("end"));
                if (date2 == null) {
                    throw new IllegalArgumentException("Invalid calendar event: end time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00");
                }
                hashMap.put("endTime", (Integer)date2.getTime());
            }
            if (map.containsKey("location")) {
                hashMap.put("eventLocation", (Integer)map.get("location"));
            }
            if (map.containsKey("summary")) {
                hashMap.put("description", (Integer)map.get("summary"));
            }
            if (map.containsKey("transparency")) {
                int i;
                if (map.get("transparency").equals("transparent")) {
                    i = 1;
                }
                else {
                    i = 0;
                }
                hashMap.put("availability", i);
            }
            hashMap.put("rrule", this.parseRecurrenceRule(map));
            return (Map<String, Object>)hashMap;
        }
        throw new IllegalArgumentException("Invalid calendar event: start time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00");
    }
    
    private String translateMonthIntegersToDays(final String s) throws IllegalArgumentException {
        final StringBuilder sb = new StringBuilder();
        final boolean[] array = new boolean[63];
        final String[] split = s.split(",");
        for (int i = 0; i < split.length; ++i) {
            final int int1 = Integer.parseInt(split[i]);
            if (!array[int1 + 31]) {
                sb.append(String.valueOf(this.dayNumberToDayOfMonthString(int1)) + ",");
                array[int1 + 31] = true;
            }
        }
        if (split.length == 0) {
            throw new IllegalArgumentException("must have at least 1 day of the month if specifying repeating weekly");
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }
    
    private String translateWeekIntegersToDays(final String s) throws IllegalArgumentException {
        final StringBuilder sb = new StringBuilder();
        final boolean[] array = new boolean[7];
        final String[] split = s.split(",");
        for (int i = 0; i < split.length; ++i) {
            int int1 = Integer.parseInt(split[i]);
            if (int1 == 7) {
                int1 = 0;
            }
            if (!array[int1]) {
                sb.append(String.valueOf(this.dayNumberToDayOfWeekString(int1)) + ",");
                array[int1] = true;
            }
        }
        if (split.length == 0) {
            throw new IllegalArgumentException("must have at least 1 day of the week if specifying repeating weekly");
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }
    
    protected boolean checkViewable() {
        return true;
    }
    
    protected void close() {
        if (this.mViewState == MraidView.ViewState.EXPANDED) {
            this.resetViewToDefaultState();
            this.setOrientationLockEnabled(false);
            this.mViewState = MraidView.ViewState.DEFAULT;
            this.getMraidView().fireChangeEventForProperty(MraidStateProperty.createWithViewState(this.mViewState));
        }
        else if (this.mViewState == MraidView.ViewState.DEFAULT) {
            this.getMraidView().setVisibility(4);
            this.mViewState = MraidView.ViewState.HIDDEN;
            this.getMraidView().fireChangeEventForProperty(MraidStateProperty.createWithViewState(this.mViewState));
        }
        if (this.getMraidView().getMraidListener() != null) {
            this.getMraidView().getMraidListener().onClose(this.getMraidView(), this.mViewState);
        }
    }
    
    FrameLayout createAdContainerLayout() {
        return new FrameLayout(this.getContext());
    }
    
    protected void createCalendarEvent(final Map<String, String> map) {
        final Context context = this.getMraidView().getContext();
        if (Mraids.isCalendarAvailable(context)) {
            try {
                final Map<String, Object> translateJSParamsToAndroidCalendarEventMapping = this.translateJSParamsToAndroidCalendarEventMapping(map);
                final Intent setType = new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.item/event");
                for (final String s : translateJSParamsToAndroidCalendarEventMapping.keySet()) {
                    final Long value = translateJSParamsToAndroidCalendarEventMapping.get(s);
                    if (!(value instanceof Long)) {
                        goto Label_0155;
                    }
                    setType.putExtra(s, (long)value);
                }
                setType.setFlags(268435456);
                context.startActivity(setType);
                return;
            }
            catch (ActivityNotFoundException ex2) {
                Log.d("MraidDisplayController", "no calendar app installed");
                this.getMraidView().fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.CREATE_CALENDAR_EVENT, "Action is unsupported on this device - no calendar app installed");
                return;
            }
            catch (IllegalArgumentException ex) {
                Log.d("MraidDisplayController", "create calendar: invalid parameters " + ex.getMessage());
                this.getMraidView().fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.CREATE_CALENDAR_EVENT, ex.getMessage());
                return;
            }
            catch (Exception ex3) {
                Log.d("MraidDisplayController", "could not create calendar event");
                this.getMraidView().fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.CREATE_CALENDAR_EVENT, "could not create calendar event");
                return;
            }
        }
        Log.d("MraidDisplayController", "unsupported action createCalendarEvent for devices pre-ICS");
        this.getMraidView().fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.CREATE_CALENDAR_EVENT, "Action is unsupported on this device (need Android version Ice Cream Sandwich or above)");
    }
    
    RelativeLayout createExpansionLayout() {
        return new RelativeLayout(this.getContext());
    }
    
    FrameLayout createPlaceholderView() {
        return new FrameLayout(this.getContext());
    }
    
    public void destroy() {
        this.mHandler.removeCallbacks(this.mCheckViewabilityTask);
        try {
            this.mOrientationBroadcastReceiver.unregister();
        }
        catch (IllegalArgumentException ex) {
            if (!ex.getMessage().contains("Receiver not registered")) {
                throw ex;
            }
        }
    }
    
    protected void expand(final String s, final int n, final int n2, final boolean b, final boolean orientationLockEnabled) {
        if (this.mExpansionStyle != MraidView.ExpansionStyle.DISABLED) {
            if (s != null && !URLUtil.isValidUrl(s)) {
                this.getMraidView().fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.EXPAND, "URL passed to expand() was invalid.");
                return;
            }
            this.mRootView = (FrameLayout)this.getMraidView().getRootView().findViewById(16908290);
            this.useCustomClose(b);
            this.setOrientationLockEnabled(orientationLockEnabled);
            this.swapViewWithPlaceholderView();
            MraidView mraidView = this.getMraidView();
            if (s != null) {
                (this.mTwoPartExpansionView = new MraidView(this.getContext(), this.getMraidView().getAdConfiguration(), MraidView.ExpansionStyle.DISABLED, MraidView.NativeCloseButtonStyle.AD_CONTROLLED, MraidView.PlacementType.INLINE)).setMraidListener((MraidView.MraidListener)new MraidView.BaseMraidListener() {
                    @Override
                    public void onClose(final MraidView mraidView, final ViewState viewState) {
                        MraidDisplayController.this.close();
                    }
                });
                this.mTwoPartExpansionView.loadUrl(s);
                mraidView = this.mTwoPartExpansionView;
            }
            this.expandLayouts((View)mraidView, (int)(n * this.mDensity), (int)(n2 * this.mDensity));
            this.mRootView.addView((View)this.mExpansionLayout, (ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
            if (this.mNativeCloseButtonStyle == MraidView.NativeCloseButtonStyle.ALWAYS_VISIBLE || (!this.mAdWantsCustomCloseButton && this.mNativeCloseButtonStyle != MraidView.NativeCloseButtonStyle.ALWAYS_HIDDEN)) {
                this.setNativeCloseButtonEnabled(true);
            }
            this.mViewState = MraidView.ViewState.EXPANDED;
            this.getMraidView().fireChangeEventForProperty(MraidStateProperty.createWithViewState(this.mViewState));
            if (this.getMraidView().getMraidListener() != null) {
                this.getMraidView().getMraidListener().onExpand(this.getMraidView());
            }
        }
    }
    
    protected void getCurrentPosition() {
        this.getMraidView().fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.GET_CURRENT_POSITION, "Unsupported action getCurrentPosition");
    }
    
    protected void getDefaultPosition() {
        this.getMraidView().fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.GET_DEFAULT_POSITION, "Unsupported action getDefaultPosition");
    }
    
    protected void getMaxSize() {
        this.getMraidView().fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.GET_MAX_SIZE, "Unsupported action getMaxSize");
    }
    
    protected void getScreenSize() {
        this.getMraidView().fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.GET_SCREEN_SIZE, "Unsupported action getScreenSize");
    }
    
    protected void initializeJavaScriptState() {
        final ArrayList<MraidProperty> list = (ArrayList<MraidProperty>)new ArrayList<MraidScreenSizeProperty>();
        list.add(MraidScreenSizeProperty.createWithSize(this.mScreenWidth, this.mScreenHeight));
        list.add(MraidViewableProperty.createWithViewable(this.mIsViewable));
        this.getMraidView().fireChangeEventForProperties(list);
        this.mViewState = MraidView.ViewState.DEFAULT;
        this.getMraidView().fireChangeEventForProperty(MraidStateProperty.createWithViewState(this.mViewState));
        this.initializeSupportedFunctionsProperty();
    }
    
    protected void initializeSupportedFunctionsProperty() {
        final Context context = this.getContext();
        this.getMraidView().fireChangeEventForProperty(new MraidSupportsProperty().withTel(Mraids.isTelAvailable(context)).withSms(Mraids.isSmsAvailable(context)).withCalendar(Mraids.isCalendarAvailable(context)).withInlineVideo(Mraids.isInlineVideoAvailable(context)).withStorePicture(Mraids.isStorePictureSupported(context)));
    }
    
    protected boolean isExpanded() {
        return this.mViewState == MraidView.ViewState.EXPANDED;
    }
    
    protected void setNativeCloseButtonEnabled(final boolean b) {
        if (this.mRootView != null) {
            if (b) {
                if (this.mCloseButton == null) {
                    final StateListDrawable imageDrawable = new StateListDrawable();
                    imageDrawable.addState(new int[] { -16842919 }, (Drawable)Drawables.INTERSTITIAL_CLOSE_BUTTON_NORMAL.decodeImage(this.mRootView.getContext()));
                    imageDrawable.addState(new int[] { 16842919 }, (Drawable)Drawables.INTERSTITIAL_CLOSE_BUTTON_PRESSED.decodeImage(this.mRootView.getContext()));
                    (this.mCloseButton = (ImageView)new ImageButton(this.getContext())).setImageDrawable((Drawable)imageDrawable);
                    this.mCloseButton.setBackgroundDrawable((Drawable)null);
                    this.mCloseButton.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
                        public void onClick(final View view) {
                            MraidDisplayController.this.close();
                        }
                    });
                }
                final int n = (int)(0.5f + 50.0f * this.mDensity);
                this.mAdContainerLayout.addView((View)this.mCloseButton, (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(n, n, 5));
            }
            else {
                this.mAdContainerLayout.removeView((View)this.mCloseButton);
            }
            final MraidView mraidView = this.getMraidView();
            if (mraidView.getOnCloseButtonStateChangeListener() != null) {
                mraidView.getOnCloseButtonStateChangeListener().onCloseButtonStateChange(mraidView, b);
            }
        }
    }
    
    protected void showUserDownloadImageAlert(final String s) {
        final Context context = this.getContext();
        if (!Mraids.isStorePictureSupported(context)) {
            this.getMraidView().fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.STORE_PICTURE, "Error downloading file - the device does not have an SD card mounted, or the Android permission is not granted.");
            Log.d("MoPub", "Error downloading file - the device does not have an SD card mounted, or the Android permission is not granted.");
            return;
        }
        if (context instanceof Activity) {
            this.showUserDialog(s);
            return;
        }
        this.showUserToast("Downloading image to Picture gallery...");
        this.downloadImage(s);
    }
    
    protected void showVideo(final String s) {
        M2RvpActivity.startMraid(this.getContext(), s);
    }
    
    protected void useCustomClose(final boolean mAdWantsCustomCloseButton) {
        this.mAdWantsCustomCloseButton = mAdWantsCustomCloseButton;
        final MraidView mraidView = this.getMraidView();
        final boolean b = !mAdWantsCustomCloseButton;
        if (mraidView.getOnCloseButtonStateChangeListener() != null) {
            mraidView.getOnCloseButtonStateChangeListener().onCloseButtonStateChange(mraidView, b);
        }
    }
    
    private class MoPubMediaScannerConnectionClient implements MediaScannerConnection$MediaScannerConnectionClient
    {
        private final String mFilename;
        private MediaScannerConnection mMediaScannerConnection;
        private final String mMimeType;
        
        private MoPubMediaScannerConnectionClient(final String mFilename, final String mMimeType) {
            super();
            this.mFilename = mFilename;
            this.mMimeType = mMimeType;
        }
        
        private void setMediaScannerConnection(final MediaScannerConnection mMediaScannerConnection) {
            this.mMediaScannerConnection = mMediaScannerConnection;
        }
        
        public void onMediaScannerConnected() {
            if (this.mMediaScannerConnection != null) {
                this.mMediaScannerConnection.scanFile(this.mFilename, this.mMimeType);
            }
        }
        
        public void onScanCompleted(final String s, final Uri uri) {
            if (this.mMediaScannerConnection != null) {
                this.mMediaScannerConnection.disconnect();
            }
        }
    }
    
    class OrientationBroadcastReceiver extends BroadcastReceiver
    {
        private Context mContext;
        private int mLastRotation;
        
        private boolean isRegistered() {
            return this.mContext != null;
        }
        
        public void onReceive(final Context context, final Intent intent) {
            if (this.isRegistered() && intent.getAction().equals("android.intent.action.CONFIGURATION_CHANGED")) {
                final int access$3 = MraidDisplayController.this.getDisplayRotation();
                if (access$3 != this.mLastRotation) {
                    this.mLastRotation = access$3;
                    MraidDisplayController.this.onOrientationChanged(this.mLastRotation);
                }
            }
        }
        
        public void register(final Context mContext) {
            (this.mContext = mContext).registerReceiver((BroadcastReceiver)this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
        }
        
        public void unregister() {
            this.mContext.unregisterReceiver((BroadcastReceiver)this);
            this.mContext = null;
        }
    }
}
