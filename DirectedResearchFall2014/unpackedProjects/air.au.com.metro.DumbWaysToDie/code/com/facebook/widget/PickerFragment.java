package com.facebook.widget;

import c.m.x.a.gv.*;
import android.graphics.drawable.*;
import com.facebook.internal.*;
import android.os.*;
import com.milkmangames.extensions.android.goviral.*;
import com.facebook.model.*;
import android.view.animation.*;
import java.util.*;
import android.content.*;
import com.facebook.*;
import android.view.*;
import android.widget.*;
import android.app.*;
import android.util.*;
import android.content.res.*;
import android.text.*;

public abstract class PickerFragment extends e
{
    private static final String ACTIVITY_CIRCLE_SHOW_KEY = "com.facebook.android.PickerFragment.ActivityCircleShown";
    public static final String DONE_BUTTON_TEXT_BUNDLE_KEY = "com.facebook.widget.PickerFragment.DoneButtonText";
    public static final String EXTRA_FIELDS_BUNDLE_KEY = "com.facebook.widget.PickerFragment.ExtraFields";
    private static final int PROFILE_PICTURE_PREFETCH_BUFFER = 5;
    private static final String SELECTION_BUNDLE_KEY = "com.facebook.android.PickerFragment.Selection";
    public static final String SHOW_PICTURES_BUNDLE_KEY = "com.facebook.widget.PickerFragment.ShowPictures";
    public static final String SHOW_TITLE_BAR_BUNDLE_KEY = "com.facebook.widget.PickerFragment.ShowTitleBar";
    public static final String TITLE_TEXT_BUNDLE_KEY = "com.facebook.widget.PickerFragment.TitleText";
    private ProgressBar activityCircle;
    GraphObjectAdapter adapter;
    private Button doneButton;
    private Drawable doneButtonBackground;
    private String doneButtonText;
    HashSet extraFields;
    private PickerFragment$GraphObjectFilter filter;
    private final Class graphObjectClass;
    private final int layout;
    private ListView listView;
    private PickerFragment$LoadingStrategy loadingStrategy;
    private PickerFragment$OnDataChangedListener onDataChangedListener;
    private PickerFragment$OnDoneButtonClickedListener onDoneButtonClickedListener;
    private PickerFragment$OnErrorListener onErrorListener;
    private AbsListView$OnScrollListener onScrollListener;
    private PickerFragment$OnSelectionChangedListener onSelectionChangedListener;
    private PickerFragment$SelectionStrategy selectionStrategy;
    private SessionTracker sessionTracker;
    private boolean showPictures;
    private boolean showTitleBar;
    private Drawable titleBarBackground;
    private String titleText;
    private TextView titleTextView;
    
    PickerFragment(final Class graphObjectClass, final int layout, final Bundle pickerFragmentSettingsFromBundle) {
        super();
        this.showPictures = true;
        this.showTitleBar = true;
        this.extraFields = new HashSet();
        this.onScrollListener = (AbsListView$OnScrollListener)new PickerFragment$6(this);
        this.graphObjectClass = graphObjectClass;
        this.layout = layout;
        this.setPickerFragmentSettingsFromBundle(pickerFragmentSettingsFromBundle);
    }
    
    private void clearResults() {
        if (this.adapter != null) {
            boolean b;
            if (!this.selectionStrategy.isEmpty()) {
                b = true;
            }
            else {
                b = false;
            }
            boolean b2;
            if (!this.adapter.isEmpty()) {
                b2 = true;
            }
            else {
                b2 = false;
            }
            this.loadingStrategy.clearResults();
            this.selectionStrategy.clear();
            this.adapter.notifyDataSetChanged();
            if (b2 && this.onDataChangedListener != null) {
                this.onDataChangedListener.onDataChanged(this);
            }
            if (b && this.onSelectionChangedListener != null) {
                this.onSelectionChangedListener.onSelectionChanged(this);
            }
        }
    }
    
    private void inflateTitleBar(final ViewGroup viewGroup) {
        final ViewStub viewStub = (ViewStub)viewGroup.findViewById(b.a("id.com_facebook_picker_title_bar_stub"));
        if (viewStub != null) {
            final View inflate = viewStub.inflate();
            final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-1, -1);
            layoutParams.addRule(3, b.a("id.com_facebook_picker_title_bar"));
            this.listView.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
            if (this.titleBarBackground != null) {
                inflate.setBackgroundDrawable(this.titleBarBackground);
            }
            this.doneButton = (Button)viewGroup.findViewById(b.a("id.com_facebook_picker_done_button"));
            if (this.doneButton != null) {
                this.doneButton.setOnClickListener((View$OnClickListener)new PickerFragment$5(this));
                if (this.getDoneButtonText() != null) {
                    this.doneButton.setText((CharSequence)this.getDoneButtonText());
                }
                if (this.doneButtonBackground != null) {
                    this.doneButton.setBackgroundDrawable(this.doneButtonBackground);
                }
            }
            this.titleTextView = (TextView)viewGroup.findViewById(b.a("id.com_facebook_picker_title"));
            if (this.titleTextView != null && this.getTitleText() != null) {
                this.titleTextView.setText((CharSequence)this.getTitleText());
            }
        }
    }
    
    private void loadDataSkippingRoundTripIfCached() {
        this.clearResults();
        final Request requestForLoadData = this.getRequestForLoadData(this.getSession());
        if (requestForLoadData != null) {
            this.onLoadingData();
            this.loadingStrategy.startLoading(requestForLoadData);
        }
    }
    
    private void onListItemClick(final ListView listView, final View view, final int n) {
        this.selectionStrategy.toggleSelection(this.adapter.getIdOfGraphObject((GraphObject)listView.getItemAtPosition(n)));
        this.adapter.notifyDataSetChanged();
        if (this.onSelectionChangedListener != null) {
            this.onSelectionChangedListener.onSelectionChanged(this);
        }
    }
    
    private void reprioritizeDownloads() {
        final int lastVisiblePosition = this.listView.getLastVisiblePosition();
        if (lastVisiblePosition >= 0) {
            this.adapter.prioritizeViewRange(this.listView.getFirstVisiblePosition(), lastVisiblePosition, 5);
        }
    }
    
    private static void setAlpha(final View view, final float n) {
        final AlphaAnimation alphaAnimation = new AlphaAnimation(n, n);
        alphaAnimation.setDuration(0L);
        alphaAnimation.setFillAfter(true);
        view.startAnimation((Animation)alphaAnimation);
    }
    
    private void setPickerFragmentSettingsFromBundle(final Bundle bundle) {
        if (bundle != null) {
            this.showPictures = bundle.getBoolean("com.facebook.widget.PickerFragment.ShowPictures", this.showPictures);
            final String string = bundle.getString("com.facebook.widget.PickerFragment.ExtraFields");
            if (string != null) {
                this.setExtraFields(Arrays.asList(string.split(",")));
            }
            this.showTitleBar = bundle.getBoolean("com.facebook.widget.PickerFragment.ShowTitleBar", this.showTitleBar);
            final String string2 = bundle.getString("com.facebook.widget.PickerFragment.TitleText");
            if (string2 != null) {
                this.titleText = string2;
                if (this.titleTextView != null) {
                    this.titleTextView.setText((CharSequence)this.titleText);
                }
            }
            final String string3 = bundle.getString("com.facebook.widget.PickerFragment.DoneButtonText");
            if (string3 != null) {
                this.doneButtonText = string3;
                if (this.doneButton != null) {
                    this.doneButton.setText((CharSequence)this.doneButtonText);
                }
            }
        }
    }
    
    abstract PickerFragment$PickerFragmentAdapter createAdapter();
    
    abstract PickerFragment$LoadingStrategy createLoadingStrategy();
    
    abstract PickerFragment$SelectionStrategy createSelectionStrategy();
    
    void displayActivityCircle() {
        if (this.activityCircle != null) {
            this.layoutActivityCircle();
            this.activityCircle.setVisibility(0);
        }
    }
    
    boolean filterIncludesItem(final GraphObject graphObject) {
        return this.filter == null || this.filter.includeItem(graphObject);
    }
    
    String getDefaultDoneButtonText() {
        return this.getString(b.a("string.com_facebook_picker_done_button_text"));
    }
    
    String getDefaultTitleText() {
        return null;
    }
    
    public String getDoneButtonText() {
        if (this.doneButtonText == null) {
            this.doneButtonText = this.getDefaultDoneButtonText();
        }
        return this.doneButtonText;
    }
    
    public Set getExtraFields() {
        return new HashSet(this.extraFields);
    }
    
    public PickerFragment$GraphObjectFilter getFilter() {
        return this.filter;
    }
    
    public PickerFragment$OnDataChangedListener getOnDataChangedListener() {
        return this.onDataChangedListener;
    }
    
    public PickerFragment$OnDoneButtonClickedListener getOnDoneButtonClickedListener() {
        return this.onDoneButtonClickedListener;
    }
    
    public PickerFragment$OnErrorListener getOnErrorListener() {
        return this.onErrorListener;
    }
    
    public PickerFragment$OnSelectionChangedListener getOnSelectionChangedListener() {
        return this.onSelectionChangedListener;
    }
    
    abstract Request getRequestForLoadData(final Session p0);
    
    List getSelectedGraphObjects() {
        return this.adapter.getGraphObjectsById(this.selectionStrategy.getSelectedIds());
    }
    
    public Session getSession() {
        return this.sessionTracker.getSession();
    }
    
    public boolean getShowPictures() {
        return this.showPictures;
    }
    
    public boolean getShowTitleBar() {
        return this.showTitleBar;
    }
    
    public String getTitleText() {
        if (this.titleText == null) {
            this.titleText = this.getDefaultTitleText();
        }
        return this.titleText;
    }
    
    void hideActivityCircle() {
        if (this.activityCircle != null) {
            this.activityCircle.clearAnimation();
            this.activityCircle.setVisibility(4);
        }
    }
    
    void layoutActivityCircle() {
        float n;
        if (!this.adapter.isEmpty()) {
            n = 0.25f;
        }
        else {
            n = 1.0f;
        }
        setAlpha((View)this.activityCircle, n);
    }
    
    public void loadData(final boolean b) {
        if (!b && this.loadingStrategy.isDataPresentOrLoading()) {
            return;
        }
        this.loadDataSkippingRoundTripIfCached();
    }
    
    @Override
    public void onActivityCreated(final Bundle settingsFromBundle) {
        super.onActivityCreated(settingsFromBundle);
        this.sessionTracker = new SessionTracker((Context)this.getActivity(), new PickerFragment$4(this));
        this.setSettingsFromBundle(settingsFromBundle);
        (this.loadingStrategy = this.createLoadingStrategy()).attach(this.adapter);
        (this.selectionStrategy = this.createSelectionStrategy()).readSelectionFromBundle(settingsFromBundle, "com.facebook.android.PickerFragment.Selection");
        if (this.showTitleBar) {
            this.inflateTitleBar((ViewGroup)this.getView());
        }
        if (this.activityCircle != null && settingsFromBundle != null) {
            if (!settingsFromBundle.getBoolean("com.facebook.android.PickerFragment.ActivityCircleShown", false)) {
                this.hideActivityCircle();
                return;
            }
            this.displayActivityCircle();
        }
    }
    
    @Override
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        (this.adapter = this.createAdapter()).setFilter(new PickerFragment$1(this));
    }
    
    @Override
    public View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        final ViewGroup viewGroup2 = (ViewGroup)layoutInflater.inflate(this.layout, viewGroup, false);
        (this.listView = (ListView)viewGroup2.findViewById(b.a("id.com_facebook_picker_list_view"))).setOnItemClickListener((AdapterView$OnItemClickListener)new PickerFragment$2(this));
        this.listView.setOnLongClickListener((View$OnLongClickListener)new PickerFragment$3(this));
        this.listView.setOnScrollListener(this.onScrollListener);
        this.listView.setAdapter((ListAdapter)this.adapter);
        this.activityCircle = (ProgressBar)viewGroup2.findViewById(b.a("id.com_facebook_picker_activity_circle"));
        return (View)viewGroup2;
    }
    
    @Override
    public void onDetach() {
        super.onDetach();
        this.listView.setOnScrollListener((AbsListView$OnScrollListener)null);
        this.listView.setAdapter((ListAdapter)null);
        this.loadingStrategy.detach();
        this.sessionTracker.stopTracking();
    }
    
    @Override
    public void onInflate(final Activity activity, final AttributeSet set, final Bundle bundle) {
        super.onInflate(activity, set, bundle);
        final TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(set, b.b("styleable.com_facebook_picker_fragment"));
        this.setShowPictures(obtainStyledAttributes.getBoolean(b.a("styleable.com_facebook_picker_fragment_show_pictures"), this.showPictures));
        final String string = obtainStyledAttributes.getString(b.a("styleable.com_facebook_picker_fragment_extra_fields"));
        if (string != null) {
            this.setExtraFields(Arrays.asList(string.split(",")));
        }
        this.showTitleBar = obtainStyledAttributes.getBoolean(b.a("styleable.com_facebook_picker_fragment_show_title_bar"), this.showTitleBar);
        this.titleText = obtainStyledAttributes.getString(b.a("styleable.com_facebook_picker_fragment_title_text"));
        this.doneButtonText = obtainStyledAttributes.getString(b.a("styleable.com_facebook_picker_fragment_done_button_text"));
        this.titleBarBackground = obtainStyledAttributes.getDrawable(b.a("styleable.com_facebook_picker_fragment_title_bar_background"));
        this.doneButtonBackground = obtainStyledAttributes.getDrawable(b.a("styleable.com_facebook_picker_fragment_done_button_background"));
        obtainStyledAttributes.recycle();
    }
    
    void onLoadingData() {
    }
    
    @Override
    public void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.saveSettingsToBundle(bundle);
        this.selectionStrategy.saveSelectionToBundle(bundle, "com.facebook.android.PickerFragment.Selection");
        if (this.activityCircle != null) {
            bundle.putBoolean("com.facebook.android.PickerFragment.ActivityCircleShown", this.activityCircle.getVisibility() == 0);
        }
    }
    
    void saveSettingsToBundle(final Bundle bundle) {
        bundle.putBoolean("com.facebook.widget.PickerFragment.ShowPictures", this.showPictures);
        if (!this.extraFields.isEmpty()) {
            bundle.putString("com.facebook.widget.PickerFragment.ExtraFields", TextUtils.join((CharSequence)",", (Iterable)this.extraFields));
        }
        bundle.putBoolean("com.facebook.widget.PickerFragment.ShowTitleBar", this.showTitleBar);
        bundle.putString("com.facebook.widget.PickerFragment.TitleText", this.titleText);
        bundle.putString("com.facebook.widget.PickerFragment.DoneButtonText", this.doneButtonText);
    }
    
    @Override
    public void setArguments(final Bundle bundle) {
        super.setArguments(bundle);
        this.setSettingsFromBundle(bundle);
    }
    
    public void setDoneButtonText(final String doneButtonText) {
        this.doneButtonText = doneButtonText;
    }
    
    public void setExtraFields(final Collection c) {
        this.extraFields = new HashSet();
        if (c != null) {
            this.extraFields.addAll(c);
        }
    }
    
    public void setFilter(final PickerFragment$GraphObjectFilter filter) {
        this.filter = filter;
    }
    
    public void setOnDataChangedListener(final PickerFragment$OnDataChangedListener onDataChangedListener) {
        this.onDataChangedListener = onDataChangedListener;
    }
    
    public void setOnDoneButtonClickedListener(final PickerFragment$OnDoneButtonClickedListener onDoneButtonClickedListener) {
        this.onDoneButtonClickedListener = onDoneButtonClickedListener;
    }
    
    public void setOnErrorListener(final PickerFragment$OnErrorListener onErrorListener) {
        this.onErrorListener = onErrorListener;
    }
    
    public void setOnSelectionChangedListener(final PickerFragment$OnSelectionChangedListener onSelectionChangedListener) {
        this.onSelectionChangedListener = onSelectionChangedListener;
    }
    
    void setSelectionStrategy(final PickerFragment$SelectionStrategy selectionStrategy) {
        if (selectionStrategy != this.selectionStrategy) {
            this.selectionStrategy = selectionStrategy;
            if (this.adapter != null) {
                this.adapter.notifyDataSetChanged();
            }
        }
    }
    
    public void setSession(final Session session) {
        this.sessionTracker.setSession(session);
    }
    
    public void setSettingsFromBundle(final Bundle pickerFragmentSettingsFromBundle) {
        this.setPickerFragmentSettingsFromBundle(pickerFragmentSettingsFromBundle);
    }
    
    public void setShowPictures(final boolean showPictures) {
        this.showPictures = showPictures;
    }
    
    public void setShowTitleBar(final boolean showTitleBar) {
        this.showTitleBar = showTitleBar;
    }
    
    public void setTitleText(final String titleText) {
        this.titleText = titleText;
    }
    
    void updateAdapter(final SimpleGraphObjectCursor simpleGraphObjectCursor) {
        if (this.adapter != null) {
            final View child = this.listView.getChildAt(1);
            int firstVisiblePosition = this.listView.getFirstVisiblePosition();
            if (firstVisiblePosition > 0) {
                ++firstVisiblePosition;
            }
            final GraphObjectAdapter$SectionAndItem sectionAndItem = this.adapter.getSectionAndItem(firstVisiblePosition);
            int top;
            if (child != null && sectionAndItem.getType() != GraphObjectAdapter$SectionAndItem$Type.ACTIVITY_CIRCLE) {
                top = child.getTop();
            }
            else {
                top = 0;
            }
            final boolean changeCursor = this.adapter.changeCursor(simpleGraphObjectCursor);
            if (child != null && sectionAndItem != null) {
                final int position = this.adapter.getPosition(sectionAndItem.sectionKey, sectionAndItem.graphObject);
                if (position != -1) {
                    this.listView.setSelectionFromTop(position, top);
                }
            }
            if (changeCursor && this.onDataChangedListener != null) {
                this.onDataChangedListener.onDataChanged(this);
            }
        }
    }
}
