package com.adobe.air;

import android.util.*;
import android.content.res.*;
import com.adobe.air.utils.*;
import android.provider.*;
import android.net.*;
import java.util.*;
import android.app.*;
import android.database.*;
import android.view.inputmethod.*;
import android.content.*;
import android.view.*;
import android.widget.*;

public class AIRExpandableFileChooser implements ExpandableListView$OnChildClickListener
{
    private static final String FILEINFO = "FILEINFO";
    public static final String TAG;
    private static final String TYPE = "TYPE";
    private static final String USER_ACTION_CANCEL = "cancel";
    private static final String USER_ACTION_DONE = "done";
    private ExpandableListAdapter mAdapter;
    private boolean mAllowMultiple;
    private SparseBooleanArray mCheckedFiles;
    private List<List<Map<String, FileInfo>>> mChildData;
    private AndroidAlertDialog mFileChooserDialog;
    private FileChooserStub mFileChooserStub;
    private final String[] mFileProjection;
    private EditText mFileSaveName;
    private ArrayList<String> mFilenames;
    private List<Map<String, String>> mGroupData;
    private View mMultipleFileSelectionView;
    private LayoutInflater mRuntimeInflater;
    private Resources mRuntimeResources;
    private boolean mSave;
    private String mSelection;
    
    static {
        TAG = AIRExpandableFileChooser.class.toString();
    }
    
    public AIRExpandableFileChooser(final ArrayList<String> list, final boolean mSave, final boolean mAllowMultiple, final String str, final FileChooserStub mFileChooserStub) {
        super();
        this.mSelection = new String();
        this.mMultipleFileSelectionView = null;
        this.mAllowMultiple = false;
        this.mSave = false;
        this.mCheckedFiles = new SparseBooleanArray();
        this.mFilenames = new ArrayList<String>();
        this.mFileProjection = new String[] { "_data", "_display_name" };
        this.mFileChooserDialog = null;
        this.mFileChooserStub = null;
        this.mRuntimeResources = null;
        this.mRuntimeInflater = null;
        this.mFileSaveName = null;
        this.mGroupData = new ArrayList<Map<String, String>>();
        this.mChildData = new ArrayList<List<Map<String, FileInfo>>>();
        this.mSave = mSave;
        this.mAllowMultiple = mAllowMultiple;
        this.mFileChooserStub = mFileChooserStub;
        ArrayList<String> list3;
        if (list == null) {
            final ArrayList<String> list2 = new ArrayList<String>();
            list2.add("*");
            list3 = list2;
        }
        else {
            list3 = list;
        }
        for (int size = list3.size(), i = 0; i < size; ++i) {
            String substring = list3.get(i);
            if (substring.startsWith("*")) {
                substring = substring.substring(1);
                if (substring.length() == 0) {
                    break;
                }
            }
            if (this.mSelection.length() != 0) {
                this.mSelection += " OR ";
            }
            this.mSelection = this.mSelection + "_display_name LIKE '%" + substring + "'";
        }
        final AndroidActivityWrapper getAndroidActivityWrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
        this.mFileChooserDialog = new AndroidAlertDialog((Context)getAndroidActivityWrapper.getActivity());
        final AlertDialog$Builder getAlertDialogBuilder = this.mFileChooserDialog.GetAlertDialogBuilder();
        getAlertDialogBuilder.setOnKeyListener((DialogInterface$OnKeyListener)new DialogInterface$OnKeyListener() {
            public boolean onKey(final DialogInterface dialogInterface, final int n, final KeyEvent keyEvent) {
                if (keyEvent.getKeyCode() == 4) {
                    AIRExpandableFileChooser.this.mFileChooserStub.SetUserAction("cancel");
                }
                return false;
            }
        });
        final Context runtimeContext = getAndroidActivityWrapper.getRuntimeContext();
        this.mRuntimeInflater = LayoutInflater.from(runtimeContext);
        this.mRuntimeResources = runtimeContext.getResources();
        final View getLayoutViewFromRuntime = Utils.GetLayoutViewFromRuntime("main", this.mRuntimeResources, this.mRuntimeInflater);
        getAlertDialogBuilder.setView(getLayoutViewFromRuntime);
        final Resources resources = getLayoutViewFromRuntime.getResources();
        final ExpandableListView expandableListView = (ExpandableListView)Utils.GetWidgetInViewByName("list", resources, getLayoutViewFromRuntime);
        expandableListView.setOnChildClickListener((ExpandableListView$OnChildClickListener)this);
        expandableListView.setEmptyView(getAndroidActivityWrapper.getActivity().findViewById(16908292));
        final RelativeLayout relativeLayout = (RelativeLayout)Utils.GetWidgetInViewByName("file_save_panel", resources, getLayoutViewFromRuntime);
        if (this.mSave) {
            getAlertDialogBuilder.setTitle((CharSequence)Utils.GetResourceStringFromRuntime("file_download", this.mRuntimeResources));
            relativeLayout.setVisibility(0);
            this.mFileSaveName = (EditText)Utils.GetWidgetInViewByName("file_save_name", resources, getLayoutViewFromRuntime);
            if (str != null) {
                this.mFileSaveName.setText((CharSequence)(Utils.GetExternalStorageDirectory() + "/" + str));
            }
            this.mFileSaveName.setOnKeyListener((View$OnKeyListener)new View$OnKeyListener() {
                public boolean onKey(final View view, final int n, final KeyEvent keyEvent) {
                    if (keyEvent.getAction() == 0 && n == 66) {
                        final String string = AIRExpandableFileChooser.this.mFileSaveName.getText().toString();
                        if (string.length() != 0) {
                            AIRExpandableFileChooser.this.mFilenames.clear();
                            AIRExpandableFileChooser.this.mFilenames.add(string);
                            AIRExpandableFileChooser.this.mFileChooserStub.SetUserAction("done");
                            AIRExpandableFileChooser.this.HideVirtualKeyboard((View)AIRExpandableFileChooser.this.mFileSaveName);
                            AIRExpandableFileChooser.this.mFileChooserDialog.dismiss();
                        }
                        return true;
                    }
                    return false;
                }
            });
            ((Button)Utils.GetWidgetInViewByName("file_save_button", resources, getLayoutViewFromRuntime)).setOnClickListener((View$OnClickListener)new View$OnClickListener() {
                public void onClick(final View view) {
                    final String string = AIRExpandableFileChooser.this.mFileSaveName.getText().toString();
                    if (string.length() != 0) {
                        AIRExpandableFileChooser.this.mFilenames.clear();
                        AIRExpandableFileChooser.this.mFilenames.add(string);
                        AIRExpandableFileChooser.this.mFileChooserStub.SetUserAction("done");
                        AIRExpandableFileChooser.this.HideVirtualKeyboard((View)AIRExpandableFileChooser.this.mFileSaveName);
                        AIRExpandableFileChooser.this.mFileChooserDialog.dismiss();
                    }
                }
            });
        }
        else {
            getAlertDialogBuilder.setTitle((CharSequence)Utils.GetResourceStringFromRuntime("file_upload", this.mRuntimeResources));
            relativeLayout.setVisibility(8);
        }
        this.AddMediaSubtree(Utils.GetResourceStringFromRuntime("audio_files", this.mRuntimeResources), MediaStore$Audio$Media.EXTERNAL_CONTENT_URI);
        this.AddMediaSubtree(Utils.GetResourceStringFromRuntime("image_files", this.mRuntimeResources), MediaStore$Images$Media.EXTERNAL_CONTENT_URI);
        this.AddMediaSubtree(Utils.GetResourceStringFromRuntime("video_files", this.mRuntimeResources), MediaStore$Video$Media.EXTERNAL_CONTENT_URI);
        if (!this.mGroupData.isEmpty()) {
            expandableListView.setAdapter(this.mAdapter = (ExpandableListAdapter)new FileChooserExpandableListAdapter(this.mRuntimeInflater, this.mRuntimeResources));
            expandableListView.setItemsCanFocus(true);
            ((TextView)Utils.GetWidgetInViewByName("empty", resources, getLayoutViewFromRuntime)).setVisibility(8);
        }
        else {
            expandableListView.setVisibility(8);
        }
        if (this.mAllowMultiple) {
            this.createInvisibleMultipleFileSelectionView();
        }
    }
    
    private void AddMediaSubtree(final String s, final Uri uri) {
        final Activity activity = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity();
        final String[] mFileProjection = this.mFileProjection;
        String mSelection;
        if (this.mSelection.length() == 0) {
            mSelection = null;
        }
        else {
            mSelection = this.mSelection;
        }
        final Cursor managedQuery = activity.managedQuery(uri, mFileProjection, mSelection, (String[])null, (String)null);
        final ArrayList<Map<String, FileInfo>> list = new ArrayList<Map<String, FileInfo>>();
        if (managedQuery != null && managedQuery.moveToFirst()) {
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("TYPE", s);
            this.mGroupData.add(hashMap);
            do {
                final FileInfo fileInfo = new FileInfo(managedQuery.getString(managedQuery.getColumnIndex("_display_name")), managedQuery.getString(managedQuery.getColumnIndex("_data")));
                final HashMap<String, FileInfo> hashMap2 = new HashMap<String, FileInfo>();
                list.add((HashMap<String, Object>)hashMap2);
                hashMap2.put("FILEINFO", fileInfo);
            } while (managedQuery.moveToNext());
            this.mChildData.add(list);
        }
    }
    
    private void HideVirtualKeyboard(final View view) {
        final InputMethodManager inputMethodManager = (InputMethodManager)view.getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }
    
    private void createInvisibleMultipleFileSelectionView() {
        final AlertDialog$Builder getAlertDialogBuilder = this.mFileChooserDialog.GetAlertDialogBuilder();
        getAlertDialogBuilder.setPositiveButton((CharSequence)Utils.GetResourceStringFromRuntime("button_ok", this.mRuntimeResources), (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
            public void onClick(final DialogInterface dialogInterface, final int n) {
                AIRExpandableFileChooser.this.mFilenames.clear();
                for (int size = AIRExpandableFileChooser.this.mGroupData.size(), i = 0; i < size; ++i) {
                    for (int size2 = AIRExpandableFileChooser.this.mChildData.get(i).size(), j = 0; j < size2; ++j) {
                        if (AIRExpandableFileChooser.this.mCheckedFiles.get(AIRExpandableFileChooser.this.expandableListPositionToFlatPosition(i, j))) {
                            AIRExpandableFileChooser.this.mFilenames.add(((FileInfo)((HashMap)AIRExpandableFileChooser.this.mAdapter.getChild(i, j)).get("FILEINFO")).mFilePath);
                        }
                    }
                }
                AIRExpandableFileChooser.this.mFileChooserStub.SetUserAction("done");
            }
        });
        getAlertDialogBuilder.setNegativeButton((CharSequence)Utils.GetResourceStringFromRuntime("button_cancel", this.mRuntimeResources), (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
            public void onClick(final DialogInterface dialogInterface, final int n) {
                AIRExpandableFileChooser.this.uncheckAll();
                AIRExpandableFileChooser.this.mFileChooserStub.SetUserAction("cancel");
            }
        });
    }
    
    private int expandableListPositionToFlatPosition(final int n, final int n2) {
        int n3 = 0;
        if (n < 0 || n >= this.mChildData.size()) {
            return -1;
        }
        if (n2 < 0 || n2 >= this.mChildData.get(n).size()) {
            return -1;
        }
        int n4;
        for (int i = 0; i < n; ++i, n3 = n4) {
            n4 = n3 + this.mChildData.get(i).size();
        }
        return n3 + n2;
    }
    
    private void uncheckAll() {
        if (this.mAllowMultiple) {
            for (int size = this.mGroupData.size(), i = 0; i < size; ++i) {
                for (int size2 = this.mChildData.get(i).size(), j = 0; j < size2; ++j) {
                    final FileChooserItem mParent = ((FileInfo)((HashMap)this.mAdapter.getChild(i, j)).get("FILEINFO")).mParent;
                    if (mParent != null) {
                        mParent.uncheck();
                    }
                }
            }
        }
    }
    
    public AndroidAlertDialog GetDialog() {
        return this.mFileChooserDialog;
    }
    
    public ArrayList<String> GetFileNames() {
        return this.mFilenames;
    }
    
    public boolean onChildClick(final ExpandableListView expandableListView, final View view, final int n, final int n2, final long n3) {
        if (!(view instanceof FileChooserItem)) {
            return false;
        }
        final FileChooserItem fileChooserItem = (FileChooserItem)view;
        if (!this.mAllowMultiple) {
            final HashMap hashMap = (HashMap)this.mAdapter.getChild(n, n2);
            if (this.mSave) {
                this.mFileSaveName.setText((CharSequence)((FileInfo)hashMap.get("FILEINFO")).mFilePath);
            }
            else {
                this.mFilenames.clear();
                this.mFilenames.add(((FileInfo)hashMap.get("FILEINFO")).mFilePath);
                this.mFileChooserStub.SetUserAction("done");
                this.mFileChooserDialog.dismiss();
            }
        }
        else {
            fileChooserItem.toggle();
        }
        return true;
    }
    
    private class FileChooserExpandableListAdapter extends BaseExpandableListAdapter
    {
        private LayoutInflater mRuntimeInflater;
        private Resources mRuntimeResources;
        
        public FileChooserExpandableListAdapter(final LayoutInflater mRuntimeInflater, final Resources mRuntimeResources) {
            super();
            this.mRuntimeInflater = null;
            this.mRuntimeResources = null;
            this.mRuntimeInflater = mRuntimeInflater;
            this.mRuntimeResources = mRuntimeResources;
        }
        
        public Object getChild(final int n, final int n2) {
            return AIRExpandableFileChooser.this.mChildData.get(n).get(n2);
        }
        
        public long getChildId(final int n, final int n2) {
            return n2;
        }
        
        public View getChildView(final int n, final int n2, final boolean b, final View view, final ViewGroup viewGroup) {
            LinearLayout linearLayout;
            if (view == null || !(view instanceof FileChooserItem)) {
                linearLayout = new FileChooserItem(this.mRuntimeInflater, this.mRuntimeResources, viewGroup, n, n2);
            }
            else {
                linearLayout = (FileChooserItem)view;
            }
            ((FileChooserItem)linearLayout).bindToData(AIRExpandableFileChooser.this.mChildData.get(n).get(n2).get("FILEINFO"), n, n2);
            return (View)linearLayout;
        }
        
        public int getChildrenCount(final int n) {
            return AIRExpandableFileChooser.this.mChildData.get(n).size();
        }
        
        public Object getGroup(final int n) {
            return AIRExpandableFileChooser.this.mGroupData.get(n);
        }
        
        public int getGroupCount() {
            return AIRExpandableFileChooser.this.mGroupData.size();
        }
        
        public long getGroupId(final int n) {
            return n;
        }
        
        public View getGroupView(final int n, final boolean b, final View view, final ViewGroup viewGroup) {
            View inflate;
            if (view == null) {
                inflate = this.mRuntimeInflater.inflate(17367046, viewGroup, false);
            }
            else {
                inflate = view;
            }
            final TextView textView = (TextView)inflate.findViewById(16908308);
            if (textView != null) {
                textView.setText((CharSequence)AIRExpandableFileChooser.this.mGroupData.get(n).get("TYPE"));
            }
            return inflate;
        }
        
        public boolean hasStableIds() {
            return true;
        }
        
        public boolean isChildSelectable(final int n, final int n2) {
            return true;
        }
    }
    
    private class FileChooserItem extends LinearLayout
    {
        private CompoundButton mFileCheckBox;
        private TextView mFileNameView;
        private TextView mFilePathView;
        private int mListFlatPosition;
        private CompoundButton$OnCheckedChangeListener mListener;
        
        FileChooserItem(final LayoutInflater layoutInflater, final Resources resources, final ViewGroup viewGroup, final int n, final int n2) {
            super((Context)AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity());
            this.mListFlatPosition = -1;
            if (AIRExpandableFileChooser.this.mAllowMultiple) {
                final View getLayoutViewFromRuntime = Utils.GetLayoutViewFromRuntime("expandable_multiple_chooser_row", resources, layoutInflater);
                final Resources resources2 = getLayoutViewFromRuntime.getResources();
                this.mFileNameView = (TextView)Utils.GetWidgetInViewByName("filename", resources2, getLayoutViewFromRuntime);
                this.mFilePathView = (TextView)Utils.GetWidgetInViewByName("filepath", resources2, getLayoutViewFromRuntime);
                this.mFileCheckBox = (CompoundButton)Utils.GetWidgetInViewByName("filecheck", resources2, getLayoutViewFromRuntime);
                while (true) {
                    if (this.mFileNameView == null || this.mFilePathView == null || this.mFileCheckBox == null) {
                        this.mListFlatPosition = AIRExpandableFileChooser.this.expandableListPositionToFlatPosition(n, n2);
                        this.mListener = (CompoundButton$OnCheckedChangeListener)new CompoundButton$OnCheckedChangeListener() {
                            public void onCheckedChanged(final CompoundButton compoundButton, final boolean b) {
                                if (FileChooserItem.this.mListFlatPosition < 0) {
                                    return;
                                }
                                if (b) {
                                    AIRExpandableFileChooser.this.mCheckedFiles.put(FileChooserItem.this.mListFlatPosition, b);
                                    return;
                                }
                                AIRExpandableFileChooser.this.mCheckedFiles.delete(FileChooserItem.this.mListFlatPosition);
                            }
                        };
                        this.addView(getLayoutViewFromRuntime);
                        return;
                    }
                    continue;
                }
            }
            else {
                final View getLayoutViewFromRuntime2 = Utils.GetLayoutViewFromRuntime("expandable_chooser_row", resources, layoutInflater);
                final Resources resources3 = getLayoutViewFromRuntime2.getResources();
                this.mFileNameView = (TextView)Utils.GetWidgetInViewByName("filename", resources3, getLayoutViewFromRuntime2);
                this.mFilePathView = (TextView)Utils.GetWidgetInViewByName("filepath", resources3, getLayoutViewFromRuntime2);
                while (true) {
                    if (this.mFileNameView == null || this.mFilePathView == null) {
                        this.addView(getLayoutViewFromRuntime2);
                        return;
                    }
                    continue;
                }
            }
        }
        
        public void bindToData(final FileInfo fileInfo, final int n, final int n2) {
            this.mFileNameView.setText((CharSequence)fileInfo.mFileName);
            this.mFilePathView.setText((CharSequence)fileInfo.mFilePath);
            if (AIRExpandableFileChooser.this.mAllowMultiple) {
                this.mListFlatPosition = AIRExpandableFileChooser.this.expandableListPositionToFlatPosition(n, n2);
                this.mFileCheckBox.setOnCheckedChangeListener((CompoundButton$OnCheckedChangeListener)null);
                this.mFileCheckBox.setChecked(AIRExpandableFileChooser.this.mCheckedFiles.get(this.mListFlatPosition));
                this.mFileCheckBox.setOnCheckedChangeListener(this.mListener);
                fileInfo.mParent = this;
            }
        }
        
        public void toggle() {
            if (AIRExpandableFileChooser.this.mAllowMultiple) {
                this.mListener.onCheckedChanged(this.mFileCheckBox, !this.mFileCheckBox.isChecked());
                this.mFileCheckBox.setOnCheckedChangeListener((CompoundButton$OnCheckedChangeListener)null);
                this.mFileCheckBox.setChecked(AIRExpandableFileChooser.this.mCheckedFiles.get(this.mListFlatPosition));
                this.mFileCheckBox.setOnCheckedChangeListener(this.mListener);
            }
        }
        
        public void uncheck() {
            if (AIRExpandableFileChooser.this.mAllowMultiple) {
                this.mListener.onCheckedChanged(this.mFileCheckBox, false);
                this.mFileCheckBox.setOnCheckedChangeListener((CompoundButton$OnCheckedChangeListener)null);
                this.mFileCheckBox.setChecked(false);
                this.mFileCheckBox.setOnCheckedChangeListener(this.mListener);
            }
        }
    }
    
    private class FileInfo
    {
        public String mFileName;
        public String mFilePath;
        public FileChooserItem mParent;
        
        public FileInfo(final String mFileName, final String mFilePath) {
            super();
            this.mFileName = new String();
            this.mFilePath = new String();
            this.mParent = null;
            this.mFileName = mFileName;
            this.mFilePath = mFilePath;
        }
    }
}
