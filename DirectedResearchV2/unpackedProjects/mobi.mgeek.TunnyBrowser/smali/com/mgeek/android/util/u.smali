.class public Lcom/mgeek/android/util/u;
.super Ljava/lang/Object;
.source "TrackHelper.java"


# direct methods
.method public static a()V
    .locals 9

    .prologue
    .line 62
    :try_start_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isNormalDataTrackEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 67
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 68
    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 70
    const-string v0, "last_report_default_engine_time"

    const-wide/16 v1, 0x0

    invoke-interface {v5, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 71
    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const-string v0, "blank"

    .line 76
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getSearchEngine()Lcom/dolphin/browser/search/g;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_4

    .line 79
    invoke-interface {v1}, Lcom/dolphin/browser/search/g;->a()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 82
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 84
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    const-string v0, "blank"

    move-object v1, v0

    .line 89
    :goto_2
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 91
    const-string v0, "blank"

    .line 94
    :cond_2
    const-string v6, "search"

    const-string v7, "defalut_engine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "||"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_report_default_engine_time"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 144
    if-nez p0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 149
    invoke-static {p0}, Ldolphin/preference/z;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_count_bookmark_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 152
    const-wide/32 v4, 0x5265c00

    invoke-static/range {v0 .. v5}, Lcom/mgeek/android/util/u;->a(JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v2

    invoke-static {p0}, Ldolphin/preference/z;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "last_count_bookmark_time"

    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;)I

    move-result v1

    .line 164
    invoke-static {v1}, Lcom/dolphin/browser/util/de;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 166
    const-string v3, "bookmark"

    const-string v4, "urlcount"

    sget-object v5, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v3, v4, v2, v1, v5}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;)V

    .line 170
    :cond_2
    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/ContentResolver;)I

    move-result v0

    .line 171
    invoke-static {v0}, Lcom/dolphin/browser/util/de;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    const-string v2, "bookmark"

    const-string v3, "foldercount"

    sget-object v4, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v2, v3, v1, v0, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 108
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 109
    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    :cond_0
    const-string v1, "type"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 116
    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_0
    :pswitch_0
    return-void

    .line 118
    :pswitch_1
    const-string v0, "launch"

    const-string v1, "from"

    const-string v2, "bookmark"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :pswitch_2
    const-string v0, "launch"

    const-string v1, "from"

    const-string v2, "speeddial"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/BrowserUtil;->a(Landroid/content/Intent;Landroid/content/ContentResolver;)Lcom/dolphin/browser/util/al;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/dolphin/browser/util/al;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 132
    const-string v0, "launch"

    const-string v1, "from"

    const-string v2, "link"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_2
    const-string v0, "launch"

    const-string v1, "from"

    const-string v2, "directlink"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Z)V
    .locals 4

    .prologue
    .line 41
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 43
    if-eqz p0, :cond_0

    const-string v0, "activate"

    .line 44
    :goto_0
    const-string v2, "time"

    iget v1, v1, Landroid/text/format/Time;->hour:I

    invoke-static {v1}, Lcom/dolphin/browser/util/de;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void

    .line 43
    :cond_0
    const-string v0, "launch"

    goto :goto_0
.end method

.method private static a(JJJ)Z
    .locals 2

    .prologue
    .line 49
    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-lez v0, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
