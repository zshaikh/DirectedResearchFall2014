package com.facebook.widget;

import android.content.*;
import java.text.*;
import com.facebook.*;
import com.milkmangames.extensions.android.goviral.*;
import android.graphics.*;
import java.util.*;
import android.view.*;
import org.json.*;
import com.facebook.model.*;
import java.net.*;
import android.widget.*;

class GraphObjectAdapter extends BaseAdapter implements SectionIndexer
{
    private static final int ACTIVITY_CIRCLE_VIEW_TYPE = 2;
    private static final int DISPLAY_SECTIONS_THRESHOLD = 1;
    private static final int GRAPH_OBJECT_VIEW_TYPE = 1;
    private static final int HEADER_VIEW_TYPE = 0;
    private static final String ID = "id";
    private static final int MAX_PREFETCHED_PICTURES = 20;
    private static final String NAME = "name";
    private static final String PICTURE = "picture";
    private Context context;
    private GraphObjectCursor cursor;
    private GraphObjectAdapter$DataNeededListener dataNeededListener;
    private boolean displaySections;
    private GraphObjectAdapter$Filter filter;
    private Map graphObjectsById;
    private Map graphObjectsBySection;
    private String groupByField;
    private final LayoutInflater inflater;
    private GraphObjectAdapter$OnErrorListener onErrorListener;
    private final Map pendingRequests;
    private Map prefetchedPictureCache;
    private ArrayList prefetchedProfilePictureIds;
    private List sectionKeys;
    private boolean showCheckbox;
    private boolean showPicture;
    private List sortFields;
    
    public GraphObjectAdapter(final Context context) {
        super();
        this.pendingRequests = new HashMap();
        this.sectionKeys = new ArrayList();
        this.graphObjectsBySection = new HashMap();
        this.graphObjectsById = new HashMap();
        this.prefetchedPictureCache = new HashMap();
        this.prefetchedProfilePictureIds = new ArrayList();
        this.context = context;
        this.inflater = LayoutInflater.from(context);
    }
    
    private void callOnErrorListener(final Exception ex) {
        if (this.onErrorListener != null) {
            Exception ex2;
            if (!(ex instanceof FacebookException)) {
                ex2 = new FacebookException(ex);
            }
            else {
                ex2 = ex;
            }
            this.onErrorListener.onError(this, (FacebookException)ex2);
        }
    }
    
    private static int compareGraphObjects(final GraphObject graphObject, final GraphObject graphObject2, final Collection collection, final Collator collator) {
        for (final String s : collection) {
            final String s2 = (String)graphObject.getProperty(s);
            final String s3 = (String)graphObject2.getProperty(s);
            if (s2 != null && s3 != null) {
                final int compare = collator.compare(s2, s3);
                if (compare != 0) {
                    return compare;
                }
                continue;
            }
            else {
                if (s2 == null && s3 == null) {
                    continue;
                }
                if (s2 == null) {
                    return -1;
                }
                return 1;
            }
        }
        return 0;
    }
    
    private void downloadProfilePicture(final String tag, final URL url, final ImageView imageView) {
        if (url != null) {
            boolean b;
            if (imageView == null) {
                b = true;
            }
            else {
                b = false;
            }
            if (b || !url.equals(imageView.getTag())) {
                if (!b) {
                    imageView.setTag((Object)tag);
                    imageView.setImageResource(this.getDefaultPicture());
                }
                final ImageRequest build = new ImageRequest$Builder(this.context.getApplicationContext(), url).setCallerTag(this).setCallback(new GraphObjectAdapter$2(this, tag, imageView)).build();
                this.pendingRequests.put(tag, build);
                ImageDownloader.downloadAsync(build);
            }
        }
    }
    
    private View getActivityCircleView(final View view, final ViewGroup viewGroup) {
        View inflate;
        if (view == null) {
            inflate = this.inflater.inflate(b.a("layout.com_facebook_picker_activity_circle_row"), (ViewGroup)null);
        }
        else {
            inflate = view;
        }
        ((ProgressBar)inflate.findViewById(b.a("id.com_facebook_picker_row_activity_circle"))).setVisibility(0);
        return inflate;
    }
    
    private void processImageResponse(final ImageResponse imageResponse, final String s, final ImageView imageView) {
        this.pendingRequests.remove(s);
        if (imageResponse.getError() != null) {
            this.callOnErrorListener(imageResponse.getError());
        }
        if (imageView == null) {
            if (imageResponse.getBitmap() != null) {
                if (this.prefetchedPictureCache.size() >= 20) {
                    this.prefetchedPictureCache.remove(this.prefetchedProfilePictureIds.remove(0));
                }
                this.prefetchedPictureCache.put(s, imageResponse);
            }
        }
        else if (imageView != null && s.equals(imageView.getTag())) {
            final Exception error = imageResponse.getError();
            final Bitmap bitmap = imageResponse.getBitmap();
            if (error == null && bitmap != null) {
                imageView.setImageBitmap(bitmap);
                imageView.setTag((Object)imageResponse.getRequest().getImageUrl());
            }
        }
    }
    
    private void rebuildSections() {
        this.sectionKeys = new ArrayList();
        this.graphObjectsBySection = new HashMap();
        this.graphObjectsById = new HashMap();
        this.displaySections = false;
        if (this.cursor == null || this.cursor.getCount() == 0) {
            return;
        }
        this.cursor.moveToFirst();
        int n = 0;
        int n3;
        while (true) {
            final GraphObject graphObject = this.cursor.getGraphObject();
            if (this.filterIncludesItem(graphObject)) {
                final int n2 = n + 1;
                final String sectionKeyOfGraphObject = this.getSectionKeyOfGraphObject(graphObject);
                if (!this.graphObjectsBySection.containsKey(sectionKeyOfGraphObject)) {
                    this.sectionKeys.add(sectionKeyOfGraphObject);
                    this.graphObjectsBySection.put(sectionKeyOfGraphObject, new ArrayList());
                }
                ((List<GraphObject>)this.graphObjectsBySection.get(sectionKeyOfGraphObject)).add(graphObject);
                this.graphObjectsById.put(this.getIdOfGraphObject(graphObject), graphObject);
                n3 = n2;
            }
            else {
                n3 = n;
            }
            if (!this.cursor.moveToNext()) {
                break;
            }
            n = n3;
        }
        if (this.sortFields != null) {
            final Collator instance = Collator.getInstance();
            final Iterator<ArrayList<T>> iterator = this.graphObjectsBySection.values().iterator();
            while (iterator.hasNext()) {
                Collections.sort((List<Object>)iterator.next(), new GraphObjectAdapter$1(this, instance));
            }
        }
        Collections.sort((List<Object>)this.sectionKeys, Collator.getInstance());
        this.displaySections = (this.sectionKeys.size() > 1 && n3 > 1);
    }
    
    private boolean shouldShowActivityCircleCell() {
        return this.cursor != null && this.cursor.areMoreObjectsAvailable() && this.dataNeededListener != null && !this.isEmpty();
    }
    
    public boolean areAllItemsEnabled() {
        return this.displaySections;
    }
    
    public boolean changeCursor(final GraphObjectCursor cursor) {
        if (this.cursor == cursor) {
            return false;
        }
        if (this.cursor != null) {
            this.cursor.close();
        }
        this.cursor = cursor;
        this.rebuildAndNotify();
        return true;
    }
    
    protected View createGraphObjectView(final GraphObject graphObject, final View view) {
        final View inflate = this.inflater.inflate(this.getGraphObjectRowLayoutId(graphObject), (ViewGroup)null);
        final ViewStub viewStub = (ViewStub)inflate.findViewById(b.a("id.com_facebook_picker_checkbox_stub"));
        if (viewStub != null) {
            if (!this.getShowCheckbox()) {
                viewStub.setVisibility(8);
            }
            else {
                this.updateCheckboxState((CheckBox)viewStub.inflate(), false);
            }
        }
        final ViewStub viewStub2 = (ViewStub)inflate.findViewById(b.a("id.com_facebook_picker_profile_pic_stub"));
        if (!this.getShowPicture()) {
            viewStub2.setVisibility(8);
            return inflate;
        }
        ((ImageView)viewStub2.inflate()).setVisibility(0);
        return inflate;
    }
    
    boolean filterIncludesItem(final GraphObject graphObject) {
        return this.filter == null || this.filter.includeItem(graphObject);
    }
    
    public int getCount() {
        if (this.sectionKeys.size() == 0) {
            return 0;
        }
        int size;
        if (this.displaySections) {
            size = this.sectionKeys.size();
        }
        else {
            size = 0;
        }
        final Iterator<ArrayList> iterator = this.graphObjectsBySection.values().iterator();
        int n = size;
        while (iterator.hasNext()) {
            n += iterator.next().size();
        }
        if (this.shouldShowActivityCircleCell()) {
            return n + 1;
        }
        return n;
    }
    
    public GraphObjectCursor getCursor() {
        return this.cursor;
    }
    
    public GraphObjectAdapter$DataNeededListener getDataNeededListener() {
        return this.dataNeededListener;
    }
    
    protected int getDefaultPicture() {
        return b.a("drawable.com_facebook_profile_default_icon");
    }
    
    GraphObjectAdapter$Filter getFilter() {
        return this.filter;
    }
    
    protected int getGraphObjectRowLayoutId(final GraphObject graphObject) {
        return b.a("layout.com_facebook_picker_list_row");
    }
    
    protected View getGraphObjectView(final GraphObject graphObject, final View view, final ViewGroup viewGroup) {
        View graphObjectView;
        if (view == null) {
            graphObjectView = this.createGraphObjectView(graphObject, view);
        }
        else {
            graphObjectView = view;
        }
        this.populateGraphObjectView(graphObjectView, graphObject);
        return graphObjectView;
    }
    
    public List getGraphObjectsById(final Collection collection) {
        final HashSet<String> set = new HashSet<String>();
        set.addAll((Collection<?>)collection);
        final ArrayList list = new ArrayList<GraphObject>(set.size());
        final Iterator<Object> iterator = set.iterator();
        while (iterator.hasNext()) {
            final GraphObject e = this.graphObjectsById.get(iterator.next());
            if (e != null) {
                list.add(e);
            }
        }
        return list;
    }
    
    public String getGroupByField() {
        return this.groupByField;
    }
    
    String getIdOfGraphObject(final GraphObject graphObject) {
        if (graphObject.asMap().containsKey("id")) {
            final Object property = graphObject.getProperty("id");
            if (property instanceof String) {
                return (String)property;
            }
        }
        throw new FacebookException("Received an object without an ID.");
    }
    
    public Object getItem(final int n) {
        final GraphObjectAdapter$SectionAndItem sectionAndItem = this.getSectionAndItem(n);
        if (sectionAndItem.getType() == GraphObjectAdapter$SectionAndItem$Type.GRAPH_OBJECT) {
            return sectionAndItem.graphObject;
        }
        return null;
    }
    
    public long getItemId(final int n) {
        final GraphObjectAdapter$SectionAndItem sectionAndItem = this.getSectionAndItem(n);
        if (sectionAndItem != null && sectionAndItem.graphObject != null) {
            final String idOfGraphObject = this.getIdOfGraphObject(sectionAndItem.graphObject);
            if (idOfGraphObject != null) {
                return Long.parseLong(idOfGraphObject);
            }
        }
        return 0L;
    }
    
    public int getItemViewType(final int n) {
        switch (GraphObjectAdapter$3.$SwitchMap$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type[this.getSectionAndItem(n).getType().ordinal()]) {
            default: {
                throw new FacebookException("Unexpected type of section and item.");
            }
            case 1: {
                return 0;
            }
            case 2: {
                return 1;
            }
            case 3: {
                return 2;
            }
        }
    }
    
    public GraphObjectAdapter$OnErrorListener getOnErrorListener() {
        return this.onErrorListener;
    }
    
    String getPictureFieldSpecifier() {
        final ImageView imageView = (ImageView)this.createGraphObjectView(null, null).findViewById(b.a("id.com_facebook_picker_image"));
        if (imageView == null) {
            return null;
        }
        final ViewGroup$LayoutParams layoutParams = imageView.getLayoutParams();
        return String.format("picture.height(%d).width(%d)", layoutParams.height, layoutParams.width);
    }
    
    protected URL getPictureUrlOfGraphObject(final GraphObject graphObject) {
        final Object property = graphObject.getProperty("picture");
    Block_4_Outer:
        while (true) {
            Label_0038: {
                if (!(property instanceof String)) {
                    break Label_0038;
                }
                String url = (String)property;
                if (url == null) {
                    return null;
                }
                try {
                    return new URL(url);
                    // iftrue(Label_0090:, data == null)
                    // iftrue(Label_0090:, !property instanceof JSONObject)
                    GraphObjectAdapter$ItemPictureData data = null;
                Block_5:
                    while (true) {
                        data = ((GraphObjectAdapter$ItemPicture)GraphObject$Factory.create((JSONObject)property).cast(GraphObjectAdapter$ItemPicture.class)).getData();
                        break Block_5;
                        continue;
                    }
                    url = data.getUrl();
                    continue Block_4_Outer;
                }
                catch (MalformedURLException ex) {}
            }
            return null;
            Label_0090: {
                final String url = null;
            }
            continue;
        }
    }
    
    int getPosition(final String anObject, final GraphObject graphObject) {
        final Iterator<String> iterator = (Iterator<String>)this.sectionKeys.iterator();
        int n = 0;
        while (true) {
            while (iterator.hasNext()) {
                final String s = iterator.next();
                if (this.displaySections) {
                    ++n;
                }
                if (s.equals(anObject)) {
                    final int n2 = 1;
                    int n3 = n;
                    if (n2 == 0) {
                        return -1;
                    }
                    if (graphObject == null) {
                        int n4;
                        if (this.displaySections) {
                            n4 = 1;
                        }
                        else {
                            n4 = 0;
                        }
                        return n3 - n4;
                    }
                    final Iterator<GraphObject> iterator2 = this.graphObjectsBySection.get(anObject).iterator();
                    while (iterator2.hasNext()) {
                        if (GraphObject$Factory.hasSameId(iterator2.next(), graphObject)) {
                            return n3;
                        }
                        ++n3;
                    }
                    return -1;
                }
                else {
                    n += ((ArrayList)this.graphObjectsBySection.get(s)).size();
                }
            }
            int n3 = n;
            final int n2 = 0;
            continue;
        }
    }
    
    public int getPositionForSection(final int a) {
        if (this.displaySections) {
            final int max = Math.max(0, Math.min(a, this.sectionKeys.size() - 1));
            if (max < this.sectionKeys.size()) {
                return this.getPosition((String)this.sectionKeys.get(max), null);
            }
        }
        return 0;
    }
    
    GraphObjectAdapter$SectionAndItem getSectionAndItem(final int index) {
        if (this.sectionKeys.size() == 0) {
            return null;
        }
        String s2 = null;
        GraphObject graphObject2 = null;
        Label_0098: {
            if (!this.displaySections) {
                final String s = this.sectionKeys.get(0);
                final List list = this.graphObjectsBySection.get(s);
                if (index >= 0 && index < list.size()) {
                    final GraphObject graphObject = this.graphObjectsBySection.get(s).get(index);
                    s2 = s;
                    graphObject2 = graphObject;
                }
                else {
                    assert this.dataNeededListener != null && this.cursor.areMoreObjectsAvailable();
                    return new GraphObjectAdapter$SectionAndItem(null, null);
                }
            }
            else {
                final Iterator<String> iterator = (Iterator<String>)this.sectionKeys.iterator();
                int n = index;
                while (iterator.hasNext()) {
                    final String s3 = iterator.next();
                    final int n2 = n - 1;
                    if (n == 0) {
                        s2 = s3;
                        graphObject2 = null;
                        break Label_0098;
                    }
                    final List<GraphObject> list2 = this.graphObjectsBySection.get(s3);
                    if (n2 < list2.size()) {
                        final GraphObject graphObject3 = list2.get(n2);
                        s2 = s3;
                        graphObject2 = graphObject3;
                        break Label_0098;
                    }
                    n = n2 - list2.size();
                }
                graphObject2 = null;
                s2 = null;
            }
        }
        if (s2 != null) {
            return new GraphObjectAdapter$SectionAndItem(s2, graphObject2);
        }
        throw new IndexOutOfBoundsException("position");
    }
    
    public int getSectionForPosition(final int n) {
        final GraphObjectAdapter$SectionAndItem sectionAndItem = this.getSectionAndItem(n);
        if (sectionAndItem != null && sectionAndItem.getType() != GraphObjectAdapter$SectionAndItem$Type.ACTIVITY_CIRCLE) {
            return Math.max(0, Math.min(this.sectionKeys.indexOf(sectionAndItem.sectionKey), this.sectionKeys.size() - 1));
        }
        return 0;
    }
    
    protected View getSectionHeaderView(final String text, final View view, final ViewGroup viewGroup) {
        final TextView textView = (TextView)view;
        TextView textView2;
        if (textView == null) {
            textView2 = (TextView)this.inflater.inflate(b.a("layout.com_facebook_picker_list_section_header"), (ViewGroup)null);
        }
        else {
            textView2 = textView;
        }
        textView2.setText((CharSequence)text);
        return (View)textView2;
    }
    
    protected String getSectionKeyOfGraphObject(final GraphObject graphObject) {
        final String groupByField = this.groupByField;
        String upperCase = null;
        if (groupByField != null) {
            final String s = (String)graphObject.getProperty(this.groupByField);
            if (s != null && s.length() > 0) {
                upperCase = s.substring(0, 1).toUpperCase();
            }
            else {
                upperCase = s;
            }
        }
        if (upperCase != null) {
            return upperCase;
        }
        return "";
    }
    
    public Object[] getSections() {
        if (this.displaySections) {
            return this.sectionKeys.toArray();
        }
        return new Object[0];
    }
    
    public boolean getShowCheckbox() {
        return this.showCheckbox;
    }
    
    public boolean getShowPicture() {
        return this.showPicture;
    }
    
    public List getSortFields() {
        return this.sortFields;
    }
    
    protected CharSequence getSubTitleOfGraphObject(final GraphObject graphObject) {
        return null;
    }
    
    protected CharSequence getTitleOfGraphObject(final GraphObject graphObject) {
        return (String)graphObject.getProperty("name");
    }
    
    public View getView(final int n, final View view, final ViewGroup viewGroup) {
        final GraphObjectAdapter$SectionAndItem sectionAndItem = this.getSectionAndItem(n);
        switch (GraphObjectAdapter$3.$SwitchMap$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type[sectionAndItem.getType().ordinal()]) {
            default: {
                throw new FacebookException("Unexpected type of section and item.");
            }
            case 1: {
                return this.getSectionHeaderView(sectionAndItem.sectionKey, view, viewGroup);
            }
            case 2: {
                return this.getGraphObjectView(sectionAndItem.graphObject, view, viewGroup);
            }
            case 3: {
                assert this.cursor.areMoreObjectsAvailable() && this.dataNeededListener != null;
                this.dataNeededListener.onDataNeeded();
                return this.getActivityCircleView(view, viewGroup);
            }
        }
    }
    
    public int getViewTypeCount() {
        return 3;
    }
    
    public boolean hasStableIds() {
        return true;
    }
    
    public boolean isEmpty() {
        return this.sectionKeys.size() == 0;
    }
    
    public boolean isEnabled(final int n) {
        return this.getSectionAndItem(n).getType() == GraphObjectAdapter$SectionAndItem$Type.GRAPH_OBJECT;
    }
    
    boolean isGraphObjectSelected(final String s) {
        return false;
    }
    
    protected void populateGraphObjectView(final View view, final GraphObject graphObject) {
        final String idOfGraphObject = this.getIdOfGraphObject(graphObject);
        view.setTag((Object)idOfGraphObject);
        final CharSequence titleOfGraphObject = this.getTitleOfGraphObject(graphObject);
        final TextView textView = (TextView)view.findViewById(b.a("id.com_facebook_picker_title"));
        if (textView != null) {
            textView.setText(titleOfGraphObject, TextView$BufferType.SPANNABLE);
        }
        final CharSequence subTitleOfGraphObject = this.getSubTitleOfGraphObject(graphObject);
        final TextView textView2 = (TextView)view.findViewById(b.a("id.picker_subtitle"));
        if (textView2 != null) {
            if (subTitleOfGraphObject != null) {
                textView2.setText(subTitleOfGraphObject, TextView$BufferType.SPANNABLE);
                textView2.setVisibility(0);
            }
            else {
                textView2.setVisibility(8);
            }
        }
        if (this.getShowCheckbox()) {
            this.updateCheckboxState((CheckBox)view.findViewById(b.a("id.com_facebook_picker_checkbox")), this.isGraphObjectSelected(idOfGraphObject));
        }
        if (this.getShowPicture()) {
            final URL pictureUrlOfGraphObject = this.getPictureUrlOfGraphObject(graphObject);
            if (pictureUrlOfGraphObject != null) {
                final ImageView imageView = (ImageView)view.findViewById(b.a("id.com_facebook_picker_image"));
                if (!this.prefetchedPictureCache.containsKey(idOfGraphObject)) {
                    this.downloadProfilePicture(idOfGraphObject, pictureUrlOfGraphObject, imageView);
                    return;
                }
                final ImageResponse imageResponse = this.prefetchedPictureCache.get(idOfGraphObject);
                imageView.setImageBitmap(imageResponse.getBitmap());
                imageView.setTag((Object)imageResponse.getRequest().getImageUrl());
            }
        }
    }
    
    public void prioritizeViewRange(final int n, final int n2, final int n3) {
        if (n2 >= n) {
            for (int i = n2; i >= 0; --i) {
                final GraphObjectAdapter$SectionAndItem sectionAndItem = this.getSectionAndItem(i);
                if (sectionAndItem.graphObject != null) {
                    final ImageRequest imageRequest = this.pendingRequests.get(this.getIdOfGraphObject(sectionAndItem.graphObject));
                    if (imageRequest != null) {
                        ImageDownloader.prioritizeRequest(imageRequest);
                    }
                }
            }
            int j = Math.max(0, n - n3);
            final int min = Math.min(n2 + n3, this.getCount() - 1);
            final ArrayList<GraphObject> list = new ArrayList<GraphObject>();
            while (j < n) {
                final GraphObjectAdapter$SectionAndItem sectionAndItem2 = this.getSectionAndItem(j);
                if (sectionAndItem2.graphObject != null) {
                    list.add(sectionAndItem2.graphObject);
                }
                ++j;
            }
            for (int k = n2 + 1; k <= min; ++k) {
                final GraphObjectAdapter$SectionAndItem sectionAndItem3 = this.getSectionAndItem(k);
                if (sectionAndItem3.graphObject != null) {
                    list.add(sectionAndItem3.graphObject);
                }
            }
            for (final GraphObject graphObject : list) {
                final URL pictureUrlOfGraphObject = this.getPictureUrlOfGraphObject(graphObject);
                final String idOfGraphObject = this.getIdOfGraphObject(graphObject);
                final boolean remove = this.prefetchedProfilePictureIds.remove(idOfGraphObject);
                this.prefetchedProfilePictureIds.add(idOfGraphObject);
                if (!remove) {
                    this.downloadProfilePicture(idOfGraphObject, pictureUrlOfGraphObject, null);
                }
            }
        }
    }
    
    public void rebuildAndNotify() {
        this.rebuildSections();
        this.notifyDataSetChanged();
    }
    
    public void setDataNeededListener(final GraphObjectAdapter$DataNeededListener dataNeededListener) {
        this.dataNeededListener = dataNeededListener;
    }
    
    void setFilter(final GraphObjectAdapter$Filter filter) {
        this.filter = filter;
    }
    
    public void setGroupByField(final String groupByField) {
        this.groupByField = groupByField;
    }
    
    public void setOnErrorListener(final GraphObjectAdapter$OnErrorListener onErrorListener) {
        this.onErrorListener = onErrorListener;
    }
    
    public void setShowCheckbox(final boolean showCheckbox) {
        this.showCheckbox = showCheckbox;
    }
    
    public void setShowPicture(final boolean showPicture) {
        this.showPicture = showPicture;
    }
    
    public void setSortFields(final List sortFields) {
        this.sortFields = sortFields;
    }
    
    void updateCheckboxState(final CheckBox checkBox, final boolean b) {
    }
}
