package com.example.calender1;

import android.app.*;
import android.database.*;
import android.text.method.*;
import android.graphics.*;
import java.text.*;
import android.annotation.*;
import java.util.*;
import android.content.*;
import android.os.*;
import android.view.*;
import android.widget.*;

public class MainActivity extends Activity
{
    Button add;
    ArrayAdapter<Object> arrayAdapter;
    CalendarView cal;
    public final DBAdapter db;
    TextView events;
    Button futureAgenda;
    ArrayList<Object> list;
    ListView listEvent;
    RelativeLayout rl;
    String selectedDate;
    Button showAgenda;
    Button showCategory;
    
    public MainActivity() {
        super();
        this.db = new DBAdapter((Context)this);
        this.list = new ArrayList<Object>();
    }
    
    private void getDayEvents(final String s) {
        try {
            this.db.open();
            final Cursor dayEvents = this.db.getDayEvents(s);
            this.list = new ArrayList<Object>();
            this.arrayAdapter = (ArrayAdapter<Object>)new ArrayAdapter((Context)this, 17367043, (List)this.list);
            if (dayEvents.moveToFirst()) {
                do {
                    this.list.add("Categry: " + dayEvents.getString(5) + "\n" + "Date: " + dayEvents.getString(0) + "\n" + "Start Time: " + dayEvents.getString(1) + "\n" + "End Time: " + dayEvents.getString(2) + "\n" + "Title: " + dayEvents.getString(3) + "\n" + "Description: " + dayEvents.getString(4) + "\n" + "Event ID:" + dayEvents.getString(6));
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
    
    @SuppressLint({ "SimpleDateFormat" })
    private void intialization() {
        this.rl = (RelativeLayout)this.findViewById(2131296309);
        this.events = (TextView)this.findViewById(2131296283);
        this.listEvent = (ListView)this.findViewById(2131296312);
        (this.cal = new CalendarView((Context)this)).setFirstDayOfWeek(2);
        final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-1, -1);
        this.events.setMovementMethod((MovementMethod)new ScrollingMovementMethod());
        layoutParams.topMargin = 10;
        this.cal.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        this.cal.setShowWeekNumber(false);
        this.rl.addView((View)this.cal);
        ((RelativeLayout)this.findViewById(2131296310)).setBackgroundColor(Color.parseColor("#CCCC00"));
        this.arrayAdapter = (ArrayAdapter<Object>)new ArrayAdapter((Context)this, 17367043, (List)this.list);
        this.add = (Button)this.findViewById(2131296318);
        this.showAgenda = (Button)this.findViewById(2131296314);
        this.showCategory = (Button)this.findViewById(2131296317);
        this.futureAgenda = (Button)this.findViewById(2131296315);
        this.selectedDate = new SimpleDateFormat("MM-d-yyyy").format(new Date());
    }
    
    private void setListenerOnSelectedItem() {
        this.listEvent.setTextFilterEnabled(true);
        this.listEvent.setOnItemClickListener((AdapterView$OnItemClickListener)new AdapterView$OnItemClickListener() {
            public void onItemClick(final AdapterView<?> adapterView, final View view, final int n, final long n2) {
                String replace = null;
                String replace2 = null;
                String replace3 = null;
                String replace4 = null;
                String replace5 = null;
                String replace6 = null;
                final StringTokenizer stringTokenizer = new StringTokenizer(((TextView)view).getText().toString(), "\n");
                int n3 = 0;
            Label_0169_Outer:
                while (true) {
                    Label_0147: {
                        if (stringTokenizer.hasMoreElements()) {
                            break Label_0147;
                        }
                        try {
                            final Intent intent = new Intent(view.getContext(), (Class)EditEventActivity.class);
                            intent.putExtra("Category", replace4);
                            intent.putExtra("Date", replace);
                            intent.putExtra("StartTime", replace2);
                            intent.putExtra("EndTime", replace3);
                            intent.putExtra("Title", replace5);
                            intent.putExtra("Description", replace6);
                            intent.putExtra("id", n2);
                            MainActivity.this.startActivity(intent);
                            return;
                            Label_0305: {
                                stringTokenizer.nextElement();
                            }
                        Block_8_Outer:
                            while (true) {
                                break Label_0169;
                                Label_0201:
                                Block_3: {
                                    Block_5: {
                                        break Block_5;
                                        Label_0175:
                                        Block_7: {
                                            Block_4: {
                                                break Block_4;
                                                Label_0253:
                                                break Block_7;
                                            }
                                            replace = stringTokenizer.nextElement().toString().replace("Date: ", "");
                                            break Label_0169;
                                        }
                                        replace5 = stringTokenizer.nextElement().toString().replace("Title: ", "");
                                        break Label_0169;
                                        while (true) {
                                            while (true) {
                                                replace3 = stringTokenizer.nextElement().toString().replace("End Time: ", "");
                                                break Label_0169;
                                                replace6 = stringTokenizer.nextElement().toString().replace("Description: ", "");
                                                break Label_0169;
                                                Label_0227:
                                                continue Block_8_Outer;
                                            }
                                            ++n3;
                                            continue Label_0169_Outer;
                                            Label_0279:
                                            continue;
                                        }
                                        break Block_3;
                                    }
                                    replace2 = stringTokenizer.nextElement().toString().replace("Start Time: ", "");
                                    continue;
                                }
                                replace4 = stringTokenizer.nextElement().toString().replace("Categry: ", "");
                                continue;
                            }
                        }
                        // iftrue(Label_0227:, n3 != 2)
                        // iftrue(Label_0201:, n3 != 1)
                        // iftrue(Label_0279:, n3 != 4)
                        // iftrue(Label_0253:, n3 != 3)
                        // iftrue(Label_0305:, n3 != 5)
                        // iftrue(Label_0175:, n3 != 0)
                        catch (Exception ex) {
                            Toast.makeText(MainActivity.this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
                        }
                    }
                }
            }
        });
    }
    
    private void setListenerToShowAgenda() {
        this.showAgenda.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                try {
                    final Intent intent = new Intent(view.getContext(), (Class)AgendaActivity.class);
                    intent.putExtra("selectedDate", MainActivity.this.selectedDate);
                    MainActivity.this.startActivity(intent);
                }
                catch (Exception ex) {
                    Toast.makeText(MainActivity.this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
                }
            }
        });
    }
    
    private void setListenerToShowCategory() {
        this.showCategory.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                try {
                    final Intent intent = new Intent(view.getContext(), (Class)EditCategoryActivity.class);
                    intent.putExtra("selectedDate", MainActivity.this.selectedDate);
                    MainActivity.this.startActivity(intent);
                }
                catch (Exception ex) {
                    Toast.makeText(MainActivity.this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
                }
            }
        });
    }
    
    private void setListenerToShowFutureAgenda() {
        this.futureAgenda.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                try {
                    final Intent intent = new Intent(view.getContext(), (Class)AgendaFutureActivity.class);
                    intent.putExtra("selectedDate", new SimpleDateFormat("MM-d-yyyy").format(new Date()));
                    MainActivity.this.startActivity(intent);
                }
                catch (Exception ex) {
                    Toast.makeText(MainActivity.this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
                }
            }
        });
    }
    
    private void setListernerOnAddEvent() {
        this.add.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                try {
                    final Intent intent = new Intent(view.getContext(), (Class)EventActivity.class);
                    intent.putExtra("selectedDate", MainActivity.this.selectedDate);
                    MainActivity.this.startActivity(intent);
                }
                catch (Exception ex) {
                    Toast.makeText(MainActivity.this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
                }
            }
        });
    }
    
    public void onCreate(final Bundle bundle) {
        try {
            super.onCreate(bundle);
            this.setContentView(2130903046);
            this.intialization();
            this.setListenerOnSelectedItem();
            this.setListernerOnAddEvent();
            this.setListenerToCalender();
            this.setListenerToShowAgenda();
            this.setListenerToShowFutureAgenda();
            this.setListenerToShowCategory();
            this.getDayEvents(this.selectedDate);
        }
        catch (Exception ex) {
            Toast.makeText(this.getBaseContext(), (CharSequence)ex.toString(), 1).show();
        }
    }
    
    public boolean onCreateOptionsMenu(final Menu menu) {
        return true;
    }
    
    public void onResume() {
        super.onResume();
        this.getDayEvents(this.selectedDate);
    }
    
    public void setListenerToCalender() {
        this.cal.setOnDateChangeListener((CalendarView$OnDateChangeListener)new CalendarView$OnDateChangeListener() {
            public void onSelectedDayChange(final CalendarView calendarView, final int i, final int n, final int j) {
                MainActivity.this.selectedDate = String.valueOf(n + 1) + "-" + j + "-" + i;
                MainActivity.this.list = new ArrayList<Object>();
                MainActivity.this.arrayAdapter = (ArrayAdapter<Object>)new ArrayAdapter((Context)MainActivity.this, 17367043, (List)MainActivity.this.list);
                MainActivity.this.db.open();
                final Cursor dayEvents = MainActivity.this.db.getDayEvents(MainActivity.this.selectedDate);
                if (dayEvents.moveToFirst()) {
                    do {
                        MainActivity.this.list.add("Categry: " + dayEvents.getString(5) + "\n" + "Date: " + dayEvents.getString(0) + "\n" + "Start Time: " + dayEvents.getString(1) + "\n" + "End Time: " + dayEvents.getString(2) + "\n" + "Title: " + dayEvents.getString(3) + "\n" + "Description: " + dayEvents.getString(4) + "\n" + "Event ID:" + dayEvents.getString(6));
                    } while (dayEvents.moveToNext());
                }
                MainActivity.this.db.close();
                MainActivity.this.listEvent.setAdapter((ListAdapter)MainActivity.this.arrayAdapter);
            }
        });
    }
}
