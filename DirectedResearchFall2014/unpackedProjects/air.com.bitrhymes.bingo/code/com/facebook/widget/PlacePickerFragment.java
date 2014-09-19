package com.facebook.widget;

import android.location.*;
import com.bitrhymes.facebookext.*;
import android.content.*;
import com.facebook.model.*;
import java.util.*;
import com.facebook.*;
import android.app.*;
import android.view.inputmethod.*;
import android.util.*;
import com.facebook.android.*;
import android.content.res.*;
import com.facebook.internal.*;
import android.os.*;
import android.view.*;
import android.widget.*;
import android.text.*;

public class PlacePickerFragment extends PickerFragment<GraphPlace>
{
    private static final String CATEGORY = "category";
    public static final int DEFAULT_RADIUS_IN_METERS = 1000;
    public static final int DEFAULT_RESULTS_LIMIT = 100;
    private static final String ID = "id";
    private static final String LOCATION = "location";
    public static final String LOCATION_BUNDLE_KEY = "com.facebook.widget.PlacePickerFragment.Location";
    private static final String NAME = "name";
    public static final String RADIUS_IN_METERS_BUNDLE_KEY = "com.facebook.widget.PlacePickerFragment.RadiusInMeters";
    public static final String RESULTS_LIMIT_BUNDLE_KEY = "com.facebook.widget.PlacePickerFragment.ResultsLimit";
    public static final String SEARCH_TEXT_BUNDLE_KEY = "com.facebook.widget.PlacePickerFragment.SearchText";
    public static final String SHOW_SEARCH_BOX_BUNDLE_KEY = "com.facebook.widget.PlacePickerFragment.ShowSearchBox";
    private static final String TAG = "PlacePickerFragment";
    private static final String WERE_HERE_COUNT = "were_here_count";
    private static final int searchTextTimerDelayInMilliseconds = 2000;
    private boolean hasSearchTextChangedSinceLastQuery;
    private Location location;
    private int radiusInMeters;
    private int resultsLimit;
    private EditText searchBox;
    private String searchText;
    private Timer searchTextTimer;
    private boolean showSearchBox;
    
    public PlacePickerFragment() {
        this(null);
    }
    
    public PlacePickerFragment(final Bundle placePickerSettingsFromBundle) {
        super(GraphPlace.class, FacebookExt.context.getResourceId("layout.com_facebook_placepickerfragment"), placePickerSettingsFromBundle);
        this.radiusInMeters = 1000;
        this.resultsLimit = 100;
        this.showSearchBox = true;
        this.setPlacePickerSettingsFromBundle(placePickerSettingsFromBundle);
    }
    
    private Request createRequest(final Location location, final int n, final int n2, final String s, final Set<String> c, final Session session) {
        final Request placesSearchRequest = Request.newPlacesSearchRequest(session, location, n, n2, s, null);
        final HashSet<Object> set = new HashSet<Object>(c);
        set.addAll(Arrays.asList("id", "name", "location", "category", "were_here_count"));
        final String pictureFieldSpecifier = this.adapter.getPictureFieldSpecifier();
        if (pictureFieldSpecifier != null) {
            set.add(pictureFieldSpecifier);
        }
        final Bundle parameters = placesSearchRequest.getParameters();
        parameters.putString("fields", TextUtils.join((CharSequence)",", (Iterable)set));
        placesSearchRequest.setParameters(parameters);
        return placesSearchRequest;
    }
    
    private Timer createSearchTextTimer() {
        final Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                PlacePickerFragment.this.onSearchTextTimerTriggered();
            }
        }, 0L, 2000L);
        return timer;
    }
    
    private void onSearchTextTimerTriggered() {
        if (this.hasSearchTextChangedSinceLastQuery) {
            new Handler(Looper.getMainLooper()).post((Runnable)new Runnable() {
                @Override
                public void run() {
                    Label_0209: {
                        try {
                            PlacePickerFragment.this.loadData(true);
                            if (0 != 0) {
                                final OnErrorListener onErrorListener = PlacePickerFragment.this.getOnErrorListener();
                                if (onErrorListener == null) {
                                    break Label_0209;
                                }
                                onErrorListener.onError(PlacePickerFragment.this, null);
                            }
                            return;
                        }
                        catch (FacebookException ex) {
                            if (ex == null) {
                                return;
                            }
                            final OnErrorListener onErrorListener2 = PlacePickerFragment.this.getOnErrorListener();
                            if (onErrorListener2 != null) {
                                onErrorListener2.onError(PlacePickerFragment.this, ex);
                                return;
                            }
                            Logger.log(LoggingBehavior.REQUESTS, "PlacePickerFragment", "Error loading data : %s", ex);
                            return;
                        }
                        catch (Exception ex3) {
                            final FacebookException ex2 = new FacebookException(ex3);
                            if (ex2 == null) {
                                return;
                            }
                            final OnErrorListener onErrorListener3 = PlacePickerFragment.this.getOnErrorListener();
                            if (onErrorListener3 != null) {
                                onErrorListener3.onError(PlacePickerFragment.this, ex2);
                                return;
                            }
                            Logger.log(LoggingBehavior.REQUESTS, "PlacePickerFragment", "Error loading data : %s", ex2);
                            return;
                        }
                        finally {
                            while (true) {
                                if (0 == 0) {
                                    break Label_0186;
                                }
                                final OnErrorListener onErrorListener4 = PlacePickerFragment.this.getOnErrorListener();
                                if (onErrorListener4 != null) {
                                    onErrorListener4.onError(PlacePickerFragment.this, null);
                                    break Label_0186;
                                }
                                Logger.log(LoggingBehavior.REQUESTS, "PlacePickerFragment", "Error loading data : %s", null);
                                break Label_0186;
                                continue;
                            }
                        }
                    }
                    Logger.log(LoggingBehavior.REQUESTS, "PlacePickerFragment", "Error loading data : %s", null);
                }
            });
            return;
        }
        this.searchTextTimer.cancel();
        this.searchTextTimer = null;
    }
    
    private void setPlacePickerSettingsFromBundle(final Bundle bundle) {
        if (bundle != null) {
            this.setRadiusInMeters(bundle.getInt("com.facebook.widget.PlacePickerFragment.RadiusInMeters", this.radiusInMeters));
            this.setResultsLimit(bundle.getInt("com.facebook.widget.PlacePickerFragment.ResultsLimit", this.resultsLimit));
            if (bundle.containsKey("com.facebook.widget.PlacePickerFragment.SearchText")) {
                this.setSearchText(bundle.getString("com.facebook.widget.PlacePickerFragment.SearchText"));
            }
            if (bundle.containsKey("com.facebook.widget.PlacePickerFragment.Location")) {
                this.setLocation((Location)bundle.getParcelable("com.facebook.widget.PlacePickerFragment.Location"));
            }
            this.showSearchBox = bundle.getBoolean("com.facebook.widget.PlacePickerFragment.ShowSearchBox", this.showSearchBox);
        }
    }
    
    @Override
    PickerFragmentAdapter<GraphPlace> createAdapter() {
        final PickerFragmentAdapter<GraphPlace> pickerFragmentAdapter = new PickerFragmentAdapter<GraphPlace>(this, this.getActivity()) {
            @Override
            protected int getDefaultPicture() {
                return FacebookExt.context.getResourceId("drawable.com_facebook_place_default_icon");
            }
            
            @Override
            protected int getGraphObjectRowLayoutId(final GraphPlace graphPlace) {
                return FacebookExt.context.getResourceId("layout.com_facebook_placepickerfragment_list_row");
            }
            
            @Override
            protected CharSequence getSubTitleOfGraphObject(final GraphPlace graphPlace) {
                final String category = graphPlace.getCategory();
                final Integer n = (Integer)graphPlace.getProperty("were_here_count");
                String string;
                if (category != null && n != null) {
                    string = PlacePickerFragment.this.getString(FacebookExt.context.getResourceId("string.com_facebook_placepicker_subtitle_format"), category, n);
                }
                else {
                    if (category == null && n != null) {
                        return PlacePickerFragment.this.getString(FacebookExt.context.getResourceId("string.com_facebook_placepicker_subtitle_were_here_only_format"), n);
                    }
                    string = null;
                    if (category != null) {
                        string = null;
                        if (n == null) {
                            return PlacePickerFragment.this.getString(FacebookExt.context.getResourceId("string.com_facebook_placepicker_subtitle_catetory_only_format"), category);
                        }
                    }
                }
                return string;
            }
        };
        pickerFragmentAdapter.setShowCheckbox(false);
        pickerFragmentAdapter.setShowPicture(this.getShowPictures());
        return pickerFragmentAdapter;
    }
    
    @Override
    LoadingStrategy createLoadingStrategy() {
        return new AsNeededLoadingStrategy((AsNeededLoadingStrategy)null);
    }
    
    @Override
    SelectionStrategy createSelectionStrategy() {
        return new SingleSelectionStrategy(this);
    }
    
    @Override
    String getDefaultTitleText() {
        return this.getString(FacebookExt.context.getResourceId("string.com_facebook_nearby"));
    }
    
    public Location getLocation() {
        return this.location;
    }
    
    public int getRadiusInMeters() {
        return this.radiusInMeters;
    }
    
    @Override
    Request getRequestForLoadData(final Session session) {
        return this.createRequest(this.location, this.radiusInMeters, this.resultsLimit, this.searchText, this.extraFields, session);
    }
    
    public int getResultsLimit() {
        return this.resultsLimit;
    }
    
    public String getSearchText() {
        return this.searchText;
    }
    
    public GraphPlace getSelection() {
        final List<GraphPlace> selectedGraphObjects = this.getSelectedGraphObjects();
        if (selectedGraphObjects != null && !selectedGraphObjects.isEmpty()) {
            return selectedGraphObjects.iterator().next();
        }
        return null;
    }
    
    @Override
    void logAppEvents(final boolean b) {
        final AppEventsLogger logger = AppEventsLogger.newLogger((Context)this.getActivity(), this.getSession());
        final Bundle bundle = new Bundle();
        String s;
        if (b) {
            s = "Completed";
        }
        else {
            s = "Unknown";
        }
        bundle.putString("fb_dialog_outcome", s);
        int n;
        if (this.getSelection() != null) {
            n = 1;
        }
        else {
            n = 0;
        }
        bundle.putInt("num_places_picked", n);
        logger.logSdkEvent("fb_place_picker_usage", null, bundle);
    }
    
    @Override
    public void onAttach(final Activity activity) {
        super.onAttach(activity);
        if (this.searchBox != null) {
            ((InputMethodManager)this.getActivity().getSystemService("input_method")).showSoftInput((View)this.searchBox, 1);
        }
    }
    
    @Override
    public void onDetach() {
        super.onDetach();
        if (this.searchBox != null) {
            ((InputMethodManager)this.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(this.searchBox.getWindowToken(), 0);
        }
    }
    
    @Override
    public void onInflate(final Activity activity, final AttributeSet set, final Bundle bundle) {
        super.onInflate(activity, set, bundle);
        final TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(set, R.styleable.com_facebook_place_picker_fragment);
        this.setRadiusInMeters(obtainStyledAttributes.getInt(0, this.radiusInMeters));
        this.setResultsLimit(obtainStyledAttributes.getInt(1, this.resultsLimit));
        if (obtainStyledAttributes.hasValue(1)) {
            this.setSearchText(obtainStyledAttributes.getString(2));
        }
        this.showSearchBox = obtainStyledAttributes.getBoolean(3, this.showSearchBox);
        obtainStyledAttributes.recycle();
    }
    
    @Override
    void onLoadingData() {
        this.hasSearchTextChangedSinceLastQuery = false;
    }
    
    public void onSearchBoxTextChanged(String searchText, final boolean b) {
        if (b || !Utility.stringsEqualOrEmpty(this.searchText, searchText)) {
            if (TextUtils.isEmpty((CharSequence)searchText)) {
                searchText = null;
            }
            this.searchText = searchText;
            this.hasSearchTextChangedSinceLastQuery = true;
            if (this.searchTextTimer == null) {
                this.searchTextTimer = this.createSearchTextTimer();
            }
        }
    }
    
    @Override
    void saveSettingsToBundle(final Bundle bundle) {
        super.saveSettingsToBundle(bundle);
        bundle.putInt("com.facebook.widget.PlacePickerFragment.RadiusInMeters", this.radiusInMeters);
        bundle.putInt("com.facebook.widget.PlacePickerFragment.ResultsLimit", this.resultsLimit);
        bundle.putString("com.facebook.widget.PlacePickerFragment.SearchText", this.searchText);
        bundle.putParcelable("com.facebook.widget.PlacePickerFragment.Location", (Parcelable)this.location);
        bundle.putBoolean("com.facebook.widget.PlacePickerFragment.ShowSearchBox", this.showSearchBox);
    }
    
    public void setLocation(final Location location) {
        this.location = location;
    }
    
    public void setRadiusInMeters(final int radiusInMeters) {
        this.radiusInMeters = radiusInMeters;
    }
    
    public void setResultsLimit(final int resultsLimit) {
        this.resultsLimit = resultsLimit;
    }
    
    public void setSearchText(String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            s = null;
        }
        this.searchText = s;
        if (this.searchBox != null) {
            this.searchBox.setText((CharSequence)s);
        }
    }
    
    @Override
    public void setSettingsFromBundle(final Bundle bundle) {
        super.setSettingsFromBundle(bundle);
        this.setPlacePickerSettingsFromBundle(bundle);
    }
    
    @Override
    void setupViews(final ViewGroup viewGroup) {
        if (this.showSearchBox) {
            final ListView listView = (ListView)viewGroup.findViewById(FacebookExt.context.getResourceId("id.com_facebook_picker_list_view"));
            listView.addHeaderView(this.getActivity().getLayoutInflater().inflate(FacebookExt.context.getResourceId("layout.com_facebook_picker_search_box"), (ViewGroup)listView, false), (Object)null, false);
            (this.searchBox = (EditText)viewGroup.findViewById(FacebookExt.context.getResourceId("id.com_facebook_picker_search_text"))).addTextChangedListener((TextWatcher)new SearchTextWatcher((SearchTextWatcher)null));
            if (!TextUtils.isEmpty((CharSequence)this.searchText)) {
                this.searchBox.setText((CharSequence)this.searchText);
            }
        }
    }
    
    private class AsNeededLoadingStrategy extends LoadingStrategy
    {
        @Override
        public void attach(final GraphObjectAdapter<GraphPlace> graphObjectAdapter) {
            super.attach((GraphObjectAdapter<T>)graphObjectAdapter);
            this.adapter.setDataNeededListener((GraphObjectAdapter.DataNeededListener)new GraphObjectAdapter.DataNeededListener() {
                @Override
                public void onDataNeeded() {
                    if (!AsNeededLoadingStrategy.this.loader.isLoading()) {
                        AsNeededLoadingStrategy.this.loader.followNextLink();
                    }
                }
            });
        }
        
        @Override
        protected void onLoadFinished(final GraphObjectPagingLoader<GraphPlace> graphObjectPagingLoader, final SimpleGraphObjectCursor<GraphPlace> simpleGraphObjectCursor) {
            super.onLoadFinished((GraphObjectPagingLoader<T>)graphObjectPagingLoader, (SimpleGraphObjectCursor<T>)simpleGraphObjectCursor);
            if (simpleGraphObjectCursor != null && !graphObjectPagingLoader.isLoading()) {
                PlacePickerFragment.this.hideActivityCircle();
                if (simpleGraphObjectCursor.isFromCache()) {
                    int n;
                    if (simpleGraphObjectCursor.areMoreObjectsAvailable()) {
                        n = 2000;
                    }
                    else {
                        n = 0;
                    }
                    graphObjectPagingLoader.refreshOriginalRequest(n);
                }
            }
        }
    }
    
    private class SearchTextWatcher implements TextWatcher
    {
        public void afterTextChanged(final Editable editable) {
        }
        
        public void beforeTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
        }
        
        public void onTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
            PlacePickerFragment.this.onSearchBoxTextChanged(charSequence.toString(), false);
        }
    }
}
