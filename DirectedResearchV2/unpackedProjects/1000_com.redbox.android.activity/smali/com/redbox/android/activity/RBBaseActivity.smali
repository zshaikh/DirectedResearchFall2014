.class public Lcom/redbox/android/activity/RBBaseActivity;
.super Landroid/app/Activity;
.source "RBBaseActivity.java"


# static fields
.field public static final DIALOG_ALERT:I = 0xb

.field public static final DIALOG_ALERT_FINISH:I = 0x1b

.field public static final DIALOG_CONNETION_ERROR:I = 0x4

.field public static final DIALOG_PROGRESS_BAR:I = 0x1

.field public static final DIALOG_PROGRESS_SPINNER:I = 0x3

.field public static final LOCATION_ALERT_DIALOG:I = 0xd

.field public static final MOVIE_RESERVATION_FAILED:I = 0x7

.field public static final MOVIE_RESERVED:I = 0x5

.field public static final TIMEOUT_DIALOG:I = 0x11


# instance fields
.field activityShowing:Z

.field alertBox:Landroid/app/AlertDialog;

.field alertBoxMsg:Ljava/lang/String;

.field alertBoxTitle:Ljava/lang/String;

.field connectionErrorMessage:Ljava/lang/String;

.field gpsAlertBox:Landroid/app/AlertDialog;

.field handler:Landroid/os/Handler;

.field private listener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

.field locTimer:Ljava/util/Timer;

.field locationUpdate:Z

.field mgr:Landroid/location/LocationManager;

.field progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/redbox/android/activity/RBBaseActivity;->locationUpdate:Z

    .line 46
    iput-boolean v0, p0, Lcom/redbox/android/activity/RBBaseActivity;->activityShowing:Z

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/RBBaseActivity;)Lcom/redbox/android/adapter/DisableLocationUpdateListener;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity;->listener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    return-object v0
.end method


# virtual methods
.method protected d(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-static {p0, p1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-static {p0, p1}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method protected i(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-static {p0, p1}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public isEmailValid(Ljava/lang/String;)Z
    .locals 6
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checking validy of email : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    const-string v0, "^[\\w\\.-]+@([\\w\\-]+\\.)+[A-Z]{2,4}$"

    .line 300
    .local v0, "expression":Ljava/lang/String;
    move-object v1, p1

    .line 302
    .local v1, "inputStr":Ljava/lang/CharSequence;
    const/4 v4, 0x2

    invoke-static {v0, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 303
    .local v3, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 304
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    const/4 v4, 0x1

    .line 307
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isPassVaild(Ljava/lang/String;)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 292
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 86
    const-string v0, "Device Configuration Changed"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget-boolean v0, Lcom/redbox/android/utils/RBLogger;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lcom/redbox/android/utils/CustomExceptionHandler;

    .line 65
    const-string v1, "/sdcard/redboxlogs"

    .line 64
    invoke-direct {v0, v1}, Lcom/redbox/android/utils/CustomExceptionHandler;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 67
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity;->handler:Landroid/os/Handler;

    .line 68
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/redbox/android/utils/RBHandler;->setHandler(Landroid/os/Handler;)V

    .line 69
    invoke-static {p0}, Lcom/redbox/android/adapter/MovieService;->setContext(Landroid/content/Context;)V

    .line 70
    invoke-static {p0}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->setContext(Landroid/content/Context;)V

    .line 71
    invoke-static {p0}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->setContext(Landroid/content/Context;)V

    .line 73
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/RBBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity;->mgr:Landroid/location/LocationManager;

    .line 74
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .param p1, "id"    # I

    .prologue
    const/4 v12, 0x1

    const v11, 0x7f050008

    const/4 v10, 0x0

    .line 119
    sparse-switch p1, :sswitch_data_0

    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v8

    :goto_0
    return-object v8

    .line 121
    :sswitch_0
    new-instance v8, Landroid/app/ProgressDialog;

    invoke-direct {v8, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/redbox/android/activity/RBBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 122
    iget-object v8, p0, Lcom/redbox/android/activity/RBBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8, v12}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 123
    iget-object v8, p0, Lcom/redbox/android/activity/RBBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v9, 0x7f05000b

    invoke-virtual {p0, v9}, Lcom/redbox/android/activity/RBBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v8, p0, Lcom/redbox/android/activity/RBBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8, v12}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 125
    iget-object v8, p0, Lcom/redbox/android/activity/RBBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 127
    iget-object v8, p0, Lcom/redbox/android/activity/RBBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 129
    :sswitch_1
    new-instance v8, Landroid/app/ProgressDialog;

    invoke-direct {v8, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/redbox/android/activity/RBBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 130
    iget-object v8, p0, Lcom/redbox/android/activity/RBBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v9, Lcom/redbox/android/activity/RBBaseActivity$1;

    invoke-direct {v9, p0}, Lcom/redbox/android/activity/RBBaseActivity$1;-><init>(Lcom/redbox/android/activity/RBBaseActivity;)V

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 148
    iget-object v8, p0, Lcom/redbox/android/activity/RBBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8, v10}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 149
    iget-object v8, p0, Lcom/redbox/android/activity/RBBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8, v12}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 151
    iget-object v8, p0, Lcom/redbox/android/activity/RBBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 155
    :sswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v8, p0, Lcom/redbox/android/activity/RBBaseActivity;->connectionErrorMessage:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 157
    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 158
    invoke-virtual {p0, v11}, Lcom/redbox/android/activity/RBBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 159
    new-instance v10, Lcom/redbox/android/activity/RBBaseActivity$2;

    invoke-direct {v10, p0}, Lcom/redbox/android/activity/RBBaseActivity$2;-><init>(Lcom/redbox/android/activity/RBBaseActivity;)V

    .line 158
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "alert":Landroid/app/AlertDialog;
    move-object v8, v0

    .line 166
    goto :goto_0

    .line 169
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    :sswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    .local v1, "alertbuilder":Landroid/app/AlertDialog$Builder;
    iget-object v8, p0, Lcom/redbox/android/activity/RBBaseActivity;->alertBoxMsg:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 172
    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 173
    iget-object v9, p0, Lcom/redbox/android/activity/RBBaseActivity;->alertBoxTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 174
    invoke-virtual {p0, v11}, Lcom/redbox/android/activity/RBBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 175
    new-instance v10, Lcom/redbox/android/activity/RBBaseActivity$3;

    invoke-direct {v10, p0}, Lcom/redbox/android/activity/RBBaseActivity$3;-><init>(Lcom/redbox/android/activity/RBBaseActivity;)V

    .line 174
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/redbox/android/activity/RBBaseActivity;->alertBox:Landroid/app/AlertDialog;

    .line 182
    iget-object v8, p0, Lcom/redbox/android/activity/RBBaseActivity;->alertBox:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 185
    .end local v1    # "alertbuilder":Landroid/app/AlertDialog$Builder;
    :sswitch_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    .local v2, "alertbuilderfinish":Landroid/app/AlertDialog$Builder;
    iget-object v8, p0, Lcom/redbox/android/activity/RBBaseActivity;->alertBoxMsg:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 188
    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 189
    iget-object v9, p0, Lcom/redbox/android/activity/RBBaseActivity;->alertBoxTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 190
    invoke-virtual {p0, v11}, Lcom/redbox/android/activity/RBBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 191
    new-instance v10, Lcom/redbox/android/activity/RBBaseActivity$4;

    invoke-direct {v10, p0}, Lcom/redbox/android/activity/RBBaseActivity$4;-><init>(Lcom/redbox/android/activity/RBBaseActivity;)V

    .line 190
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/redbox/android/activity/RBBaseActivity;->alertBox:Landroid/app/AlertDialog;

    .line 199
    iget-object v8, p0, Lcom/redbox/android/activity/RBBaseActivity;->alertBox:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 201
    .end local v2    # "alertbuilderfinish":Landroid/app/AlertDialog$Builder;
    :sswitch_5
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    .local v4, "locationAlert":Landroid/app/AlertDialog$Builder;
    const v8, 0x7f05002e

    invoke-virtual {p0, v8}, Lcom/redbox/android/activity/RBBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 204
    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 205
    const v9, 0x7f050038

    invoke-virtual {p0, v9}, Lcom/redbox/android/activity/RBBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 206
    new-instance v10, Lcom/redbox/android/activity/RBBaseActivity$5;

    invoke-direct {v10, p0}, Lcom/redbox/android/activity/RBBaseActivity$5;-><init>(Lcom/redbox/android/activity/RBBaseActivity;)V

    .line 205
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 216
    const v9, 0x7f050039

    invoke-virtual {p0, v9}, Lcom/redbox/android/activity/RBBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 217
    new-instance v10, Lcom/redbox/android/activity/RBBaseActivity$6;

    invoke-direct {v10, p0}, Lcom/redbox/android/activity/RBBaseActivity$6;-><init>(Lcom/redbox/android/activity/RBBaseActivity;)V

    .line 216
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 225
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .local v5, "locationAlertBox":Landroid/app/AlertDialog;
    move-object v8, v5

    .line 226
    goto/16 :goto_0

    .line 228
    .end local v4    # "locationAlert":Landroid/app/AlertDialog$Builder;
    .end local v5    # "locationAlertBox":Landroid/app/AlertDialog;
    :sswitch_6
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 230
    .local v6, "timeOutAlert":Landroid/app/AlertDialog$Builder;
    const v8, 0x7f050030

    invoke-virtual {p0, v8}, Lcom/redbox/android/activity/RBBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 231
    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 232
    invoke-virtual {p0, v11}, Lcom/redbox/android/activity/RBBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 233
    new-instance v10, Lcom/redbox/android/activity/RBBaseActivity$7;

    invoke-direct {v10, p0}, Lcom/redbox/android/activity/RBBaseActivity$7;-><init>(Lcom/redbox/android/activity/RBBaseActivity;)V

    .line 232
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .local v7, "timeoutAlertBox":Landroid/app/AlertDialog;
    move-object v8, v7

    .line 240
    goto/16 :goto_0

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0xb -> :sswitch_3
        0xd -> :sswitch_5
        0x11 -> :sswitch_6
        0x1b -> :sswitch_4
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 96
    iput-boolean v1, p0, Lcom/redbox/android/activity/RBBaseActivity;->activityShowing:Z

    .line 97
    const-string v0, "Activity Paused"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sput-boolean v1, Lcom/redbox/android/utils/RuntimeCache;->isRunning:Z

    .line 99
    invoke-static {}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->getInstance()Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->stopListening()V

    .line 101
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 79
    iput-boolean v0, p0, Lcom/redbox/android/activity/RBBaseActivity;->activityShowing:Z

    .line 80
    sput-boolean v0, Lcom/redbox/android/utils/RuntimeCache;->isRunning:Z

    .line 81
    invoke-static {}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->getInstance()Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->startListening(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public setDisbleLocationUpdateListener(Lcom/redbox/android/adapter/DisableLocationUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/redbox/android/activity/RBBaseActivity;->listener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    .line 270
    return-void
.end method

.method public showConnectionError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 311
    sparse-switch p1, :sswitch_data_0

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/redbox/android/activity/RBBaseActivity$8;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/RBBaseActivity$8;-><init>(Lcom/redbox/android/activity/RBBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    return-void

    .line 313
    :sswitch_0
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/RBBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity;->connectionErrorMessage:Ljava/lang/String;

    goto :goto_0

    .line 316
    :sswitch_1
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/RBBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity;->connectionErrorMessage:Ljava/lang/String;

    goto :goto_0

    .line 311
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected w(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-static {p0, p1}, Lcom/redbox/android/utils/RBLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    return-void
.end method
