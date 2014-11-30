.class public Lcom/sgn/ratings/Ratings;
.super Lcom/jesusla/ane/Context;
.source "Ratings.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseValueOf"
    }
.end annotation


# static fields
.field private static final PREF_APP_VERSION_CODE:Ljava/lang/String; = "versioncode"

.field private static final PREF_DATE_FIRST_LAUNCHED:Ljava/lang/String; = "date_firstlaunch"

.field private static final PREF_DATE_REMINDER_PRESSED:Ljava/lang/String; = "date_reminder_pressed"

.field private static final PREF_DONT_SHOW:Ljava/lang/String; = "dontshow"

.field private static final PREF_LAUNCH_COUNT:Ljava/lang/String; = "launch_count"

.field private static final PREF_RATE_CLICKED:Ljava/lang/String; = "rateclicked"

.field private static final PREF_SIG_EVENT:Ljava/lang/String; = "sig_event"


# instance fields
.field private final DEFAULT_RATE_TEXT:Ljava/lang/String;

.field private enabled:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/jesusla/ane/Context;-><init>()V

    .line 28
    const-string v0, "If you enjoy using %APP_NAME%, please take a moment to rate it. Thanks for your support!"

    iput-object v0, p0, Lcom/sgn/ratings/Ratings;->DEFAULT_RATE_TEXT:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sgn/ratings/Ratings;->enabled:Z

    .line 34
    const-string v0, "userDidSignificantEvent"

    invoke-virtual {p0, v0}, Lcom/sgn/ratings/Ratings;->registerFunction(Ljava/lang/String;)V

    .line 35
    const-string v0, "rateApp"

    invoke-virtual {p0, v0}, Lcom/sgn/ratings/Ratings;->registerFunction(Ljava/lang/String;)V

    .line 36
    const-string v0, "isAppiraterEnabled"

    invoke-virtual {p0, v0}, Lcom/sgn/ratings/Ratings;->registerFunction(Ljava/lang/String;)V

    .line 37
    const-string v0, "setAppiraterEnabled"

    invoke-virtual {p0, v0}, Lcom/sgn/ratings/Ratings;->registerFunction(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private getApplicationName()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v1, p0, Lcom/sgn/ratings/Ratings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 164
    .local v0, "nameId":I
    iget-object v1, p0, Lcom/sgn/ratings/Ratings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private showRateDialog(Landroid/content/Context;)V
    .locals 13
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 168
    const-string v9, "ANE Ratings - Show rate Dialog"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 171
    .local v4, "dialog":Landroid/app/Dialog;
    invoke-direct {p0}, Lcom/sgn/ratings/Ratings;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "appName":Ljava/lang/String;
    const-string v9, "RTMarketURL"

    invoke-virtual {p0, v9}, Lcom/sgn/ratings/Ratings;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, "marketURL":Ljava/lang/String;
    const-string v9, "RTRateText"

    invoke-virtual {p0, v9}, Lcom/sgn/ratings/Ratings;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v9, "If you enjoy using %APP_NAME%, please take a moment to rate it. Thanks for your support!"

    move-object v7, v9

    .line 174
    .local v7, "rateText":Ljava/lang/String;
    :goto_0
    const-string v9, "%APP_NAME%"

    invoke-virtual {v7, v9, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 176
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 179
    .local v5, "ll":Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 181
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 182
    .local v8, "tv":Landroid/widget/TextView;
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const/16 v9, 0xf0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setWidth(I)V

    .line 184
    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/16 v12, 0xa

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 185
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 188
    .local v1, "b1":Landroid/widget/Button;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 189
    new-instance v9, Lcom/sgn/ratings/Ratings$1;

    invoke-direct {v9, p0, p1, v6, v4}, Lcom/sgn/ratings/Ratings$1;-><init>(Lcom/sgn/ratings/Ratings;Landroid/content/Context;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 204
    .local v2, "b2":Landroid/widget/Button;
    const-string v9, "Remind me later"

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 205
    new-instance v9, Lcom/sgn/ratings/Ratings$2;

    invoke-direct {v9, p0, p1, v4}, Lcom/sgn/ratings/Ratings$2;-><init>(Lcom/sgn/ratings/Ratings;Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 219
    .local v3, "b3":Landroid/widget/Button;
    const-string v9, "No, thanks"

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 220
    new-instance v9, Lcom/sgn/ratings/Ratings$3;

    invoke-direct {v9, p0, p1, v4}, Lcom/sgn/ratings/Ratings$3;-><init>(Lcom/sgn/ratings/Ratings;Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 234
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 235
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 236
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 237
    return-void

    .line 173
    .end local v1    # "b1":Landroid/widget/Button;
    .end local v2    # "b2":Landroid/widget/Button;
    .end local v3    # "b3":Landroid/widget/Button;
    .end local v5    # "ll":Landroid/widget/LinearLayout;
    .end local v7    # "rateText":Ljava/lang/String;
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_0
    const-string v9, "RTRateText"

    invoke-virtual {p0, v9}, Lcom/sgn/ratings/Ratings;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    goto/16 :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/jesusla/ane/Context;->dispose()V

    .line 92
    return-void
.end method

.method protected initContext()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseValueOf"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/sgn/ratings/Ratings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iput-object v9, p0, Lcom/sgn/ratings/Ratings;->mContext:Landroid/content/Context;

    .line 44
    const-string v9, "RTTestMode"

    invoke-virtual {p0, v9}, Lcom/sgn/ratings/Ratings;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 45
    .local v8, "testMode":Ljava/lang/Boolean;
    iget-object v9, p0, Lcom/sgn/ratings/Ratings;->mContext:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sgn/ratings/Ratings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".appirater"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 46
    .local v7, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "dontshow"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "rateclicked"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 52
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 53
    const-string v9, "ANE Ratings TEST MODE"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v9, p0, Lcom/sgn/ratings/Ratings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9}, Lcom/sgn/ratings/Ratings;->showRateDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 59
    :cond_2
    const-string v9, "launch_count"

    const-wide/16 v10, 0x0

    invoke-interface {v7, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 62
    .local v5, "launch_count":J
    const-string v9, "date_firstlaunch"

    const-wide/16 v10, 0x0

    invoke-interface {v7, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 65
    .local v1, "date_firstLaunch":J
    :try_start_0
    iget-object v9, p0, Lcom/sgn/ratings/Ratings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/sgn/ratings/Ratings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget v0, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 66
    .local v0, "appVersionCode":I
    const-string v9, "versioncode"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v0, :cond_3

    .line 69
    const-wide/16 v5, 0x0

    .line 71
    :cond_3
    const-string v9, "versioncode"

    invoke-interface {v4, v9, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0    # "appVersionCode":I
    :goto_1
    const-wide/16 v9, 0x1

    add-long/2addr v5, v9

    .line 78
    const-string v9, "launch_count"

    invoke-interface {v4, v9, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 80
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-nez v9, :cond_4

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 82
    const-string v9, "date_firstlaunch"

    invoke-interface {v4, v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 83
    const-string v9, "ANE Ratings - setting date firstLaunch: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :cond_4
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 72
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 74
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "ANE Ratings Exception: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public isAppiraterEnabled()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/sgn/ratings/Ratings;->enabled:Z

    return v0
.end method

.method public rateApp()V
    .locals 5

    .prologue
    .line 144
    iget-object v2, p0, Lcom/sgn/ratings/Ratings;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sgn/ratings/Ratings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".appirater"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 146
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 147
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/sgn/ratings/Ratings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/sgn/ratings/Ratings;->showRateDialog(Landroid/content/Context;)V

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    return-void
.end method

.method public setAppiraterEnabled(Z)V
    .locals 0
    .param p1, "f"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/sgn/ratings/Ratings;->enabled:Z

    .line 159
    return-void
.end method

.method public userDidSignificantEvent()V
    .locals 26

    .prologue
    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sgn/ratings/Ratings;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sgn/ratings/Ratings;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".appirater"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 97
    .local v16, "prefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sgn/ratings/Ratings;->enabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    const-string v22, "dontshow"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-nez v22, :cond_0

    const-string v22, "rateclicked"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 103
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v22, "sig_event"

    const-wide/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    .line 104
    .local v20, "sig_events":J
    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    .line 105
    const-string v22, "sig_event"

    move-object v0, v10

    move-object/from16 v1, v22

    move-wide/from16 v2, v20

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 108
    const-string v22, "launch_count"

    const-wide/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 111
    .local v11, "launch_count":J
    const-string v22, "date_firstlaunch"

    const-wide/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 114
    .local v4, "date_firstLaunch":J
    const-string v22, "date_reminder_pressed"

    const-wide/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 116
    .local v6, "date_reminder_pressed":J
    const-string v22, "RTUsesUntilPrompt"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sgn/ratings/Ratings;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 117
    .local v13, "launchesUntilPrompt":I
    const-string v22, "RTDaysUntilPrompt"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sgn/ratings/Ratings;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 118
    .local v9, "daysUntilPrompt":I
    const-string v22, "RTSigEventsUntilPrompt"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sgn/ratings/Ratings;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 119
    .local v19, "sigEventsUntilPrompt":I
    const-string v22, "RTTimeBeforeReminding"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sgn/ratings/Ratings;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 122
    .local v8, "daysBeforePrompt":I
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v22, v20, v22

    if-ltz v22, :cond_2

    .line 125
    move v0, v13

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v22, v11, v22

    if-ltz v22, :cond_2

    .line 126
    mul-int/lit8 v22, v9, 0x18

    mul-int/lit8 v22, v22, 0x3c

    mul-int/lit8 v22, v22, 0x3c

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3e8

    mul-long v14, v22, v24

    .line 127
    .local v14, "millisecondsToWait":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    add-long v24, v4, v14

    cmp-long v22, v22, v24

    if-ltz v22, :cond_2

    .line 128
    const-wide/16 v22, 0x0

    cmp-long v22, v6, v22

    if-nez v22, :cond_3

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sgn/ratings/Ratings;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sgn/ratings/Ratings;->showRateDialog(Landroid/content/Context;)V

    .line 140
    .end local v14    # "millisecondsToWait":J
    :cond_2
    :goto_1
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 131
    .restart local v14    # "millisecondsToWait":J
    :cond_3
    mul-int/lit8 v22, v8, 0x18

    mul-int/lit8 v22, v22, 0x3c

    mul-int/lit8 v22, v22, 0x3c

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3e8

    mul-long v17, v22, v24

    .line 132
    .local v17, "remindMillisecondsToWait":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    add-long v24, v17, v6

    cmp-long v22, v22, v24

    if-ltz v22, :cond_2

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sgn/ratings/Ratings;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sgn/ratings/Ratings;->showRateDialog(Landroid/content/Context;)V

    goto :goto_1
.end method
