package com.chartboost.sdk.impl;

import android.database.*;
import android.content.*;
import android.widget.*;
import java.util.*;
import android.view.*;
import android.app.*;
import android.view.inputmethod.*;

public class q
{
    private ScrollView a;
    private HorizontalScrollView b;
    private ViewGroup c;
    private LinearLayout d;
    private BaseAdapter e;
    private List<List<View>> f;
    private List<List<View>> g;
    private List<Integer> h;
    private int i;
    private DataSetObserver j;
    
    public q(final Context context, final int n) {
        super();
        this.j = new DataSetObserver() {
            public void onChanged() {
                for (int childCount = q.this.d.getChildCount(), i = 0; i < childCount; ++i) {
                    final List list = q.this.g.get(q.this.h.get(i));
                    final List<View> list2 = q.this.f.get(q.this.h.get(i));
                    final View child = q.this.d.getChildAt(i);
                    list.remove(child);
                    list2.add(child);
                }
                q.this.h.clear();
                q.this.d.removeAllViews();
                for (int count = q.this.e.getCount(), j = 0; j < count; ++j) {
                    final int itemViewType = q.this.e.getItemViewType(j);
                    final List<View> list3 = q.this.g.get(itemViewType);
                    final List<View> list4 = q.this.f.get(itemViewType);
                    q.this.h.add(itemViewType);
                    View view2;
                    if (!list4.isEmpty()) {
                        final View view = list4.get(0);
                        list4.remove(0);
                        view2 = view;
                    }
                    else {
                        view2 = null;
                    }
                    final View view3 = q.this.e.getView(j, view2, (ViewGroup)q.this.d);
                    list3.add(view3);
                    LinearLayout$LayoutParams linearLayout$LayoutParams;
                    if (q.this.i == 0) {
                        linearLayout$LayoutParams = new LinearLayout$LayoutParams(-2, -1);
                    }
                    else {
                        linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -2);
                    }
                    if (j < count - 1) {
                        linearLayout$LayoutParams.setMargins(0, 0, 0, 1);
                    }
                    q.this.d.addView(view3, (ViewGroup$LayoutParams)linearLayout$LayoutParams);
                }
                q.this.d.requestLayout();
            }
        };
        this.d = new LinearLayout(context);
        this.i = n;
        this.d.setOrientation(n);
        if (n == 0) {
            this.c = (ViewGroup)this.a(context);
        }
        else {
            this.c = (ViewGroup)this.b(context);
        }
        this.c.addView((View)this.d);
        this.f = new ArrayList<List<View>>();
        this.g = new ArrayList<List<View>>();
        this.h = new ArrayList<Integer>();
        this.d.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
            public boolean onTouch(final View view, final MotionEvent motionEvent) {
                try {
                    final View currentFocus = ((Activity)q.this.d.getContext()).getCurrentFocus();
                    if (currentFocus != null) {
                        ((InputMethodManager)q.this.d.getContext().getSystemService("input_method")).hideSoftInputFromWindow(currentFocus.getApplicationWindowToken(), 0);
                    }
                    return false;
                }
                catch (Exception ex) {
                    return false;
                }
            }
        });
    }
    
    private HorizontalScrollView a(final Context context) {
        if (this.b == null) {
            (this.b = new HorizontalScrollView(context)).setFillViewport(true);
        }
        return this.b;
    }
    
    private ScrollView b(final Context context) {
        if (this.a == null) {
            (this.a = new ScrollView(context)).setFillViewport(true);
        }
        return this.a;
    }
    
    private Context d() {
        return this.d.getContext();
    }
    
    public ViewGroup a() {
        return this.c;
    }
    
    public void a(final int n) {
        if (n != this.i) {
            this.i = n;
            this.d.setOrientation(n);
            this.c.removeView((View)this.d);
            if (n == 0) {
                this.c = (ViewGroup)this.a(this.d());
            }
            else {
                this.c = (ViewGroup)this.b(this.d());
            }
            this.c.addView((View)this.d);
        }
    }
    
    public void a(final BaseAdapter e) {
        if (this.e != null) {
            this.e.unregisterDataSetObserver(this.j);
        }
        (this.e = e).registerDataSetObserver(this.j);
        this.d.removeAllViews();
        this.f.clear();
        this.g.clear();
        for (int i = 0; i < this.e.getViewTypeCount(); ++i) {
            this.f.add(new ArrayList<View>());
            this.g.add(new ArrayList<View>());
        }
        this.h.clear();
        this.e.notifyDataSetChanged();
    }
    
    public LinearLayout b() {
        return this.d;
    }
    
    public void c() {
        if (this.c == this.a && this.a != null) {
            this.a.fullScroll(130);
        }
        else if (this.c == this.b && this.b != null) {
            this.b.fullScroll(66);
        }
    }
}
