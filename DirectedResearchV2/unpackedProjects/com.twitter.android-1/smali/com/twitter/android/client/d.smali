.class public final Lcom/twitter/android/client/d;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field private d:Ljava/lang/String;

.field private e:[I

.field private f:[I

.field private g:[I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/twitter/android/client/d;->a:I

    iput p2, p0, Lcom/twitter/android/client/d;->b:I

    iput p3, p0, Lcom/twitter/android/client/d;->c:I

    iput-object p4, p0, Lcom/twitter/android/client/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;[I)V
    .locals 9

    const/4 v8, 0x0

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    array-length v0, p2

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/client/d;->e:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/client/d;->f:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/client/d;->g:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/twitter/android/client/d;->a:I

    const v1, 0x7f050003

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_1
    invoke-static {p1}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/provider/q;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "widget_settings"

    sget-object v2, Lcom/twitter/android/provider/q;->a:[Ljava/lang/String;

    const-string v3, "widget_type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v8

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/twitter/android/client/d;->d:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v7, :cond_5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_5
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-nez v0, :cond_8

    iput-object p2, p0, Lcom/twitter/android/client/d;->e:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/client/d;->f:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/client/d;->g:[I

    goto/16 :goto_0

    :cond_8
    invoke-static {v2}, Lcom/twitter/android/util/q;->a(Ljava/util/Collection;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/d;->e:[I

    invoke-static {v3}, Lcom/twitter/android/util/q;->a(Ljava/util/Collection;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/d;->f:[I

    invoke-static {v4}, Lcom/twitter/android/util/q;->a(Ljava/util/Collection;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/d;->g:[I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public final declared-synchronized a()[I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/client/d;->e:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/content/Context;)[I
    .locals 3

    iget v0, p0, Lcom/twitter/android/client/d;->a:I

    const v1, 0x7f050003

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/twitter/android/client/WidgetLargeProvider;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/twitter/android/client/WidgetSmallProvider;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized b()[I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/client/d;->f:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()[I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/client/d;->g:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
