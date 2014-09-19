package com.example.calender1;

import android.app.*;
import android.content.*;
import android.view.*;
import android.widget.*;
import android.os.*;

public class CategoryActivity extends Activity
{
    private EditText CatName;
    private Button btnAddCategory;
    final DBAdapter db;
    
    public CategoryActivity() {
        super();
        this.db = new DBAdapter((Context)this);
    }
    
    private void addListenerOnButton() {
        this.btnAddCategory.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                try {
                    CategoryActivity.this.db.open();
                    if (CategoryActivity.this.db.CheckCategoryConflict(CategoryActivity.this.CatName.getText().toString())) {
                        Toast.makeText(CategoryActivity.this.getBaseContext(), (CharSequence)"Please chose another category Name (Category conflict)", 1).show();
                    }
                    else {
                        CategoryActivity.this.db.open();
                        CategoryActivity.this.db.insertCategory(CategoryActivity.this.CatName.getText().toString());
                        Toast.makeText(CategoryActivity.this.getBaseContext(), (CharSequence)"the category has been added to your calender", 1).show();
                    }
                }
                catch (Exception ex) {
                    Toast.makeText(CategoryActivity.this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
                }
                finally {
                    CategoryActivity.this.db.close();
                }
            }
        });
    }
    
    private void initialization() {
        this.btnAddCategory = (Button)this.findViewById(2131296267);
        this.CatName = (EditText)this.findViewById(2131296266);
    }
    
    public void onCreate(final Bundle bundle) {
        try {
            super.onCreate(bundle);
            this.setContentView(2130903041);
            this.initialization();
            this.addListenerOnButton();
        }
        catch (Exception ex) {
            Toast.makeText(this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
        }
    }
}
