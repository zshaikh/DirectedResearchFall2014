.class public Lam/sunrise/android/calendar/widget/agenda/AgendaAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "AgendaAppWidgetProvider.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lam/sunrise/android/calendar/widget/agenda/AgendaAppWidgetProvider;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1a
        0x801a
        0x1801a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lam/sunrise/android/calendar/widget/agenda/AgendaAppWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 13

    .prologue
    const/16 v6, 0xc

    const/4 v4, -0x1

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_4

    .line 155
    invoke-static {v8}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 156
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v5

    .line 157
    const-string v0, "appWidgetCategory"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v7, v0, :cond_1

    move v0, v1

    .line 159
    :goto_0
    const-string v3, "appWidgetMinHeight"

    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 160
    if-lez v3, :cond_3

    .line 161
    int-to-float v3, v3

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v1, v3, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 162
    const v10, 0x7f0c0152

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    if-lt v3, v10, :cond_2

    move v3, v1

    .line 166
    :goto_1
    const-string v10, "appWidgetMinWidth"

    invoke-virtual {v5, v10, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 167
    if-lez v4, :cond_0

    .line 168
    int-to-float v4, v4

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 177
    :cond_0
    :goto_2
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 179
    if-eqz v0, :cond_8

    .line 180
    if-eqz v3, :cond_5

    .line 181
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v9, 0x7f03009f

    invoke-direct {v4, v5, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 188
    :goto_3
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 192
    if-eqz v5, :cond_6

    .line 193
    const-string v5, "%02d:%02d"

    new-array v9, v7, [Ljava/lang/Object;

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v2

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 203
    :goto_4
    const v5, 0x7f0b0172

    invoke-virtual {v4, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 205
    const v2, 0x7f0b0170

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const/16 v9, 0x1a

    invoke-static {p1, v5, v6, v9}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 244
    :goto_5
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lam/sunrise/android/calendar/widget/agenda/AgendaWidgetService;

    invoke-direct {v2, v8, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    const-string v5, "appWidgetId"

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v5, "am.sunrise.android.calendar.extra.IS_LOCKSCREEN"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    const-string v0, "am.sunrise.android.calendar.extra.IS_EXPANDED"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    invoke-virtual {v2, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 250
    const v0, 0x102000a

    invoke-virtual {v4, v0, v2}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lam/sunrise/android/calendar/widget/agenda/WidgetRouterActivity;

    invoke-direct {v0, v8, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 254
    const/high16 v1, 0x8000000

    invoke-static {v8, v7, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 257
    const v1, 0x102000a

    invoke-virtual {v4, v1, v0}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 259
    return-object v4

    :cond_1
    move v0, v2

    .line 157
    goto/16 :goto_0

    :cond_2
    move v3, v2

    .line 162
    goto/16 :goto_1

    :cond_3
    move v3, v2

    .line 164
    goto/16 :goto_1

    :cond_4
    move v3, v2

    move v0, v2

    .line 172
    goto/16 :goto_2

    .line 183
    :cond_5
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v9, 0x7f0300a0

    invoke-direct {v4, v5, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 196
    :cond_6
    const/16 v5, 0xa

    invoke-virtual {v10, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 197
    if-nez v5, :cond_7

    move v5, v6

    .line 200
    :cond_7
    const-string v9, "%d:%02d"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v2

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v1

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 211
    :cond_8
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v11, 0x7f03009e

    invoke-direct {v5, v6, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 216
    const v6, 0x7f0c0153

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    if-ge v4, v6, :cond_9

    .line 217
    const v4, 0x8002

    .line 220
    :goto_6
    const v6, 0x7f0b016f

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-static {p1, v11, v12, v4}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 222
    const v4, 0x7f0b0170

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    const/16 v6, 0x18

    invoke-static {p1, v9, v10, v6}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 226
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-direct {v4, v8, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    const/high16 v6, 0x8000000

    invoke-static {v8, v2, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 229
    const v4, 0x7f0b016e

    invoke-virtual {v5, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 233
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;

    invoke-direct {v2, v8, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v4

    .line 235
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 236
    const-string v9, "am.sunrise.android.calendar.extra.DATE_TIME"

    invoke-static {v4, v6}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const/high16 v4, 0x8000000

    invoke-static {v8, v1, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 239
    const v4, 0x7f0b0171

    invoke-virtual {v5, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    move-object v4, v5

    goto/16 :goto_5

    :cond_9
    move v4, v7

    goto :goto_6
.end method

.method private a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 124
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lam/sunrise/android/calendar/widget/agenda/AgendaAppWidgetProvider;

    invoke-direct {v0, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    .line 126
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    aget v5, v3, v2

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v0, v6, :cond_2

    .line 130
    invoke-virtual {p2, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 131
    const/4 v6, 0x2

    const-string v7, "appWidgetCategory"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_1

    const/4 v0, 0x1

    .line 137
    :goto_1
    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0, p1, v5}, Lam/sunrise/android/calendar/widget/agenda/AgendaAppWidgetProvider;->a(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 139
    invoke-virtual {p2, v5, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 126
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 131
    goto :goto_1

    :cond_2
    move v0, v1

    .line 134
    goto :goto_1

    .line 142
    :cond_3
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "am.sunrise.android.calendar.action.UPDATE_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 269
    return-void
.end method

.method static c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "am.sunrise.android.calendar.action.UPDATE_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    const-string v1, "am.sunrise.android.calendar.extra.LOCKSCREEN_ONLY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 275
    return-void
.end method

.method static d(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 279
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 280
    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 281
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->add(II)V

    .line 283
    new-instance v1, Lam/sunrise/android/calendar/reminders/a;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/reminders/a;-><init>(Landroid/content/Context;)V

    .line 285
    new-instance v2, Landroid/content/Intent;

    const-string v3, "am.sunrise.android.calendar.action.UPDATE_WIDGET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    sget-object v3, Lam/sunrise/android/calendar/provider/e;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 288
    const/high16 v3, 0x20000000

    invoke-static {p0, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 290
    if-eqz v3, :cond_0

    .line 291
    invoke-virtual {v1, v3}, Lam/sunrise/android/calendar/reminders/a;->a(Landroid/app/PendingIntent;)V

    .line 294
    :cond_0
    const/high16 v3, 0x8000000

    invoke-static {p0, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 296
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v1, v5, v3, v4, v2}, Lam/sunrise/android/calendar/reminders/a;->a(IJLandroid/app/PendingIntent;)V

    .line 297
    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 106
    invoke-direct {p0, p1, p3}, Lam/sunrise/android/calendar/widget/agenda/AgendaAppWidgetProvider;->a(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 107
    const v1, 0x102000a

    invoke-virtual {p2, p3, v1}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 108
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 109
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 3

    .prologue
    .line 113
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_1

    .line 115
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 118
    :cond_0
    invoke-static {p1}, Lam/sunrise/android/calendar/widget/agenda/TimeObserver;->b(Landroid/content/Context;)V

    .line 121
    :cond_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 61
    if-eqz p2, :cond_3

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 64
    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lam/sunrise/android/calendar/widget/agenda/AgendaWidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 87
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v1, "am.sunrise.android.calendar.action.UPDATE_WIDGET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 74
    invoke-static {p1}, Lam/sunrise/android/calendar/widget/agenda/AgendaAppWidgetProvider;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 75
    const-string v2, "am.sunrise.android.calendar.extra.LOCKSCREEN_ONLY"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "am.sunrise.android.calendar.extra.LOCKSCREEN_ONLY"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 77
    invoke-direct {p0, p1, v0, v1}, Lam/sunrise/android/calendar/widget/agenda/AgendaAppWidgetProvider;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0, p1, v0, v1}, Lam/sunrise/android/calendar/widget/agenda/AgendaAppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5

    .prologue
    .line 91
    invoke-static {p1}, Lam/sunrise/android/calendar/widget/agenda/TimeObserver;->a(Landroid/content/Context;)V

    .line 93
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lam/sunrise/android/calendar/widget/agenda/AgendaAppWidgetProvider;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 95
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 96
    invoke-direct {p0, p1, v3}, Lam/sunrise/android/calendar/widget/agenda/AgendaAppWidgetProvider;->a(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 97
    invoke-virtual {p2, v3, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method
