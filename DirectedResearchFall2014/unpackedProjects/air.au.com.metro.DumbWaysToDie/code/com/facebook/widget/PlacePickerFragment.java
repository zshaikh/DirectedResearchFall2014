package com.facebook.widget;

import android.annotation.*;
import android.location.*;
import com.facebook.model.*;
import com.milkmangames.extensions.android.goviral.*;
import com.facebook.*;
import android.content.*;
import java.util.*;
import android.widget.*;
import android.text.*;
import android.app.*;
import android.view.inputmethod.*;
import android.view.*;
import android.util.*;
import android.content.res.*;
import com.facebook.internal.*;
import android.os.*;

@SuppressLint({ "ValidFragment" })
@TargetApi(3)
public class PlacePickerFragment extends PickerFragment
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
        super(GraphPlace.class, b.a("layout.com_facebook_placepickerfragment"), placePickerSettingsFromBundle);
        this.radiusInMeters = 1000;
        this.resultsLimit = 100;
        this.showSearchBox = true;
        this.setPlacePickerSettingsFromBundle(placePickerSettingsFromBundle);
    }
    
    private Request createRequest(final Location location, final int n, final int n2, final String s, final Set c, final Session session) {
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
        timer.schedule(new PlacePickerFragment$2(this), 0L, 2000L);
        return timer;
    }
    
    private void onSearchTextTimerTriggered() {
        if (this.hasSearchTextChangedSinceLastQuery) {
            new Handler(Looper.getMainLooper()).post((Runnable)new PlacePickerFragment$3(this));
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
    PickerFragment$PickerFragmentAdapter createAdapter() {
        final PlacePickerFragment$1 placePickerFragment$1 = new PlacePickerFragment$1(this, (Context)this.getActivity());
        placePickerFragment$1.setShowCheckbox(false);
        placePickerFragment$1.setShowPicture(this.getShowPictures());
        return placePickerFragment$1;
    }
    
    @Override
    PickerFragment$LoadingStrategy createLoadingStrategy() {
        return new PlacePickerFragment$AsNeededLoadingStrategy(this, null);
    }
    
    @Override
    PickerFragment$SelectionStrategy createSelectionStrategy() {
        return new PickerFragment$SingleSelectionStrategy(this);
    }
    
    @Override
    String getDefaultTitleText() {
        return this.getString(b.a("string.com_facebook_nearby"));
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
        final List selectedGraphObjects = this.getSelectedGraphObjects();
        if (selectedGraphObjects != null && selectedGraphObjects.size() > 0) {
            return selectedGraphObjects.iterator().next();
        }
        return null;
    }
    
    @Override
    public void onActivityCreated(final Bundle bundle) {
        super.onActivityCreated(bundle);
        final ViewGroup viewGroup = (ViewGroup)this.getView();
        if (this.showSearchBox) {
            final ViewStub viewStub = (ViewStub)viewGroup.findViewById(b.a("id.com_facebook_placepickerfragment_search_box_stub"));
            if (viewStub != null) {
                this.searchBox = (EditText)viewStub.inflate();
                final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-1, -1);
                layoutParams.addRule(3, b.a("id.search_box"));
                ((ListView)viewGroup.findViewById(b.a("id.com_facebook_picker_list_view"))).setLayoutParams((ViewGroup$LayoutParams)layoutParams);
                if (viewGroup.findViewById(b.a("id.com_facebook_picker_title_bar")) != null) {
                    final RelativeLayout$LayoutParams layoutParams2 = new RelativeLayout$LayoutParams(-1, -2);
                    layoutParams2.addRule(3, b.a("id.com_facebook_picker_title_bar"));
                    this.searchBox.setLayoutParams((ViewGroup$LayoutParams)layoutParams2);
                }
                this.searchBox.addTextChangedListener((TextWatcher)new PlacePickerFragment$SearchTextWatcher(this, null));
                if (!TextUtils.isEmpty((CharSequence)this.searchText)) {
                    this.searchBox.setText((CharSequence)this.searchText);
                }
            }
        }
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
        final TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(set, b.b("styleable.com_facebook_place_picker_fragment"));
        this.setRadiusInMeters(obtainStyledAttributes.getInt(b.a("styleable.com_facebook_place_picker_fragment_radius_in_meters"), this.radiusInMeters));
        this.setResultsLimit(obtainStyledAttributes.getInt(b.a("styleable.com_facebook_place_picker_fragment_results_limit"), this.resultsLimit));
        if (obtainStyledAttributes.hasValue(b.a("styleable.com_facebook_place_picker_fragment_results_limit"))) {
            this.setSearchText(obtainStyledAttributes.getString(b.a("styleable.com_facebook_place_picker_fragment_search_text")));
        }
        this.showSearchBox = obtainStyledAttributes.getBoolean(b.a("styleable.com_facebook_place_picker_fragment_show_search_box"), this.showSearchBox);
        obtainStyledAttributes.recycle();
    }
    
    @Override
    void onLoadingData() {
        this.hasSearchTextChangedSinceLastQuery = false;
    }
    
    public void onSearchBoxTextChanged(final String s, final boolean b) {
        if (b || !Utility.stringsEqualOrEmpty(this.searchText, s)) {
            String searchText;
            if (TextUtils.isEmpty((CharSequence)s)) {
                searchText = null;
            }
            else {
                searchText = s;
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
    
    public void setSearchText(final String s) {
        String s2;
        if (TextUtils.isEmpty((CharSequence)s)) {
            s2 = null;
        }
        else {
            s2 = s;
        }
        this.searchText = s2;
        if (this.searchBox != null) {
            this.searchBox.setText((CharSequence)s2);
        }
    }
    
    @Override
    public void setSettingsFromBundle(final Bundle bundle) {
        super.setSettingsFromBundle(bundle);
        this.setPlacePickerSettingsFromBundle(bundle);
    }
}
