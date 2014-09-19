.class public Lcom/sbstrm/appirater/Appirater;
.super Ljava/lang/Object;
.source "Appirater.java"


# static fields
.field public static APP_ID:Ljava/lang/String; = null

.field public static APP_TITLE:Ljava/lang/String; = null

.field private static final DAYS_BEFORE_REMINDING:I = 0x1

.field private static final DAYS_UNTIL_PROMPT:I = 0x2

.field private static final LAUNCHES_UNTIL_PROMPT:I = 0x5

.field private static final MARKET_URL:Ljava/lang/String; = "market://details?id="

.field private static final PREF_APP_VERSION_CODE:Ljava/lang/String; = "versioncode"

.field private static final PREF_DATE_FIRST_LAUNCHED:Ljava/lang/String; = "date_firstlaunch"

.field private static final PREF_DATE_REMINDER_PRESSED:Ljava/lang/String; = "date_reminder_pressed"

.field private static final PREF_DONT_SHOW:Ljava/lang/String; = "dontshow"

.field private static final PREF_LAUNCH_COUNT:Ljava/lang/String; = "launch_count"

.field private static final PREF_RATE_CLICKED:Ljava/lang/String; = "rateclicked"

.field private static final RATE_MESSAGE:Ljava/lang/String; = "If you enjoy using %s, would you mind taking a moment to rate it? Thanks for your support!"

.field private static final RATE_TITLE:Ljava/lang/String; = "Rate %s"

.field private static final TEST_MODE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 23
    const-string v0, ""

    sput-object v1, Lcom/sbstrm/appirater/Appirater;->APP_ID:Ljava/lang/String;

    .line 25
    const-string v0, ""

    sput-object v1, Lcom/sbstrm/appirater/Appirater;->APP_TITLE:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appLaunched(Landroid/content/Context;)V
    .locals 11
    .parameter "mContext"

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, testMode:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".apprater"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 37
    .local v8, prefs:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    const-string v1, "dontshow"

    const/4 v2, 0x0

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "rateclicked"

    const/4 v2, 0x0

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    .end local v0           #testMode:I
    .end local v8           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 39
    .restart local v0       #testMode:I
    .restart local v8       #prefs:Landroid/content/SharedPreferences;
    :cond_1
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 41
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 42
    invoke-static {p0, v5}, Lcom/sbstrm/appirater/Appirater;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 46
    :cond_2
    const-string v0, "launch_count"

    .end local v0           #testMode:I
    const-wide/16 v1, 0x0

    invoke-interface {v8, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 49
    .local v6, launch_count:J
    const-string v0, "date_firstlaunch"

    const-wide/16 v1, 0x0

    invoke-interface {v8, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 52
    .local v1, date_firstLaunch:J
    const-string v0, "date_reminder_pressed"

    const-wide/16 v3, 0x0

    invoke-interface {v8, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 55
    .local v3, date_reminder_pressed:J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 56
    .local v0, appVersionCode:I
    const-string v9, "versioncode"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .end local v8           #prefs:Landroid/content/SharedPreferences;
    if-eq v8, v0, :cond_3

    .line 58
    const-wide/16 v6, 0x0

    .line 60
    :cond_3
    const-string v8, "versioncode"

    invoke-interface {v5, v8, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0           #appVersionCode:I
    :goto_1
    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    .line 66
    const-string v0, "launch_count"

    invoke-interface {v5, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 68
    const-wide/16 v8, 0x0

    cmp-long v0, v1, v8

    if-nez v0, :cond_6

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    .end local v1           #date_firstLaunch:J
    .local v0, date_firstLaunch:J
    const-string v2, "date_firstlaunch"

    invoke-interface {v5, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 74
    :goto_2
    const-wide/16 v8, 0x5

    cmp-long v2, v6, v8

    if-ltz v2, :cond_4

    .line 75
    const-wide/32 v6, 0xa4cb800

    .line 76
    .local v6, millisecondsToWait:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v0, v6

    cmp-long v0, v8, v0

    if-ltz v0, :cond_4

    .line 77
    .end local v0           #date_firstLaunch:J
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-nez v0, :cond_5

    .line 78
    invoke-static {p0, v5}, Lcom/sbstrm/appirater/Appirater;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    .line 88
    .end local v6           #millisecondsToWait:J
    :cond_4
    :goto_3
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 80
    .restart local v6       #millisecondsToWait:J
    :cond_5
    const-wide/32 v0, 0x5265c00

    .line 81
    .local v0, remindMillisecondsToWait:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .end local v6           #millisecondsToWait:J
    add-long/2addr v0, v3

    cmp-long v0, v6, v0

    if-ltz v0, :cond_4

    .line 82
    .end local v0           #remindMillisecondsToWait:J
    invoke-static {p0, v5}, Lcom/sbstrm/appirater/Appirater;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    goto :goto_3

    .line 61
    .restart local v1       #date_firstLaunch:J
    .local v6, launch_count:J
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_6
    move-wide v0, v1

    .end local v1           #date_firstLaunch:J
    .local v0, date_firstLaunch:J
    goto :goto_2
.end method

.method private static showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V
    .locals 13
    .parameter "mContext"
    .parameter "editor"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 92
    sget-object v0, Lcom/sbstrm/appirater/Appirater;->APP_TITLE:Ljava/lang/String;

    .line 93
    .local v0, appName:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .local v1, builderInvite:Landroid/app/AlertDialog$Builder;
    const-string v6, ""

    .line 97
    .local v6, packageName:Ljava/lang/String;
    const-string v8, "Rate %s"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v0, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 99
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 100
    .local v4, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 101
    .local v3, info:Landroid/content/pm/PackageInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    .end local v4           #manager:Landroid/content/pm/PackageManager;
    :goto_0
    const-string v8, "Appirater"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "PackageName: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "market://details?id="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/sbstrm/appirater/Appirater;->APP_ID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, marketLink:Ljava/lang/String;
    const-string v8, "If you enjoy using %s, would you mind taking a moment to rate it? Thanks for your support!"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v0, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, title:Ljava/lang/String;
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 111
    const-string v8, "Rate"

    new-instance v9, Lcom/sbstrm/appirater/Appirater$1;

    invoke-direct {v9, p0, v5, p1}, Lcom/sbstrm/appirater/Appirater$1;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 121
    const-string v9, "Remind me later"

    new-instance v10, Lcom/sbstrm/appirater/Appirater$2;

    invoke-direct {v10, p1}, Lcom/sbstrm/appirater/Appirater$2;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 129
    const-string v9, "No, Thanks"

    new-instance v10, Lcom/sbstrm/appirater/Appirater$3;

    invoke-direct {v10, p1}, Lcom/sbstrm/appirater/Appirater$3;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 140
    return-void

    .line 104
    .end local v5           #marketLink:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 105
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
