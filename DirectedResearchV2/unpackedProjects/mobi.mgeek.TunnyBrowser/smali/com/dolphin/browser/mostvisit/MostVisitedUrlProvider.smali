.class public Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;
.super Lcom/dolphin/browser/provider/BaseProvider;
.source "MostVisitedUrlProvider.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field private static f:Landroid/content/UriMatcher;


# instance fields
.field private g:Lcom/dolphin/browser/mostvisit/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/cr;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getMostVisitedAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->a:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "black_list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->b:Landroid/net/Uri;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "top_sites"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->c:Landroid/net/Uri;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "top_sites/count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->d:Landroid/net/Uri;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "visit_details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->e:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BaseProvider;-><init>()V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 269
    const/4 v8, -0x1

    .line 270
    const-string v1, "visit_details"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v3, "url=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v9

    const-string v7, "visit_date ASC"

    move-object v0, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_1

    .line 273
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 280
    :goto_0
    return v0

    .line 278
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 280
    goto :goto_0
.end method

.method private static a()Landroid/content/UriMatcher;
    .locals 4

    .prologue
    .line 49
    sget-object v0, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->f:Landroid/content/UriMatcher;

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->a:Ljava/lang/String;

    .line 51
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    .line 52
    const-string v2, "black_list"

    const/16 v3, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    const-string v2, "top_sites"

    const/16 v3, 0x3e9

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    const-string v2, "top_sites/#"

    const/16 v3, 0x3ea

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    const-string v2, "top_sites/count"

    const/16 v3, 0x3eb

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    const-string v2, "visit_details"

    const/16 v3, 0x3f0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sput-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->f:Landroid/content/UriMatcher;

    .line 61
    :cond_0
    sget-object v0, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->f:Landroid/content/UriMatcher;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 247
    .line 249
    sparse-switch p1, :sswitch_data_0

    move-object v0, v1

    .line 263
    :goto_0
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 266
    :cond_0
    return-void

    .line 251
    :sswitch_0
    sget-object v0, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->b:Landroid/net/Uri;

    goto :goto_0

    .line 254
    :sswitch_1
    sget-object v0, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->c:Landroid/net/Uri;

    goto :goto_0

    .line 257
    :sswitch_2
    sget-object v0, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->e:Landroid/net/Uri;

    goto :goto_0

    .line 249
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3f0 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 74
    const-string v0, "MostVisitedUrlProvider"

    const-string v1, "delete"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->g:Lcom/dolphin/browser/mostvisit/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/mostvisit/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 76
    invoke-static {}, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->a()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 77
    const/4 v0, 0x0

    .line 79
    sparse-switch v2, :sswitch_data_0

    .line 89
    const-string v1, "MostVisitedUrlProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown delete URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    :sswitch_0
    if-lez v0, :cond_0

    .line 94
    invoke-direct {p0, v2}, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->a(I)V

    .line 97
    :cond_0
    return v0

    .line 83
    :sswitch_1
    const-string v0, "top_sites"

    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 86
    :sswitch_2
    const-string v0, "visit_details"

    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3f0 -> :sswitch_2
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    const-string v0, "MostVisitedUrlProvider"

    const-string v1, "getType"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->a()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 104
    sparse-switch v0, :sswitch_data_0

    .line 112
    const-string v0, "MostVisitedUrlProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 106
    :sswitch_0
    const-string v0, "vnd.android.cursor.dir/dolphin-blacklist"

    goto :goto_0

    .line 108
    :sswitch_1
    const-string v0, "vnd.android.cursor.dir/dolphin-topsites"

    goto :goto_0

    .line 110
    :sswitch_2
    const-string v0, "vnd.android.cursor.dir/dolphin-visitdetails"

    goto :goto_0

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3f0 -> :sswitch_2
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 120
    const-string v0, "MostVisitedUrlProvider"

    const-string v1, "insert"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->g:Lcom/dolphin/browser/mostvisit/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/mostvisit/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 123
    invoke-static {}, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->a()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 124
    const-wide/16 v0, -0x1

    .line 126
    const-string v5, ""

    .line 128
    sparse-switch v4, :sswitch_data_0

    .line 153
    const-string v3, "MostVisitedUrlProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown insert URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v3, v0, v5

    if-gez v3, :cond_2

    .line 158
    const-string v0, "MostVisitedUrlProvider"

    const-string v1, "error occured when insert data into database"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 163
    :goto_1
    return-object v0

    .line 130
    :sswitch_0
    const-string v0, "black_list"

    invoke-virtual {v3, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 134
    :sswitch_1
    const-string v5, "url"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 136
    invoke-direct {p0, v3, v5}, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    .line 137
    if-lez v0, :cond_1

    .line 138
    const-string v1, "visit_details"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, p2, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 140
    :cond_1
    const-string v0, "visit_details"

    invoke-virtual {v3, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 146
    :sswitch_2
    const-string v5, "url"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    const-string v0, "top_sites"

    invoke-virtual {v3, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 162
    :cond_2
    invoke-direct {p0, v4}, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->a(I)V

    .line 163
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_2
        0x3f0 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 66
    const-string v0, "MostVisitedUrlProvider"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-super {p0}, Lcom/dolphin/browser/provider/BaseProvider;->onCreate()Z

    .line 68
    invoke-static {}, Lcom/dolphin/browser/mostvisit/f;->a()Lcom/dolphin/browser/mostvisit/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->g:Lcom/dolphin/browser/mostvisit/f;

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 169
    const-string v0, "MostVisitedUrlProvider"

    const-string v1, "query"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->g:Lcom/dolphin/browser/mostvisit/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/mostvisit/f;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->a()Landroid/content/UriMatcher;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 172
    const-string v2, "limit"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 175
    packed-switch v1, :pswitch_data_0

    .line 196
    :pswitch_0
    const-string v0, "MostVisitedUrlProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown query URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    if-eqz v5, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v5, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 204
    :cond_0
    return-object v5

    .line 177
    :pswitch_1
    const-string v1, "black_list"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 182
    :pswitch_2
    const-string v1, "offset"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 186
    :cond_1
    const-string v1, "top_sites"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 189
    :pswitch_3
    const-string v1, "select count(*) from top_visites"

    invoke-virtual {v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 192
    :pswitch_4
    const-string v1, "visit_details"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 210
    const-string v0, "MostVisitedUrlProvider"

    const-string v1, "update"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->g:Lcom/dolphin/browser/mostvisit/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/mostvisit/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 212
    invoke-static {}, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->a()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 213
    const/4 v0, 0x0

    .line 215
    sparse-switch v2, :sswitch_data_0

    .line 225
    const-string v1, "MostVisitedUrlProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown update URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    if-lez v0, :cond_0

    .line 230
    invoke-direct {p0, v2}, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->a(I)V

    .line 233
    :cond_0
    return v0

    .line 218
    :sswitch_0
    const-string v0, "top_sites"

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 221
    :sswitch_1
    const-string v0, "visit_details"

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 215
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3f0 -> :sswitch_1
    .end sparse-switch
.end method
