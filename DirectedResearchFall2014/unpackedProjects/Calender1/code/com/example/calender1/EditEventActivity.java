package com.example.calender1;

import android.view.*;
import android.content.*;
import java.text.*;
import android.annotation.*;
import java.util.*;
import android.widget.*;
import android.database.*;
import android.os.*;
import android.app.*;

public class EditEventActivity extends Activity
{
    static final int DATE_DIALOG_ID = 999;
    static final int END_TIME_DIALOG_ID = 0;
    static final int START_TIME_DIALOG_ID = 1;
    private Button btnDelete;
    final Calendar c;
    private DatePickerDialog$OnDateSetListener datePickerListener;
    private int day;
    final DBAdapter db;
    private EditText descriptionView;
    private TimePickerDialog$OnTimeSetListener endTimePickerListener;
    private EditText endTimeView;
    private Spinner eventCategory;
    private int hours;
    private int minute;
    private int month;
    private String oldDate;
    private String oldEndTime;
    private int oldEventCategoryId;
    private int oldEventPredicalTypeId;
    private String oldStartTime;
    String selectedDate;
    private TimePickerDialog$OnTimeSetListener startTimePickerListener;
    private EditText startTimeView;
    private Button tbnGoToCategoryView;
    private EditText titleView;
    private TextView tvChangeDate;
    private TextView tvDisplayDate;
    private int year;
    
    public EditEventActivity() {
        super();
        this.db = new DBAdapter((Context)this);
        this.c = Calendar.getInstance();
        this.endTimePickerListener = (TimePickerDialog$OnTimeSetListener)new TimePickerDialog$OnTimeSetListener() {
            public void onTimeSet(final TimePicker timePicker, final int i, final int j) {
                EditEventActivity.this.endTimeView.setText((CharSequence)(String.valueOf(i) + ":" + j));
            }
        };
        this.startTimePickerListener = (TimePickerDialog$OnTimeSetListener)new TimePickerDialog$OnTimeSetListener() {
            public void onTimeSet(final TimePicker timePicker, final int i, final int j) {
                EditEventActivity.this.startTimeView.setText((CharSequence)(String.valueOf(i) + ":" + j));
            }
        };
        this.datePickerListener = (DatePickerDialog$OnDateSetListener)new DatePickerDialog$OnDateSetListener() {
            public void onDateSet(final DatePicker datePicker, final int n, final int n2, final int n3) {
                EditEventActivity.access$2(EditEventActivity.this, n);
                EditEventActivity.access$3(EditEventActivity.this, n2);
                EditEventActivity.access$4(EditEventActivity.this, n3);
                EditEventActivity.this.tvDisplayDate.setText((CharSequence)new StringBuilder().append(1 + EditEventActivity.this.month).append("-").append(EditEventActivity.this.day).append("-").append(EditEventActivity.this.year).append(" "));
            }
        };
    }
    
    static /* synthetic */ void access$2(final EditEventActivity editEventActivity, final int year) {
        editEventActivity.year = year;
    }
    
    static /* synthetic */ void access$3(final EditEventActivity editEventActivity, final int month) {
        editEventActivity.month = month;
    }
    
    static /* synthetic */ void access$4(final EditEventActivity editEventActivity, final int day) {
        editEventActivity.day = day;
    }
    
    private void addListenerOnButton() {
        this.tvChangeDate.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                EditEventActivity.this.showDialog(999);
            }
        });
        this.tbnGoToCategoryView.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                try {
                    EditEventActivity.this.startActivity(new Intent(view.getContext(), (Class)CategoryActivity.class));
                }
                catch (Exception ex) {
                    Toast.makeText(EditEventActivity.this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
                }
            }
        });
        ((Button)this.findViewById(2131296296)).setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            private final /* synthetic */ TextView val$date = (TextView)EditEventActivity.this.findViewById(2131296275);
            private final /* synthetic */ EditText val$etDescreption = (EditText)EditEventActivity.this.findViewById(2131296282);
            private final /* synthetic */ EditText val$etTitle = (EditText)EditEventActivity.this.findViewById(2131296279);
            private final /* synthetic */ Spinner val$spinner2 = (Spinner)EditEventActivity.this.findViewById(2131296290);
            
            @SuppressLint({ "SimpleDateFormat" })
            public void onClick(final View view) {
                try {
                    final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("hh:mm");
                    if (simpleDateFormat.parse(EditEventActivity.this.startTimeView.getText().toString()).getTime() > simpleDateFormat.parse(EditEventActivity.this.endTimeView.getText().toString()).getTime()) {
                        Toast.makeText(EditEventActivity.this.getBaseContext(), (CharSequence)"the start time must be before the end time ", 1).show();
                        return;
                    }
                    EditEventActivity.this.db.open();
                    if (EditEventActivity.this.db.checkEventConflict(this.val$date.getText().toString().replace(" ", ""), EditEventActivity.this.startTimeView.getText().toString(), EditEventActivity.this.endTimeView.getText().toString())) {
                        Toast.makeText(EditEventActivity.this.getBaseContext(), (CharSequence)"Please choose another time (Event Conflict)", 1).show();
                    }
                    else {
                        EditEventActivity.this.db.open();
                        EditEventActivity.this.db.updateEvent(this.val$date.getText().toString().replace(" ", ""), EditEventActivity.this.startTimeView.getText().toString(), EditEventActivity.this.endTimeView.getText().toString(), this.val$etTitle.getText().toString(), this.val$etDescreption.getText().toString(), String.valueOf(this.val$spinner2.getSelectedItem().toString().replace(" ", "")), EditEventActivity.this.oldDate, EditEventActivity.this.oldStartTime, EditEventActivity.this.oldEndTime);
                        Toast.makeText(EditEventActivity.this.getBaseContext(), (CharSequence)"Event has been updated on your calender", 1).show();
                    }
                }
                catch (Exception ex) {
                    Toast.makeText(EditEventActivity.this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
                }
                finally {
                    EditEventActivity.this.db.close();
                }
            }
        });
    }
    
    private void addListenerOnEndTimeButton() {
        this.endTimeView.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                EditEventActivity.this.showDialog(0);
            }
        });
    }
    
    private void addListenerOnStartTimeButton() {
        this.startTimeView.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                EditEventActivity.this.showDialog(1);
            }
        });
    }
    
    private void addListernerOnDeleteButton() {
        this.btnDelete.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                try {
                    EditEventActivity.this.db.open();
                    EditEventActivity.this.db.deleteEvent(EditEventActivity.this.oldDate, EditEventActivity.this.startTimeView.getText().toString(), EditEventActivity.this.endTimeView.getText().toString());
                }
                catch (Exception ex) {
                    Toast.makeText(EditEventActivity.this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
                }
                finally {
                    EditEventActivity.this.db.close();
                }
            }
        });
    }
    
    private void intializeObjects() {
        this.tbnGoToCategoryView = (Button)this.findViewById(2131296293);
        this.endTimeView = (EditText)this.findViewById(2131296286);
        this.startTimeView = (EditText)this.findViewById(2131296285);
        this.titleView = (EditText)this.findViewById(2131296279);
        this.descriptionView = (EditText)this.findViewById(2131296282);
        this.eventCategory = (Spinner)this.findViewById(2131296290);
        this.tvDisplayDate = (TextView)this.findViewById(2131296275);
        this.tvChangeDate = (TextView)this.findViewById(2131296274);
        this.btnDelete = (Button)this.findViewById(2131296297);
        this.year = this.c.get(1);
        this.month = this.c.get(2);
        this.day = this.c.get(5);
        this.hours = this.c.get(11);
        this.minute = this.c.get(12);
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
            this.eventCategory.setAdapter((SpinnerAdapter)adapter);
        }
        catch (Exception ex) {
            Toast.makeText(this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
        }
        finally {
            this.db.close();
        }
    }
    
    private void setCurrentDateTimeAndCategoryOnView(final String s, final String s2, final String s3, final int oldEventCategoryId, final int oldEventPredicalTypeId, final String text, final String text2, final int n) {
        this.tvDisplayDate.setText((CharSequence)s);
        this.startTimeView.setText((CharSequence)s2);
        this.endTimeView.setText((CharSequence)s3);
        this.titleView.setText((CharSequence)text);
        this.descriptionView.setText((CharSequence)text2);
        this.oldDate = s;
        this.oldStartTime = s2;
        this.oldEndTime = s3;
        this.oldEventCategoryId = oldEventCategoryId;
        this.oldEventPredicalTypeId = oldEventPredicalTypeId;
    }
    
    public void onCreate(final Bundle bundle) {
        try {
            super.onCreate(bundle);
            this.setContentView(2130903043);
            this.selectedDate = this.getIntent().getExtras().getString("selectedDate");
            this.intializeObjects();
            this.addListenerOnButton();
            this.addListenerOnStartTimeButton();
            this.addListenerOnEndTimeButton();
            this.addListernerOnDeleteButton();
            this.setCategories();
            this.setCurrentDateTimeAndCategoryOnView(this.getIntent().getExtras().getString("Date"), this.getIntent().getExtras().getString("StartTime"), this.getIntent().getExtras().getString("EndTime"), 0, 0, this.getIntent().getExtras().getString("Title"), this.getIntent().getExtras().getString("Description"), this.getIntent().getExtras().getInt("id"));
        }
        catch (Exception ex) {
            Toast.makeText(this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
        }
    }
    
    protected Dialog onCreateDialog(final int n) {
        switch (n) {
            default: {
                return null;
            }
            case 999: {
                return (Dialog)new DatePickerDialog((Context)this, this.datePickerListener, this.year, this.month, this.day);
            }
            case 0: {
                return (Dialog)new TimePickerDialog((Context)this, this.endTimePickerListener, this.hours, this.minute, true);
            }
            case 1: {
                return (Dialog)new TimePickerDialog((Context)this, this.startTimePickerListener, this.hours, this.minute, true);
            }
        }
    }
    
    public void onResume() {
        super.onResume();
        this.setCategories();
    }
}
