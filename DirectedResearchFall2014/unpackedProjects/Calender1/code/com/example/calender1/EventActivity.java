package com.example.calender1;

import java.text.*;
import android.view.*;
import android.content.*;
import java.util.*;
import android.widget.*;
import android.database.*;
import android.os.*;
import android.app.*;

public class EventActivity extends Activity
{
    static final int DATE_DIALOG_ID = 999;
    static final int END_TIME_DIALOG_ID = 0;
    static final int START_TIME_DIALOG_ID = 1;
    final Calendar c;
    Date date;
    SimpleDateFormat dateFormat;
    private DatePickerDialog$OnDateSetListener datePickerListener;
    private int day;
    final DBAdapter db;
    private TimePickerDialog$OnTimeSetListener endTimePickerListener;
    private EditText endTimeView;
    private int hours;
    private int minute;
    private int month;
    String selectedDate;
    private TimePickerDialog$OnTimeSetListener startTimePickerListener;
    private EditText startTimeView;
    private Button tbnGoToCategoryView;
    private TextView tvDisplayCalImage;
    private TextView tvDisplayDate;
    private int year;
    
    public EventActivity() {
        super();
        this.db = new DBAdapter((Context)this);
        this.c = Calendar.getInstance();
        this.endTimePickerListener = (TimePickerDialog$OnTimeSetListener)new TimePickerDialog$OnTimeSetListener() {
            public void onTimeSet(final TimePicker timePicker, final int i, final int j) {
                EventActivity.this.endTimeView.setText((CharSequence)(String.valueOf(i) + ":" + j));
            }
        };
        this.startTimePickerListener = (TimePickerDialog$OnTimeSetListener)new TimePickerDialog$OnTimeSetListener() {
            public void onTimeSet(final TimePicker timePicker, final int i, final int j) {
                EventActivity.this.startTimeView.setText((CharSequence)(String.valueOf(i) + ":" + j));
            }
        };
        this.datePickerListener = (DatePickerDialog$OnDateSetListener)new DatePickerDialog$OnDateSetListener() {
            public void onDateSet(final DatePicker datePicker, final int n, final int n2, final int n3) {
                EventActivity.access$2(EventActivity.this, n);
                EventActivity.access$3(EventActivity.this, n2);
                EventActivity.access$4(EventActivity.this, n3);
                try {
                    EventActivity.this.tvDisplayDate.setText((CharSequence)new StringBuilder().append(1 + EventActivity.this.month).append("-").append(EventActivity.this.day).append("-").append(EventActivity.this.year).append(" "));
                }
                catch (Exception ex) {
                    Toast.makeText(EventActivity.this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
                }
            }
        };
    }
    
    static /* synthetic */ void access$2(final EventActivity eventActivity, final int year) {
        eventActivity.year = year;
    }
    
    static /* synthetic */ void access$3(final EventActivity eventActivity, final int month) {
        eventActivity.month = month;
    }
    
    static /* synthetic */ void access$4(final EventActivity eventActivity, final int day) {
        eventActivity.day = day;
    }
    
    private void addListenerOnButton() {
        this.tvDisplayCalImage.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                EventActivity.this.showDialog(999);
            }
        });
        this.tbnGoToCategoryView.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                try {
                    EventActivity.this.startActivity(new Intent(view.getContext(), (Class)CategoryActivity.class));
                    EventActivity.this.setCategories();
                }
                catch (Exception ex) {
                    Toast.makeText(EventActivity.this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
                }
            }
        });
        ((Button)this.findViewById(2131296291)).setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            private final /* synthetic */ TextView val$date = (TextView)EventActivity.this.findViewById(2131296300);
            private final /* synthetic */ EditText val$etDescreption = (EditText)EventActivity.this.findViewById(2131296292);
            private final /* synthetic */ EditText val$etTitle = (EditText)EventActivity.this.findViewById(2131296277);
            private final /* synthetic */ Spinner val$spinner2 = (Spinner)EventActivity.this.findViewById(2131296280);
            
            public void onClick(final View view) {
                try {
                    EventActivity.this.db.open();
                    if (EventActivity.this.db.checkEventConflict(this.val$date.getText().toString().replace(" ", ""), EventActivity.this.startTimeView.getText().toString(), EventActivity.this.endTimeView.getText().toString())) {
                        Toast.makeText(EventActivity.this.getBaseContext(), (CharSequence)"Please chose another time (Event conflict)", 1).show();
                    }
                    else {
                        EventActivity.this.db.open();
                        EventActivity.this.db.insertEvent(this.val$date.getText().toString().replace(" ", ""), EventActivity.this.startTimeView.getText().toString(), EventActivity.this.endTimeView.getText().toString(), this.val$etTitle.getText().toString(), this.val$etDescreption.getText().toString(), String.valueOf(this.val$spinner2.getSelectedItem().toString().replace(" ", "")));
                        Toast.makeText(EventActivity.this.getBaseContext(), (CharSequence)"Event has been added to your calender", 1).show();
                    }
                }
                catch (Exception ex) {
                    Toast.makeText(EventActivity.this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
                }
                finally {
                    EventActivity.this.db.close();
                }
            }
        });
    }
    
    private void addListenerOnEndTimeButton() {
        this.endTimeView.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                EventActivity.this.showDialog(0);
            }
        });
    }
    
    private void addListenerOnStartTimeButton() {
        this.startTimeView.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                EventActivity.this.showDialog(1);
            }
        });
    }
    
    private void initializtion() {
        this.endTimeView = (EditText)this.findViewById(2131296302);
        this.startTimeView = (EditText)this.findViewById(2131296301);
        this.tvDisplayDate = (TextView)this.findViewById(2131296300);
        this.tvDisplayCalImage = (TextView)this.findViewById(2131296299);
        this.tbnGoToCategoryView = (Button)this.findViewById(2131296305);
    }
    
    private void setCategories() {
        try {
            final Spinner spinner = (Spinner)this.findViewById(2131296280);
            final ArrayList<String> list = new ArrayList<String>();
            final ArrayAdapter adapter = new ArrayAdapter((Context)this, 17367048, (List)list);
            this.db.open();
            final Cursor allCategories = this.db.getAllCategories();
            if (allCategories.moveToFirst()) {
                do {
                    list.add(allCategories.getString(0));
                } while (allCategories.moveToNext());
            }
            spinner.setAdapter((SpinnerAdapter)adapter);
        }
        catch (Exception ex) {
            Toast.makeText(this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
        }
        finally {
            this.db.close();
        }
    }
    
    private void setCurrentDateOnView() {
        this.year = this.c.get(1);
        this.month = this.c.get(2);
        this.day = this.c.get(5);
        this.hours = this.c.get(11);
        this.minute = this.c.get(12);
        this.tvDisplayDate.setText((CharSequence)this.selectedDate);
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903044);
        this.selectedDate = this.getIntent().getExtras().getString("selectedDate");
        this.initializtion();
        this.setCurrentDateOnView();
        this.addListenerOnButton();
        this.addListenerOnStartTimeButton();
        this.addListenerOnEndTimeButton();
        this.setCategories();
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
