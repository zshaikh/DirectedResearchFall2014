package com.example.calender1;

import android.content.*;
import android.widget.*;
import android.database.*;
import android.view.*;
import java.util.*;
import android.os.*;
import android.app.*;

public class AgendaActivity extends Activity
{
    static final int DATE_DIALOG_ID = 999;
    private ArrayAdapter<Object> arrayAdapter;
    private CalendarView cal;
    private Button changeDate;
    private int[] currentDateArray;
    public DatePickerDialog$OnDateSetListener datePickerListener;
    private int day;
    private DBAdapter db;
    private ArrayList<Object> list;
    private ListView listEvent;
    private int month;
    private Calendar nextDay;
    private Button nextDayAgenda;
    private Calendar previousDay;
    private Button previousDayAgenda;
    private String selectedDate;
    private TextView tvDisplayDate;
    private int year;
    
    public AgendaActivity() {
        super();
        this.nextDay = Calendar.getInstance();
        this.previousDay = Calendar.getInstance();
        this.list = new ArrayList<Object>();
        this.db = new DBAdapter((Context)this);
        this.datePickerListener = (DatePickerDialog$OnDateSetListener)new DatePickerDialog$OnDateSetListener() {
            public void onDateSet(final DatePicker datePicker, final int n, final int n2, final int n3) {
                AgendaActivity.access$0(AgendaActivity.this, n);
                AgendaActivity.access$1(AgendaActivity.this, n2 + 1);
                AgendaActivity.access$2(AgendaActivity.this, n3);
                AgendaActivity.this.tvDisplayDate.setText((CharSequence)new StringBuilder().append(AgendaActivity.this.month).append("-").append(AgendaActivity.this.day).append("-").append(AgendaActivity.this.year).append(" "));
                AgendaActivity.access$7(AgendaActivity.this, String.valueOf(AgendaActivity.this.month) + "-" + AgendaActivity.this.day + "-" + AgendaActivity.this.year);
                AgendaActivity.this.getDayEvents(AgendaActivity.this.selectedDate);
            }
        };
    }
    
    static /* synthetic */ void access$0(final AgendaActivity agendaActivity, final int year) {
        agendaActivity.year = year;
    }
    
    static /* synthetic */ void access$1(final AgendaActivity agendaActivity, final int month) {
        agendaActivity.month = month;
    }
    
    static /* synthetic */ void access$10(final AgendaActivity agendaActivity, final int[] currentDateArray) {
        agendaActivity.currentDateArray = currentDateArray;
    }
    
    static /* synthetic */ void access$2(final AgendaActivity agendaActivity, final int day) {
        agendaActivity.day = day;
    }
    
    static /* synthetic */ void access$7(final AgendaActivity agendaActivity, final String selectedDate) {
        agendaActivity.selectedDate = selectedDate;
    }
    
    private void getDayEvents(final String s) {
        try {
            this.db.open();
            final Cursor dayEvents = this.db.getDayEvents(s);
            new StringBuilder(String.valueOf("")).append("You have ").append(dayEvents.getCount()).append("  Event(s) on :").append("\n").toString();
            this.list = new ArrayList<Object>();
            this.arrayAdapter = (ArrayAdapter<Object>)new ArrayAdapter((Context)this, 17367043, (List)this.list);
            if (dayEvents.moveToFirst()) {
                do {
                    this.list.add("Categry: " + dayEvents.getString(5) + "\n" + "Date: " + dayEvents.getString(0) + "\n" + "Start Time: " + dayEvents.getString(1) + "\n" + "End Time: " + dayEvents.getString(2) + "\n" + "Title: " + dayEvents.getString(3) + "\n" + "Description: " + dayEvents.getString(4));
                } while (dayEvents.moveToNext());
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
        this.changeDate = (Button)this.findViewById(2131296258);
        this.nextDayAgenda = (Button)this.findViewById(2131296264);
        this.previousDayAgenda = (Button)this.findViewById(2131296263);
        this.listEvent = (ListView)this.findViewById(2131296262);
        (this.cal = new CalendarView((Context)this)).setFirstDayOfWeek(2);
        this.tvDisplayDate.setText((CharSequence)this.selectedDate);
    }
    
    private void setListenerOnChangeDateButton() {
        this.changeDate.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                AgendaActivity.this.showDialog(999);
            }
        });
    }
    
    private void setListernerOnShowNextAgenda() {
        this.nextDayAgenda.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                try {
                    AgendaActivity.access$10(AgendaActivity.this, new int[3]);
                    final StringTokenizer stringTokenizer = new StringTokenizer(AgendaActivity.this.tvDisplayDate.getText().toString(), "-");
                    int n = 0;
                    while (stringTokenizer.hasMoreElements()) {
                        AgendaActivity.this.currentDateArray[n] = Integer.parseInt(stringTokenizer.nextElement().toString().replace(" ", ""));
                        ++n;
                    }
                    AgendaActivity.this.nextDay.set(AgendaActivity.this.currentDateArray[2], AgendaActivity.this.currentDateArray[0], AgendaActivity.this.currentDateArray[1]);
                    AgendaActivity.this.nextDay.add(6, 1);
                    AgendaActivity.access$0(AgendaActivity.this, AgendaActivity.this.nextDay.get(1));
                    AgendaActivity.access$1(AgendaActivity.this, AgendaActivity.this.nextDay.get(2));
                    AgendaActivity.access$2(AgendaActivity.this, AgendaActivity.this.nextDay.get(5));
                    AgendaActivity.this.tvDisplayDate.setText((CharSequence)new StringBuilder().append(AgendaActivity.this.month).append("-").append(AgendaActivity.this.day).append("-").append(AgendaActivity.this.year).append(" "));
                    AgendaActivity.access$7(AgendaActivity.this, String.valueOf(AgendaActivity.this.month) + "-" + AgendaActivity.this.day + "-" + AgendaActivity.this.year);
                    AgendaActivity.this.getDayEvents(AgendaActivity.this.selectedDate);
                }
                catch (Exception ex) {
                    Toast.makeText(AgendaActivity.this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
                }
            }
        });
    }
    
    private void setListernerOnShowPreviousAgenda() {
        this.previousDayAgenda.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                try {
                    AgendaActivity.access$10(AgendaActivity.this, new int[3]);
                    final StringTokenizer stringTokenizer = new StringTokenizer(AgendaActivity.this.tvDisplayDate.getText().toString(), "-");
                    int n = 0;
                    while (stringTokenizer.hasMoreElements()) {
                        AgendaActivity.this.currentDateArray[n] = Integer.parseInt(stringTokenizer.nextElement().toString().replace(" ", ""));
                        ++n;
                    }
                    AgendaActivity.this.previousDay.set(AgendaActivity.this.currentDateArray[2], AgendaActivity.this.currentDateArray[0], AgendaActivity.this.currentDateArray[1]);
                    AgendaActivity.this.previousDay.add(6, -1);
                    AgendaActivity.access$0(AgendaActivity.this, AgendaActivity.this.previousDay.get(1));
                    AgendaActivity.access$1(AgendaActivity.this, AgendaActivity.this.previousDay.get(2));
                    AgendaActivity.access$2(AgendaActivity.this, AgendaActivity.this.previousDay.get(5));
                    AgendaActivity.this.tvDisplayDate.setText((CharSequence)new StringBuilder().append(AgendaActivity.this.month).append("-").append(AgendaActivity.this.day).append("-").append(AgendaActivity.this.year).append(" "));
                    AgendaActivity.access$7(AgendaActivity.this, String.valueOf(AgendaActivity.this.month) + "-" + AgendaActivity.this.day + "-" + AgendaActivity.this.year);
                    AgendaActivity.this.getDayEvents(AgendaActivity.this.selectedDate);
                }
                catch (Exception ex) {
                    Toast.makeText(AgendaActivity.this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
                }
            }
        });
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903040);
        this.selectedDate = this.getIntent().getExtras().getString("selectedDate");
        this.intialization();
        this.setListernerOnShowNextAgenda();
        this.getDayEvents(this.selectedDate);
        this.setListernerOnShowNextAgenda();
        this.setListernerOnShowPreviousAgenda();
        this.setListenerOnChangeDateButton();
    }
    
    protected Dialog onCreateDialog(final int n) {
        switch (n) {
            default: {
                return null;
            }
            case 999: {
                return (Dialog)new DatePickerDialog((Context)this, this.datePickerListener, this.year, this.month, this.day);
            }
        }
    }
}
