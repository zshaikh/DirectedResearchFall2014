package com.example.calender1;

import android.app.*;
import android.content.*;
import java.util.*;
import android.database.*;
import android.widget.*;
import android.os.*;
import android.view.*;

public class EditCategoryActivity extends Activity
{
    private EditText catName;
    final DBAdapter db;
    private Button delete;
    private ListView listCategory;
    private String oldCategoryName;
    private Button update;
    
    public EditCategoryActivity() {
        super();
        this.db = new DBAdapter((Context)this);
    }
    
    static /* synthetic */ void access$3(final EditCategoryActivity editCategoryActivity, final String oldCategoryName) {
        editCategoryActivity.oldCategoryName = oldCategoryName;
    }
    
    private void initialization() {
        this.listCategory = (ListView)this.findViewById(2131296269);
        this.catName = (EditText)this.findViewById(2131296266);
        this.update = (Button)this.findViewById(2131296271);
        this.delete = (Button)this.findViewById(2131296272);
    }
    
    private void setCategories() {
        try {
            final ArrayList<String> list = new ArrayList<String>();
            final ArrayAdapter adapter = new ArrayAdapter((Context)this, 17367048, (List)list);
            this.db.open();
            final Cursor allCategories = this.db.getAllCategories();
            if (allCategories.moveToFirst()) {
                do {
                    list.add(allCategories.getString(0));
                } while (allCategories.moveToNext());
            }
            this.listCategory.setAdapter((ListAdapter)adapter);
            this.catName.setEnabled(false);
        }
        catch (Exception ex) {
            Toast.makeText(this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
        }
        finally {
            this.db.close();
        }
    }
    
    private void setListenerForDelete() {
        this.delete.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                try {
                    EditCategoryActivity.this.db.open();
                    EditCategoryActivity.this.db.deleteCategory(EditCategoryActivity.this.catName.getText().toString());
                    EditCategoryActivity.this.setCategories();
                    EditCategoryActivity.this.catName.setText((CharSequence)"");
                    EditCategoryActivity.this.catName.setEnabled(false);
                }
                catch (Exception ex) {
                    Toast.makeText(EditCategoryActivity.this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
                }
                finally {
                    EditCategoryActivity.this.db.close();
                }
            }
        });
    }
    
    private void setListenerForItem() {
        this.listCategory.setTextFilterEnabled(true);
        this.listCategory.setOnItemClickListener((AdapterView$OnItemClickListener)new AdapterView$OnItemClickListener() {
            public void onItemClick(final AdapterView<?> adapterView, final View view, final int n, final long n2) {
                try {
                    Toast.makeText(EditCategoryActivity.this.getBaseContext(), (CharSequence)((TextView)view).getText().toString(), 1).show();
                    EditCategoryActivity.this.catName.setText((CharSequence)((TextView)view).getText().toString());
                    EditCategoryActivity.access$3(EditCategoryActivity.this, ((TextView)view).getText().toString());
                    EditCategoryActivity.this.catName.setEnabled(true);
                }
                catch (Exception ex) {
                    Toast.makeText(EditCategoryActivity.this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
                }
            }
        });
    }
    
    private void setListenerForUpdate() {
        this.update.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                try {
                    EditCategoryActivity.this.db.open();
                    EditCategoryActivity.this.db.updateCategory(EditCategoryActivity.this.oldCategoryName, EditCategoryActivity.this.catName.getText().toString());
                    EditCategoryActivity.this.setCategories();
                    EditCategoryActivity.this.catName.setText((CharSequence)"");
                    EditCategoryActivity.this.catName.setEnabled(false);
                }
                catch (Exception ex) {
                    Toast.makeText(EditCategoryActivity.this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
                }
                finally {
                    EditCategoryActivity.this.db.close();
                }
            }
        });
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903042);
        this.initialization();
        this.setCategories();
        this.setListenerForItem();
        this.setListenerForUpdate();
        this.setListenerForDelete();
    }
    
    public boolean onCreateOptionsMenu(final Menu menu) {
        return true;
    }
}
