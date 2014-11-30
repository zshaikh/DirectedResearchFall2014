.class public final Lcom/twitter/android/client/WidgetControl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twitter/android/util/j;


# static fields
.field private static final c:Ljava/text/SimpleDateFormat;

.field private static d:Landroid/text/style/TextAppearanceSpan;

.field private static e:I


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field private final f:[Lcom/twitter/android/client/WidgetControl$WidgetList;

.field private final g:Lcom/twitter/android/client/d;

.field private final h:Lcom/twitter/android/client/d;

.field private final i:Landroid/content/Context;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Lcom/twitter/android/util/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/twitter/android/util/SynchronizedDateFormat;

    invoke-direct {v0}, Lcom/twitter/android/util/SynchronizedDateFormat;-><init>()V

    sput-object v0, Lcom/twitter/android/client/WidgetControl;->c:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x1

    sput v0, Lcom/twitter/android/client/WidgetControl;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/util/w;Ljava/lang/String;J)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/twitter/android/client/WidgetControl;->k:Lcom/twitter/android/util/w;

    iput-object p3, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    iput-wide p4, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/twitter/android/client/WidgetControl$WidgetList;

    new-instance v1, Lcom/twitter/android/client/WidgetControl$WidgetList;

    invoke-direct {v1, v3}, Lcom/twitter/android/client/WidgetControl$WidgetList;-><init>(Lcom/twitter/android/client/g;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lcom/twitter/android/client/WidgetControl$WidgetList;

    invoke-direct {v2, v3}, Lcom/twitter/android/client/WidgetControl$WidgetList;-><init>(Lcom/twitter/android/client/g;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/twitter/android/client/WidgetControl;->f:[Lcom/twitter/android/client/WidgetControl$WidgetList;

    new-instance v0, Lcom/twitter/android/client/d;

    const v1, 0x7f050003

    const v2, 0x7f03005e

    const v3, 0x7f03005b

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/twitter/android/client/d;-><init>(IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/d;

    new-instance v0, Lcom/twitter/android/client/d;

    const v1, 0x7f050004

    const v2, 0x7f030061

    const v3, 0x7f03005c

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/twitter/android/client/d;-><init>(IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/client/WidgetControl;->h:Lcom/twitter/android/client/d;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/twitter/android/client/WidgetControl;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b017c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/twitter/android/client/WidgetControl$WidgetList;)J
    .locals 2

    invoke-virtual {p0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ax;

    iget-wide v0, v0, Lcom/twitter/android/provider/ax;->h:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 4

    if-nez p2, :cond_0

    const-string v1, "home"

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/StartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/twitter/android/client/WidgetControl;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ref_event"

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->W:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0

    :cond_0
    const-string v1, "connect"

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/HomeTabActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "account_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "tab"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "home_item"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;IIILjava/lang/String;I)Landroid/widget/RemoteViews;
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    const v4, 0x7f0700cf

    const v3, 0x7f0700ce

    const/high16 v5, 0x10000000

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v0, 0x7f050003

    if-ne p1, v0, :cond_0

    const v2, 0x7f0700cd

    const/4 v0, 0x5

    if-ne p5, v0, :cond_1

    const v0, 0x7f0200d1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-virtual {v1, v3, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p0, p4, p5}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v6, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v2, 0x7f0700cd

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    packed-switch p3, :pswitch_data_0

    invoke-virtual {v1, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/PostActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.twitter.android.post.status"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "account_name"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ref_event"

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->W:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const v2, 0x7f0700d0

    invoke-static {}, Lcom/twitter/android/client/WidgetControl;->c()I

    move-result v3

    invoke-static {p0, v3, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    const v0, 0x7f02012a

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1, v4, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1, v4, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0176

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(JLcom/twitter/android/client/WidgetControl$WidgetList;)V
    .locals 4

    invoke-virtual {p3}, Lcom/twitter/android/client/WidgetControl$WidgetList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ax;

    iget-wide v2, v0, Lcom/twitter/android/provider/ax;->s:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/WidgetControl;->b(Z)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/client/WidgetService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "clear_logged_out"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "widget_provider"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/android/client/d;ILjava/lang/String;I)V
    .locals 11

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Lcom/twitter/android/client/d;->a()[I

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v0, v7

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0b00c3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    array-length v9, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v9, :cond_0

    aget v10, v7, v6

    iget v1, p1, Lcom/twitter/android/client/d;->a:I

    iget v2, p1, Lcom/twitter/android/client/d;->c:I

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;IIILjava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v8}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/WidgetSettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/twitter/android/client/WidgetControl;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f0700cb

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, v10, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p1, p0}, Lcom/twitter/android/client/d;->a(Landroid/content/Context;)[I

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v0, v6

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/twitter/android/client/d;->a:I

    iget v2, p1, Lcom/twitter/android/client/d;->c:I

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;IIILjava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v0

    const v1, 0x7f0b00c1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b00c2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    move-object v0, v6

    :goto_2
    const v2, 0x7f0700cb

    const/4 v3, 0x0

    invoke-static {p0, p3, p4}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x4000000

    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {p1, p4}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/client/d;I)[I

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v0, v6

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/twitter/android/client/d;->a:I

    iget v2, p1, Lcom/twitter/android/client/d;->c:I

    move-object v0, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;IIILjava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    const/4 v1, 0x0

    const v2, 0x7f0b004e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :pswitch_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/widget/RemoteViews;Lcom/twitter/android/provider/ax;Landroid/graphics/Bitmap;)V
    .locals 12

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v0, Lcom/twitter/android/client/WidgetControl;->d:Landroid/text/style/TextAppearanceSpan;

    if-nez v0, :cond_0

    const/high16 v0, 0x41600000

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v3, v0

    const v0, 0x7f0a0007

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    sput-object v0, Lcom/twitter/android/client/WidgetControl;->d:Landroid/text/style/TextAppearanceSpan;

    :cond_0
    iget-object v2, p2, Lcom/twitter/android/provider/ax;->p:Ljava/lang/String;

    iget-object v3, p2, Lcom/twitter/android/provider/ax;->d:Ljava/lang/String;

    iget-wide v4, p2, Lcom/twitter/android/provider/ax;->h:J

    iget-object v7, p2, Lcom/twitter/android/provider/ax;->i:Ljava/lang/String;

    iget-wide v0, p2, Lcom/twitter/android/provider/ax;->j:J

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-lez v0, :cond_3

    invoke-static {v3}, Lcom/twitter/android/api/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz v2, :cond_1

    invoke-virtual {v8, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v0, Lcom/twitter/android/client/WidgetControl;->d:Landroid/text/style/TextAppearanceSpan;

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v10, 0x21

    invoke-virtual {v8, v0, v9, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    if-eqz v3, :cond_2

    const/16 v0, 0x20

    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    iget-object v0, p2, Lcom/twitter/android/provider/ax;->x:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v0

    iget v2, p2, Lcom/twitter/android/provider/ax;->B:I

    iget-wide v9, p2, Lcom/twitter/android/provider/ax;->s:J

    iget-object v3, p2, Lcom/twitter/android/provider/ax;->x:[B

    invoke-virtual {v0, v2, v9, v10, v3}, Lcom/twitter/android/client/e;->a(IJ[B)Lcom/twitter/android/api/TweetEntities;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities$Url;

    iget v9, v0, Lcom/twitter/android/api/TweetEntities$Url;->start:I

    sub-int/2addr v9, v2

    iget v10, v0, Lcom/twitter/android/api/TweetEntities$Url;->end:I

    sub-int/2addr v10, v2

    if-ltz v9, :cond_a

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    if-gt v10, v11, :cond_a

    iget-object v0, v0, Lcom/twitter/android/api/TweetEntities$Url;->displayUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v8, v9, v10, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v9

    sub-int v0, v10, v0

    add-int/2addr v0, v2

    :goto_3
    move v2, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const v0, 0x7f070031

    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget-object v0, Lcom/twitter/android/client/WidgetControl;->c:Ljava/text/SimpleDateFormat;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_6

    if-eqz v1, :cond_6

    const v2, 0x7f07002d

    const v3, 0x7f0b004a

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v7, v4, v0

    const/4 v0, 0x2

    aput-object v1, v4, v0

    invoke-virtual {v6, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_4
    if-eqz p3, :cond_9

    const v0, 0x7f070011

    invoke-virtual {p1, v0, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/twitter/android/client/WidgetControl;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-wide v1, p2, Lcom/twitter/android/provider/ax;->s:J

    iget-wide v3, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    invoke-static {v1, v2, v3, v4}, Lcom/twitter/android/provider/aa;->a(JJ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ref_event"

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->W:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0700d1

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void

    :cond_6
    if-eqz v7, :cond_7

    const v1, 0x7f07002d

    const v2, 0x7f0b0049

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v7, v3, v0

    invoke-virtual {v6, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_8

    const v2, 0x7f07002d

    const v3, 0x7f0b004b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-virtual {v6, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_8
    const v1, 0x7f07002d

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_9
    const v0, 0x7f070011

    const v1, 0x7f0200e8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    :cond_a
    move v0, v2

    goto/16 :goto_3
.end method

.method private static a(Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x1

    const v6, 0x7f0700ca

    const v5, 0x7f07006a

    const/16 v4, 0x8

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0, v6, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p0, v6, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {p0, v5, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p0, v5, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_3
    if-nez v0, :cond_0

    if-eqz v1, :cond_5

    :cond_0
    const v0, 0x7f0700cc

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f07005a

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_4
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    :cond_5
    const v0, 0x7f0700cc

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f07005a

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4
.end method

.method private a(Lcom/twitter/android/provider/ax;Landroid/graphics/Bitmap;Lcom/twitter/android/client/d;I)V
    .locals 11

    iget v0, p3, Lcom/twitter/android/client/d;->a:I

    const v1, 0x7f050003

    if-ne v0, v1, :cond_c

    invoke-static {p3, p4}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/client/d;I)[I

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v0, v6

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {v0, p3, v1, v2, p4}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/d;ILjava/lang/String;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    iget v1, p3, Lcom/twitter/android/client/d;->a:I

    iget v2, p3, Lcom/twitter/android/client/d;->b:I

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;IIILjava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v3

    if-nez p1, :cond_2

    const v0, 0x7f0700d2

    const/4 v1, 0x4

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0700d3

    const/4 v1, 0x4

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0700d2

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0700d3

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v0, 0x7f07002c

    iget-object v1, p1, Lcom/twitter/android/provider/ax;->p:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v5, Landroid/text/SpannableStringBuilder;

    iget-object v0, p1, Lcom/twitter/android/provider/ax;->d:Ljava/lang/String;

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/twitter/android/provider/ax;->x:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v0

    iget v1, p1, Lcom/twitter/android/provider/ax;->B:I

    iget-wide v7, p1, Lcom/twitter/android/provider/ax;->s:J

    iget-object v2, p1, Lcom/twitter/android/provider/ax;->x:[B

    invoke-virtual {v0, v1, v7, v8, v2}, Lcom/twitter/android/client/e;->a(IJ[B)Lcom/twitter/android/api/TweetEntities;

    move-result-object v0

    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_4

    iget-object v0, v2, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iget-object v1, v2, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities$Url;

    iget v8, v0, Lcom/twitter/android/api/TweetEntities$Url;->start:I

    sub-int/2addr v8, v1

    iget v9, v0, Lcom/twitter/android/api/TweetEntities$Url;->end:I

    sub-int/2addr v9, v1

    if-ltz v8, :cond_e

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    if-gt v9, v10, :cond_e

    iget-object v0, v0, Lcom/twitter/android/api/TweetEntities$Url;->displayUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    invoke-virtual {v5, v8, v9, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v8

    sub-int v0, v9, v0

    add-int/2addr v1, v0

    move v0, v1

    :goto_4
    move v1, v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_2

    :cond_4
    const v0, 0x7f070031

    invoke-virtual {v3, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f070021

    iget-wide v7, p1, Lcom/twitter/android/provider/ax;->h:J

    invoke-static {v4, v7, v8}, Lcom/twitter/android/util/q;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f07002e

    iget-wide v7, p1, Lcom/twitter/android/provider/ax;->j:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_5

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v3, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f07002f

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/twitter/android/api/TweetEntities;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v3, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f070030

    iget-wide v7, p1, Lcom/twitter/android/provider/ax;->v:D

    const-wide/16 v9, 0x0

    cmpl-double v0, v7, v9

    if-eqz v0, :cond_7

    iget-wide v7, p1, Lcom/twitter/android/provider/ax;->w:D

    const-wide/16 v9, 0x0

    cmpl-double v0, v7, v9

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v3, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz p2, :cond_8

    const v0, 0x7f070011

    invoke-virtual {v3, v0, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_8
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/twitter/android/client/WidgetControl;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-wide v1, p1, Lcom/twitter/android/provider/ax;->s:J

    iget-wide v7, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    invoke-static {v1, v2, v7, v8}, Lcom/twitter/android/provider/aa;->a(JJ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ref_event"

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->W:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0700d1

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x10000000

    invoke-static {v2, v5, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-boolean v0, p1, Lcom/twitter/android/provider/ax;->r:Z

    if-eqz v0, :cond_9

    const v0, 0x7f070033

    const v1, 0x7f0b003a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p1, Lcom/twitter/android/provider/ax;->e:Ljava/lang/String;

    aput-object v7, v2, v5

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f070033

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_9
    invoke-static {}, Lcom/twitter/android/client/WidgetControl;->c()I

    move-result v0

    invoke-direct {p0, p4}, Lcom/twitter/android/client/WidgetControl;->e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v1

    iget v2, v1, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    if-nez v2, :cond_a

    const v4, 0x7f0700d2

    const v5, 0x7f0200ec

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_a
    invoke-virtual {v1}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_b

    const v0, 0x7f0700d3

    const v1, 0x7f0200e4

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0x8

    goto/16 :goto_5

    :cond_6
    const/16 v0, 0x8

    goto/16 :goto_6

    :cond_7
    const/16 v0, 0x8

    goto/16 :goto_7

    :cond_8
    const v0, 0x7f070011

    const v1, 0x7f0200e7

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_8

    :cond_9
    const v0, 0x7f070033

    const/16 v1, 0x8

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_9

    :cond_a
    const v4, 0x7f0700d2

    const v5, 0x7f020145

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.twitter.android.widget.button.prev"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "owner_id"

    iget-wide v7, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    invoke-virtual {v4, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "status_type"

    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v5, 0x7f0700d2

    iget-object v7, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const/high16 v8, 0x10000000

    invoke-static {v7, v0, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_a

    :cond_b
    const v1, 0x7f0700d3

    const v2, 0x7f020144

    invoke-virtual {v3, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.twitter.android.widget.button.next"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "owner_id"

    iget-wide v4, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "status_type"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v2, 0x7f0700d3

    iget-object v4, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const/high16 v5, 0x10000000

    invoke-static {v4, v0, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1

    :cond_c
    invoke-static {p3, p4}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/client/d;I)[I

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v0, v1

    if-eqz v0, :cond_0

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f030061

    invoke-direct {v2, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p4}, Lcom/twitter/android/client/WidgetControl;->e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v3

    if-lez v3, :cond_d

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/twitter/android/client/WidgetControl$WidgetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ax;

    invoke-direct {p0, v2, v0, p2}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/widget/RemoteViews;Lcom/twitter/android/provider/ax;Landroid/graphics/Bitmap;)V

    iget-wide v3, v0, Lcom/twitter/android/provider/ax;->n:J

    iget-wide v5, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_d

    const v3, 0x7f0700d5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const-class v5, Lcom/twitter/android/PostActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.twitter.android.post.reply"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Lcom/twitter/android/provider/az;->b:Landroid/net/Uri;

    iget-wide v5, v0, Lcom/twitter/android/provider/ax;->o:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v3, 0x14000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "account_name"

    iget-object v4, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "ref_event"

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->W:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const v3, 0x7f0700d5

    iget-object v4, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_b
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto/16 :goto_0

    :cond_d
    const v0, 0x7f0700d5

    const/4 v3, 0x4

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_b

    :cond_e
    move v0, v1

    goto/16 :goto_4
.end method

.method private a(Ljava/util/HashMap;I)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/twitter/android/client/WidgetControl;->e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v2

    iget v0, v2, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    invoke-virtual {v2}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ax;

    iget-wide v3, v0, Lcom/twitter/android/provider/ax;->n:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/util/n;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/twitter/android/util/n;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/d;

    invoke-direct {p0, v0, v1, v3, p2}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/provider/ax;Landroid/graphics/Bitmap;Lcom/twitter/android/client/d;I)V

    :cond_0
    invoke-virtual {v2}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ax;

    iget-wide v1, v0, Lcom/twitter/android/provider/ax;->n:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/util/n;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/twitter/android/util/n;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->h:Lcom/twitter/android/client/d;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/provider/ax;Landroid/graphics/Bitmap;Lcom/twitter/android/client/d;I)V

    :cond_1
    return-void
.end method

.method private static a(Lcom/twitter/android/client/d;I)[I
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/client/d;->c()[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/client/d;->b()[I

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/twitter/android/client/d;I)V
    .locals 7

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/twitter/android/client/WidgetControl;->e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v1

    iget v0, p1, Lcom/twitter/android/client/d;->a:I

    const v2, 0x7f050003

    if-ne v0, v2, :cond_1

    iget v0, v1, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    :goto_1
    invoke-virtual {v1}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, p2}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/d;ILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/twitter/android/provider/ax;

    iget-object v0, v6, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->k:Lcom/twitter/android/util/w;

    iget-wide v1, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    iget-wide v3, v6, Lcom/twitter/android/provider/ax;->n:J

    iget-object v5, v6, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/util/w;->a(JJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v6, v0, p1, p2}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/provider/ax;Landroid/graphics/Bitmap;Lcom/twitter/android/client/d;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static declared-synchronized c()I
    .locals 2

    const-class v1, Lcom/twitter/android/client/WidgetControl;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/twitter/android/client/WidgetControl;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/twitter/android/client/WidgetControl;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;
    .locals 2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->f:[Lcom/twitter/android/client/WidgetControl$WidgetList;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->f:[Lcom/twitter/android/client/WidgetControl$WidgetList;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/d;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/d;

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/d;->a(Landroid/content/Context;)[I

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/client/d;->a(Landroid/content/Context;[I)V

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->h:Lcom/twitter/android/client/d;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->h:Lcom/twitter/android/client/d;

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/d;->a(Landroid/content/Context;)[I

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/client/d;->a(Landroid/content/Context;[I)V

    return-void
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/twitter/android/client/WidgetControl;->e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v1

    iget v2, v0, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    if-eqz v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_0

    iget v1, v0, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/d;

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/client/WidgetControl;->b(Lcom/twitter/android/client/d;I)V

    goto :goto_0
.end method

.method final a(IJLjava/util/ArrayList;)V
    .locals 8

    const/4 v7, 0x3

    const/16 v6, 0x14

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/twitter/android/client/WidgetControl;->e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v3

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/twitter/android/client/WidgetControl$WidgetList;->clear()V

    :cond_1
    invoke-virtual {v3}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v1, p4}, Lcom/twitter/android/client/WidgetControl$WidgetList;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v3}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/d;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-static {v0, v1, v7, v2, p1}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/d;ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->h:Lcom/twitter/android/client/d;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-static {v0, v1, v7, v2, p1}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/d;ILjava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :goto_2
    if-le v2, v6, :cond_4

    invoke-virtual {v3, v6}, Lcom/twitter/android/client/WidgetControl$WidgetList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v2

    goto :goto_2

    :cond_4
    iget v2, v3, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v0, :cond_5

    if-le v2, v4, :cond_5

    add-int v0, v2, v4

    if-lt v0, v6, :cond_6

    :cond_5
    iput v1, v3, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/d;

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/client/WidgetControl;->b(Lcom/twitter/android/client/d;I)V

    :cond_6
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->h:Lcom/twitter/android/client/d;

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/client/WidgetControl;->b(Lcom/twitter/android/client/d;I)V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/WidgetControl;->e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/client/WidgetControl;->a(JLcom/twitter/android/client/WidgetControl$WidgetList;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/twitter/android/client/WidgetControl;->e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/client/WidgetControl;->a(JLcom/twitter/android/client/WidgetControl$WidgetList;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/twitter/android/client/WidgetControl;->a(Ljava/util/HashMap;I)V

    const/4 v0, 0x5

    invoke-direct {p0, p2, v0}, Lcom/twitter/android/client/WidgetControl;->a(Ljava/util/HashMap;I)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->k:Lcom/twitter/android/util/w;

    invoke-virtual {v1, p0}, Lcom/twitter/android/util/w;->b(Lcom/twitter/android/util/j;)V

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const-class v4, Lcom/twitter/android/client/WidgetService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "close"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "owner_id"

    iget-wide v4, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "widget_state"

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->k:Lcom/twitter/android/util/w;

    invoke-virtual {v0, p0}, Lcom/twitter/android/util/w;->a(Lcom/twitter/android/util/j;)V

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/client/WidgetService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "open"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "owner_id"

    iget-wide v3, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/twitter/android/client/WidgetControl;->e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v1

    iget v2, v0, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    if-eqz v1, :cond_0

    if-lez v2, :cond_0

    iget v1, v0, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/d;

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/client/WidgetControl;->b(Lcom/twitter/android/client/d;I)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 7

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const-class v5, Lcom/twitter/android/client/WidgetService;

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "refresh"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    iget-wide v5, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "latest_time_tweets"

    if-eqz p1, :cond_1

    move-wide v0, v2

    :goto_0
    invoke-virtual {v5, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "latest_time_mentions"

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->f:[Lcom/twitter/android/client/WidgetControl$WidgetList;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/client/WidgetControl$WidgetList;)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->f:[Lcom/twitter/android/client/WidgetControl$WidgetList;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/client/WidgetControl$WidgetList;)J

    move-result-wide v2

    goto :goto_1
.end method

.method public final c(I)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f050003

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/d;

    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/client/WidgetControl;->b(Lcom/twitter/android/client/d;I)V

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/client/WidgetControl;->b(Lcom/twitter/android/client/d;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->h:Lcom/twitter/android/client/d;

    goto :goto_1
.end method

.method public final d(I)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/d;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/d;ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/d;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v4}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/d;ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->h:Lcom/twitter/android/client/d;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/d;ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->h:Lcom/twitter/android/client/d;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v4}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/d;ILjava/lang/String;I)V

    goto :goto_0
.end method
