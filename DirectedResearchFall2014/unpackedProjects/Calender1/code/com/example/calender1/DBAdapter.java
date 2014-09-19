package com.example.calender1;

import android.database.*;
import android.content.*;
import android.database.sqlite.*;
import android.util.*;

public class DBAdapter
{
    private static final String DATABASE_CATEGORY_TABLE = "category";
    private static final String DATABASE_CREATE_CATEGORY_TABLE = " create table category (_id integer primary key autoincrement,catName text )";
    private static final String DATABASE_CREATE_EVENT_TABLE = "create table event ( _id integer primary key autoincrement, date text not null , startTime text not null, endTime text not null, title text not null, Discretpion text not null, catName text) ";
    private static final String DATABASE_EVENT_TABLE = "event";
    private static final String DATABASE_NAME = "MyDB37";
    private static final int DATABASE_VERSION = 1;
    private static final String KEY_CATEGORY = "catName";
    private static final String KEY_DATE = "date";
    private static final String KEY_ENDTIME = "endTime";
    private static final String KEY_EXTRAINFO = "Discretpion";
    private static final String KEY_ROWID = "_id";
    private static final String KEY_STARTTIME = "startTime";
    private static final String KEY_TITLE = "title";
    private static final String TAG = "DBAdapter";
    private DatabaseHelper DBHelper;
    private final Context context;
    private SQLiteDatabase db;
    
    public DBAdapter(final Context context) {
        super();
        this.context = context;
        this.DBHelper = new DatabaseHelper(this.context);
    }
    
    private String fixDate(final String s) {
        final String[] split = s.split("-");
        if (split[0].length() < 2) {
            split[0] = "0" + split[0];
        }
        if (split[1].length() < 2) {
            split[1] = "0" + split[1];
        }
        return String.valueOf(split[0]) + "-" + split[1] + "-" + split[2];
    }
    
    public boolean CheckCategoryConflict(final String str) {
        return this.db.query(true, "category", new String[] { "catName" }, "catName = '" + str + "'", (String[])null, (String)null, (String)null, (String)null, (String)null).getCount() != 0;
    }
    
    public boolean checkEventConflict(final String s, final String str, final String str2) {
        return this.db.query(true, "event", new String[] { "_id", "date", "startTime", "title", "Discretpion" }, "date='" + this.fixDate(s) + "' and ( " + " ( '" + str + "' <= " + "startTime" + " and '" + str2 + "' > " + "startTime" + " ) " + "or" + "( '" + str + "' >= " + "startTime" + " and '" + str + "' <=" + "endTime" + "  ) )", (String[])null, (String)null, (String)null, (String)null, (String)null).getCount() != 0;
    }
    
    public void close() {
        this.DBHelper.close();
    }
    
    public boolean deleteCategory(final String str) {
        return this.db.delete("category", "catName= '" + str + "'", (String[])null) > 0;
    }
    
    public boolean deleteEvent(final String s, final String str, final String str2) {
        return this.db.delete("event", "date = '" + this.fixDate(s) + "' and " + "startTime" + " = '" + str + "' and " + "endTime" + " = '" + str2 + "'", (String[])null) > 0;
    }
    
    public Cursor getAllCategories() {
        return this.db.query("category", new String[] { "catName" }, (String)null, (String[])null, (String)null, (String)null, (String)null);
    }
    
    public Cursor getAllEvents() {
        return this.db.query("event", new String[] { "date", "startTime", "endTime", "title", "Discretpion", "catName" }, (String)null, (String[])null, (String)null, (String)null, (String)null);
    }
    
    public Cursor getCategory(final String str) throws SQLException {
        final Cursor query = this.db.query(true, "category", new String[] { "catName" }, "catName = '" + str + "' ", (String[])null, (String)null, (String)null, (String)null, (String)null);
        if (query != null) {
            query.moveToFirst();
        }
        return query;
    }
    
    public Cursor getDayEvents(final String s) throws SQLException {
        return this.db.query(true, "event", new String[] { "date", "startTime", "endTime", "title", "Discretpion", "catName", "_id" }, "date = '" + this.fixDate(s) + "'", (String[])null, (String)null, (String)null, (String)null, (String)null);
    }
    
    public Cursor getEvent(final String s, final String str, final String str2) throws SQLException {
        final Cursor query = this.db.query(true, "event", new String[] { "_id", "date", "startTime", "endTime", "title", "Discretpion", "catName" }, "date like '" + this.fixDate(s) + "' and " + "startTime" + " = '" + str + "' and " + "endTime" + " = '" + str2 + "'", (String[])null, (String)null, (String)null, (String)null, (String)null);
        if (query != null) {
            query.moveToFirst();
        }
        return query;
    }
    
    public Cursor getEventsByCategory(final String str) throws SQLException {
        final Cursor query = this.db.query(true, "event", new String[] { "_id", "date", "startTime", "endTime", "title", "Discretpion", "catName" }, "catName = '" + str + "' ", (String[])null, (String)null, (String)null, (String)null, (String)null);
        if (query != null) {
            query.moveToFirst();
        }
        return query;
    }
    
    public Cursor getEventsByStartAndEndingDate(final String s, final String s2) throws SQLException {
        final Cursor query = this.db.query(true, "event", new String[] { "_id", "date", "startTime", "endTime", "title", "Discretpion", "catName" }, "date >=  '" + this.fixDate(s) + "' and '" + "date" + "' <= " + this.fixDate(s2), (String[])null, (String)null, (String)null, (String)null, (String)null);
        if (query != null) {
            query.moveToFirst();
        }
        return query;
    }
    
    public Cursor getFutureEvents(final String s) throws SQLException {
        return this.db.query(true, "event", new String[] { "date", "startTime", "endTime", "title", "Discretpion", "catName", "_id" }, "date >= '" + this.fixDate(s) + "'", (String[])null, (String)null, (String)null, (String)null, (String)null);
    }
    
    public long insertCategory(final String s) {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("catName", s);
        return this.db.insert("category", (String)null, contentValues);
    }
    
    public long insertEvent(final String s, final String s2, final String s3, final String s4, final String s5, final String s6) {
        final String fixDate = this.fixDate(s);
        final ContentValues contentValues = new ContentValues();
        contentValues.put("date", fixDate);
        contentValues.put("startTime", s2);
        contentValues.put("endTime", s3);
        contentValues.put("title", s4);
        contentValues.put("Discretpion", s5);
        contentValues.put("catName", s6);
        return this.db.insert("event", (String)null, contentValues);
    }
    
    public DBAdapter open() throws SQLException {
        this.db = this.DBHelper.getWritableDatabase();
        return this;
    }
    
    public boolean updateCategory(final String str, final String s) {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("catName", s);
        return this.db.update("category", contentValues, "catName  = '" + str + "'", (String[])null) > 0;
    }
    
    public boolean updateEvent(final String s, final String s2, final String s3, final String s4, final String s5, final String s6, final String str, final String str2, final String str3) {
        final String fixDate = this.fixDate(s);
        final ContentValues contentValues = new ContentValues();
        contentValues.put("date", fixDate);
        contentValues.put("startTime", s2);
        contentValues.put("endTime", s3);
        contentValues.put("title", s4);
        contentValues.put("Discretpion", s5);
        contentValues.put("catName", s6);
        return this.db.update("event", contentValues, "date='" + str + "' and " + "startTime" + " = '" + str2 + "' and " + "endTime" + " = '" + str3 + "'", (String[])null) > 0;
    }
    
    private static class DatabaseHelper extends SQLiteOpenHelper
    {
        DatabaseHelper(final Context context) {
            super(context, "MyDB37", (SQLiteDatabase$CursorFactory)null, 1);
        }
        
        public void onCreate(final SQLiteDatabase sqLiteDatabase) {
            try {
                sqLiteDatabase.execSQL(" create table category (_id integer primary key autoincrement,catName text )");
                sqLiteDatabase.execSQL("create table event ( _id integer primary key autoincrement, date text not null , startTime text not null, endTime text not null, title text not null, Discretpion text not null, catName text) ");
                Log.w("Category", "data base created");
            }
            catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        
        public void onUpgrade(final SQLiteDatabase sqLiteDatabase, final int i, final int j) {
            Log.w("DBAdapter", "Upgrading database from version " + i + " to " + j + ", which will destroy all old data");
            sqLiteDatabase.execSQL("DROP TABLE IF EXISTS create table event ( _id integer primary key autoincrement, date text not null , startTime text not null, endTime text not null, title text not null, Discretpion text not null, catName text)  ;");
            sqLiteDatabase.execSQL("DROP TABLE IF EXISTS  create table category (_id integer primary key autoincrement,catName text ) ; ");
            this.onCreate(sqLiteDatabase);
        }
    }
}
