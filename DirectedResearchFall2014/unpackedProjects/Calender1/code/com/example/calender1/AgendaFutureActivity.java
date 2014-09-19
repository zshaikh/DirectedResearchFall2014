package com.example.calender1;

import android.app.*;
import android.content.*;
import java.util.*;
import android.widget.*;
import android.database.*;
import android.os.*;

public class AgendaFutureActivity extends Activity
{
    static final int DATE_DIALOG_ID;
    private ArrayAdapter<Object> arrayAdapter;
    private CalendarView cal;
    private DBAdapter db;
    private ArrayList<Object> list;
    private ListView listEvent;
    private String selectedDate;
    private TextView tvDisplayDate;
    
    public AgendaFutureActivity() {
        super();
        this.list = new ArrayList<Object>();
        this.db = new DBAdapter((Context)this);
    }
    
    private void getAllFutureEvents(final String s) {
        try {
            this.db.open();
            final Cursor futureEvents = this.db.getFutureEvents(s);
            Toast.makeText(this.getBaseContext(), (CharSequence)("You Have " + futureEvents.getCount() + "Event(s)"), 1).show();
            this.list = new ArrayList<Object>();
            this.arrayAdapter = (ArrayAdapter<Object>)new ArrayAdapter((Context)this, 17367043, (List)this.list);
            if (futureEvents.moveToFirst()) {
                do {
                    this.list.add("Categry: " + futureEvents.getString(5) + "\n" + "Date: " + futureEvents.getString(0) + "\n" + "Start Time: " + futureEvents.getString(1) + "\n" + "End Time: " + futureEvents.getString(2) + "\n" + "Title: " + futureEvents.getString(3) + "\n" + "Description: " + futureEvents.getString(4));
                } while (futureEvents.moveToNext());
            }
            this.listEvent.setAdapter((ListAdapter)this.arrayAdapter);
        }
        catch (Exception ex) {
            Toast.makeText(this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
        }
        finally {
            this.db.close();
        }
    }
    
    private void intialization() {
        this.tvDisplayDate = (TextView)this.findViewById(2131296259);
        this.listEvent = (ListView)this.findViewById(2131296308);
        (this.cal = new CalendarView((Context)this)).setFirstDayOfWeek(2);
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903045);
        this.selectedDate = this.getIntent().getExtras().getString("selectedDate");
        this.intialization();
        this.getAllFutureEvents(this.selectedDate);
    }
}
