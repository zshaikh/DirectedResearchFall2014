.class public Lcom/twitter/android/client/WidgetService;
.super Landroid/app/IntentService;


# static fields
.field private static final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/client/WidgetService;->a:Ljava/util/HashMap;

    const-string v1, "open"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/client/WidgetService;->a:Ljava/util/HashMap;

    const-string v1, "close"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/client/WidgetService;->a:Ljava/util/HashMap;

    const-string v1, "refresh"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/client/WidgetService;->a:Ljava/util/HashMap;

    const-string v1, "clear_logged_out"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/client/WidgetService;->a:Ljava/util/HashMap;

    const-string v1, "on_update"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/client/WidgetService;->a:Ljava/util/HashMap;

    const-string v1, "on_delete"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "WidgetService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Lcom/twitter/android/client/WidgetControl;
    .locals 4

    invoke-static {p0}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v0

    const-string v1, "owner_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/e;->g(J)Lcom/twitter/android/client/WidgetControl;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;JIJ)Ljava/util/ArrayList;
    .locals 7

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    if-ne p3, v0, :cond_1

    sget-object v0, Lcom/twitter/android/provider/az;->g:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const-string v0, "limit"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "ownerId"

    invoke-virtual {v0, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-lez v0, :cond_0

    const-string v0, "newer"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/ax;->b:[Ljava/lang/String;

    const-string v3, "author_id!=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "updated_at DESC, _id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3

    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/twitter/android/provider/ax;

    invoke-direct {v2, v1}, Lcom/twitter/android/provider/ax;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    sget-object v0, Lcom/twitter/android/provider/az;->i:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/android/client/WidgetControl;JJ)V
    .locals 7

    const/4 v6, 0x5

    const/4 v3, 0x0

    iget-wide v1, p1, Lcom/twitter/android/client/WidgetControl;->b:J

    move-object v0, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;JIJ)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v3, p2, p3, v0}, Lcom/twitter/android/client/WidgetControl;->a(IJLjava/util/ArrayList;)V

    move-object v0, p0

    move v3, v6

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;JIJ)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v6, p4, p5, v0}, Lcom/twitter/android/client/WidgetControl;->a(IJLjava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x2

    const v5, 0x7f050003

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/WidgetService;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v4

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/client/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/twitter/android/client/WidgetControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    const-string v6, "com.twitter.android.auth.login"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    array-length v5, v5

    if-ge v5, v7, :cond_2

    invoke-static {v0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6, v4}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v1}, Lcom/twitter/android/client/WidgetControl;->a()V

    invoke-virtual {v1, v7}, Lcom/twitter/android/client/WidgetControl;->d(I)V

    move-wide v4, v2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;Lcom/twitter/android/client/WidgetControl;JJ)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/android/client/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/twitter/android/client/WidgetControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "widget_state"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1}, Lcom/twitter/android/client/WidgetControl;->a()V

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/WidgetControl;->d(I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/twitter/android/client/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/twitter/android/client/WidgetControl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/twitter/android/client/WidgetControl;->a()V

    const-string v4, "latest_time_tweets"

    invoke-virtual {p1, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v4, "latest_time_mentions"

    invoke-virtual {p1, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v2, v6

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;Lcom/twitter/android/client/WidgetControl;JJ)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/twitter/android/client/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "widget_provider"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_3

    const v0, 0x7f03005e

    const v1, 0x7f03005b

    :goto_2
    new-instance v5, Lcom/twitter/android/client/d;

    const-string v6, ""

    invoke-direct {v5, v3, v0, v1, v6}, Lcom/twitter/android/client/d;-><init>(IIILjava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/twitter/android/client/d;->a(Landroid/content/Context;)[I

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lcom/twitter/android/client/d;->a(Landroid/content/Context;[I)V

    const-string v0, ""

    invoke-static {v2, v5, v4, v0, v4}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/d;ILjava/lang/String;I)V

    goto/16 :goto_1

    :cond_3
    const v0, 0x7f030061

    const v1, 0x7f03005c

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lcom/twitter/android/client/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "widget_provider"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->u()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/WidgetControl;

    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl;->a()V

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/WidgetControl;->c(I)V

    goto :goto_3

    :pswitch_5
    invoke-static {p0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v0

    const-string v1, "widget_ids"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/provider/q;->a([I)I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
