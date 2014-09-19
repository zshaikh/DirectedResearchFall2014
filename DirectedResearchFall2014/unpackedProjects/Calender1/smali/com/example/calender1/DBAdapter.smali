.class public Lcom/example/calender1/DBAdapter;
.super Ljava/lang/Object;
.source "DBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/calender1/DBAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_CATEGORY_TABLE:Ljava/lang/String; = "category"

.field private static final DATABASE_CREATE_CATEGORY_TABLE:Ljava/lang/String; = " create table category (_id integer primary key autoincrement,catName text )"

.field private static final DATABASE_CREATE_EVENT_TABLE:Ljava/lang/String; = "create table event ( _id integer primary key autoincrement, date text not null , startTime text not null, endTime text not null, title text not null, Discretpion text not null, catName text) "

.field private static final DATABASE_EVENT_TABLE:Ljava/lang/String; = "event"

.field private static final DATABASE_NAME:Ljava/lang/String; = "MyDB37"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final KEY_CATEGORY:Ljava/lang/String; = "catName"

.field private static final KEY_DATE:Ljava/lang/String; = "date"

.field private static final KEY_ENDTIME:Ljava/lang/String; = "endTime"

.field private static final KEY_EXTRAINFO:Ljava/lang/String; = "Discretpion"

.field private static final KEY_ROWID:Ljava/lang/String; = "_id"

.field private static final KEY_STARTTIME:Ljava/lang/String; = "startTime"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "DBAdapter"


# instance fields
.field private DBHelper:Lcom/example/calender1/DBAdapter$DatabaseHelper;

.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/example/calender1/DBAdapter;->context:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/example/calender1/DBAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/example/calender1/DBAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/example/calender1/DBAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/calender1/DBAdapter;->DBHelper:Lcom/example/calender1/DBAdapter$DatabaseHelper;

    .line 55
    return-void
.end method

.method private fixDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "date"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 251
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, fixdDate:[Ljava/lang/String;
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 256
    :cond_0
    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_1

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 260
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    aget-object v2, v0, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 261
    return-object p1
.end method


# virtual methods
.method public CheckCategoryConflict(Ljava/lang/String;)Z
    .locals 12
    .parameter "categoryName"

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 208
    iget-object v0, p0, Lcom/example/calender1/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "category"

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "catName"

    aput-object v4, v3, v11

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "catName = \'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 208
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 211
    .local v10, mCursor:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v11

    goto :goto_0
.end method

.method public checkEventConflict(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "date"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 454
    invoke-direct {p0, p1}, Lcom/example/calender1/DBAdapter;->fixDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 456
    iget-object v0, p0, Lcom/example/calender1/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "event"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v11

    const-string v4, "date"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "startTime"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    .line 457
    const-string v6, "title"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, "Discretpion"

    aput-object v6, v3, v4

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "date=\'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' and ( "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 460
    const-string v6, " ( \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' <= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "startTime"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " and \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' > "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "startTime"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ) "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 461
    const-string v6, "or"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 462
    const-string v6, "( \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' >= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "startTime"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " and \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' <="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "endTime"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "  ) )"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 458
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 456
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 465
    .local v10, mCursor:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v11

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/example/calender1/DBAdapter;->DBHelper:Lcom/example/calender1/DBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/example/calender1/DBAdapter$DatabaseHelper;->close()V

    .line 122
    return-void
.end method

.method public deleteCategory(Ljava/lang/String;)Z
    .locals 4
    .parameter "categoryName"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/example/calender1/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "category"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "catName= \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "date"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/example/calender1/DBAdapter;->fixDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 275
    iget-object v0, p0, Lcom/example/calender1/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "event"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "date = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "startTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "endTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllCategories()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-object v0, p0, Lcom/example/calender1/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "category"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "catName"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getAllEvents()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 286
    iget-object v0, p0, Lcom/example/calender1/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "event"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "startTime"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "endTime"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "title"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "Discretpion"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "catName"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCategory(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "categoryName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 172
    iget-object v0, p0, Lcom/example/calender1/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "category"

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "catName"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "catName = \'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 174
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 176
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 178
    :cond_0
    return-object v10
.end method

.method public getDayEvents(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 384
    invoke-direct {p0, p1}, Lcom/example/calender1/DBAdapter;->fixDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 386
    iget-object v0, p0, Lcom/example/calender1/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "event"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "date"

    aput-object v6, v3, v4

    const-string v4, "startTime"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "endTime"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    .line 387
    const-string v6, "title"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, "Discretpion"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    const-string v6, "catName"

    aput-object v6, v3, v4

    const/4 v4, 0x6

    const-string v6, "_id"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "date = \'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 386
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "date"
    .parameter "startTime"
    .parameter "endTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 302
    invoke-direct {p0, p1}, Lcom/example/calender1/DBAdapter;->fixDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 304
    iget-object v0, p0, Lcom/example/calender1/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "event"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    const-string v4, "date"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "startTime"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "endTime"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    .line 305
    const-string v6, "title"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    const-string v6, "Discretpion"

    aput-object v6, v3, v4

    const/4 v4, 0x6

    const-string v6, "catName"

    aput-object v6, v3, v4

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "date like \'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' and "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "startTime"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " = \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' and "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "endTime"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " = \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 304
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 308
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 310
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 312
    :cond_0
    return-object v10
.end method

.method public getEventsByCategory(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "categoryName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 360
    iget-object v0, p0, Lcom/example/calender1/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "event"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    const-string v4, "date"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "startTime"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "endTime"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    .line 361
    const-string v6, "title"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    const-string v6, "Discretpion"

    aput-object v6, v3, v4

    const/4 v4, 0x6

    const-string v6, "catName"

    aput-object v6, v3, v4

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "catName = \'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 360
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 366
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 368
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 370
    :cond_0
    return-object v10
.end method

.method public getEventsByStartAndEndingDate(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "startingDate"
    .parameter "endingDate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 329
    invoke-direct {p0, p1}, Lcom/example/calender1/DBAdapter;->fixDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 330
    invoke-direct {p0, p2}, Lcom/example/calender1/DBAdapter;->fixDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 332
    iget-object v0, p0, Lcom/example/calender1/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "event"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    const-string v4, "date"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "startTime"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "endTime"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    .line 333
    const-string v6, "title"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    const-string v6, "Discretpion"

    aput-object v6, v3, v4

    const/4 v4, 0x6

    const-string v6, "catName"

    aput-object v6, v3, v4

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "date >=  \'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' and \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "date"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' <= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 332
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 339
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 341
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 343
    :cond_0
    return-object v10
.end method

.method public getFutureEvents(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 404
    invoke-direct {p0, p1}, Lcom/example/calender1/DBAdapter;->fixDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 406
    iget-object v0, p0, Lcom/example/calender1/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "event"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "date"

    aput-object v6, v3, v4

    const-string v4, "startTime"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "endTime"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    .line 407
    const-string v6, "title"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, "Discretpion"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    const-string v6, "catName"

    aput-object v6, v3, v4

    const/4 v4, 0x6

    const-string v6, "_id"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "date >= \'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 406
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public insertCategory(Ljava/lang/String;)J
    .locals 4
    .parameter "categoryName"

    .prologue
    .line 135
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "catName"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/example/calender1/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "category"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public insertEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .parameter "date"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "title"
    .parameter "extraInfo"
    .parameter "categoryName"

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/example/calender1/DBAdapter;->fixDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 237
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 238
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "date"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v1, "startTime"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "endTime"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "Discretpion"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "catName"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/example/calender1/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "event"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public open()Lcom/example/calender1/DBAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/example/calender1/DBAdapter;->DBHelper:Lcom/example/calender1/DBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/example/calender1/DBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/example/calender1/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 112
    return-object p0
.end method

.method public updateCategory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "oldCategoryName"
    .parameter "newCategoryName"

    .prologue
    .line 194
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .local v0, args:Landroid/content/ContentValues;
    const-string v1, "catName"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/example/calender1/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "category"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "catName  = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "date"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "title"
    .parameter "description"
    .parameter "categoryName"
    .parameter "oldDate"
    .parameter "oldStartTime"
    .parameter "oldEndTime"

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lcom/example/calender1/DBAdapter;->fixDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 432
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 433
    .local v0, args:Landroid/content/ContentValues;
    const-string v1, "date"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v1, "startTime"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v1, "endTime"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v1, "Discretpion"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v1, "catName"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/example/calender1/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "event"

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "date=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "startTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "endTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 440
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
