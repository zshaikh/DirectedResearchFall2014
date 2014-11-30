.class public Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;
.super Ljava/lang/Object;
.source "AlertManager.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAlarm(Ljava/lang/Integer;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/Integer;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "toastMessage"    # Ljava/lang/String;
    .param p3, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-static {p0, p1, p3}, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->getAlarm(Ljava/lang/Integer;Landroid/content/Intent;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 38
    .local v1, "pending":Landroid/app/PendingIntent;
    if-nez v1, :cond_0

    .line 48
    :goto_0
    return v2

    .line 41
    :cond_0
    const-string v3, "alarm"

    invoke-virtual {p3, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 42
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 43
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 45
    if-eqz p2, :cond_1

    .line 46
    invoke-static {p3, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 48
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static createAlarmForSBNotification(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 67
    new-instance v4, Landroid/content/Intent;

    const-class v0, Lcom/gamesys/android/tools/ane/notification/alarm/AlarmBroadcastReceiver;

    invoke-direct {v4, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->getAppPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 70
    .local v6, "appPrefs":Landroid/content/SharedPreferences;
    const-string v0, "appVersion"

    const-string v1, ""

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "appVersion":Ljava/lang/String;
    invoke-static {p0, v3, v3, v7}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->getAppPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 73
    .local v8, "prefs":Landroid/content/SharedPreferences;
    sget-object v0, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->TAG:Ljava/lang/String;

    const-string v1, "Reading notification information from properties..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v0, "background_url"

    .line 77
    const-string v1, "background_url"

    const-string v2, ""

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v0, "icon_big_url"

    .line 80
    const-string v1, "icon_big_url"

    const-string v2, ""

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v0, "icon_small_url"

    .line 83
    const-string v1, "icon_small_url"

    const-string v2, ""

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v0, "title"

    const-string v1, "title"

    const-string v2, ""

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v0, "ticker"

    .line 88
    const-string v1, "ticker"

    const-string v2, ""

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v0, "message"

    .line 91
    const-string v1, "message"

    const-string v2, ""

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v0, "from"

    sget-object v1, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v0, "title_colour"

    .line 96
    const-string v1, "title_colour"

    const-string v2, ""

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v0, "message_colour"

    .line 99
    const-string v1, "message_colour"

    const-string v2, ""

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v0, "appIdentifier"

    .line 102
    const-string v1, "appIdentifier"

    const-string v2, ""

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-static {p0, v7}, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->getAndRemoveNextAlarm(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    const v0, 0x8e49

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->setAlarm(Landroid/content/Context;JLjava/lang/String;Landroid/content/Intent;Ljava/lang/Integer;)Landroid/app/PendingIntent;

    .line 105
    return-void
.end method

.method public static getAlarm(Ljava/lang/Integer;Landroid/content/Intent;Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "key"    # Ljava/lang/Integer;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, 0x20000000

    invoke-static {p2, v1, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 59
    .local v0, "pending":Landroid/app/PendingIntent;
    return-object v0
.end method

.method public static getAndRemoveNextAlarm(Landroid/content/Context;Ljava/lang/String;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, -0x1

    const/4 v5, 0x0

    .line 219
    invoke-static {p0, v5, v5, p1}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->getAppPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 220
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "delays.entry.total"

    const/4 v6, -0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 222
    .local v4, "total":I
    if-lez v4, :cond_1

    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delays.entry."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v4, -0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 225
    .local v1, "next":J
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 228
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delays.entry."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v4, -0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 231
    const-string v5, "delays.entry.total"

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 234
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 235
    sget-object v5, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Next alarm will be triggered: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "next":J
    :goto_0
    return-wide v1

    .line 238
    .restart local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "next":J
    :cond_0
    sget-object v5, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Zero/negative value has been stored as a new date for the next alarm + "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-static {p0, p1}, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->getAndRemoveNextAlarm(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    .line 245
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "next":J
    :cond_1
    sget-object v5, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->TAG:Ljava/lang/String;

    const-string v6, "No more alarm to set"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static saveNotifInfoForAlarm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[D)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifer"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "ticker"    # Ljava/lang/String;
    .param p6, "bgUrl"    # Ljava/lang/String;
    .param p7, "bigIconUrl"    # Ljava/lang/String;
    .param p8, "smallIconUrl"    # Ljava/lang/String;
    .param p9, "delays"    # [D

    .prologue
    .line 159
    if-eqz p9, :cond_0

    move-object/from16 v0, p9

    array-length v9, v0

    if-nez v9, :cond_2

    .line 160
    :cond_0
    sget-object v9, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->TAG:Ljava/lang/String;

    const-string v10, "No delays found, no reminder-notification set"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    sget-object v9, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->TAG:Ljava/lang/String;

    const-string v10, "Saving alarm notification info"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v7, Ljava/util/HashMap;

    const/16 v9, 0xa

    const/high16 v10, 0x3f800000

    invoke-direct {v7, v9, v10}, Ljava/util/HashMap;-><init>(IF)V

    .line 168
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "background_url"

    move-object/from16 v0, p6

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v9, "icon_big_url"

    move-object/from16 v0, p7

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v9, "icon_small_url"

    move-object/from16 v0, p8

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v9, "title"

    move-object/from16 v0, p4

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v9, "ticker"

    move-object/from16 v0, p5

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v9, "message"

    move-object/from16 v0, p3

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v9, "from"

    sget-object v10, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->TAG:Ljava/lang/String;

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v9, "appIdentifier"

    invoke-interface {v7, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v9, "title_colour"

    const-string v10, "#FFFFFF"

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v9, "message_colour"

    const-string v10, "#FFFFFF"

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-static {p0, v9, v10, v7, v0}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->storeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 180
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-static {p0, v9, v10, v0}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->getAppPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 181
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "delays.entry.total"

    const/4 v10, -0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-gtz v9, :cond_3

    const/4 v5, 0x1

    .line 184
    .local v5, "firstInstall":Z
    :goto_1
    if-eqz v5, :cond_1

    .line 185
    sget-object v9, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "First install saving  "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p9

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " delays"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    move-object/from16 v0, p9

    array-length v9, v0

    new-array v3, v9, [J

    .line 189
    .local v3, "delaysMilliSeconds":[J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 191
    .local v1, "currentDate":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    move-object/from16 v0, p9

    array-length v9, v0

    if-lt v6, v9, :cond_4

    .line 194
    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    .line 196
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 199
    .local v4, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v9, "delays.entry.total"

    array-length v10, v3

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 202
    const/4 v6, 0x0

    :goto_3
    array-length v9, v3

    if-lt v6, v9, :cond_5

    .line 207
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    invoke-static {p0}, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->createAlarmForSBNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 181
    .end local v1    # "currentDate":J
    .end local v3    # "delaysMilliSeconds":[J
    .end local v4    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "firstInstall":Z
    .end local v6    # "i":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 192
    .restart local v1    # "currentDate":J
    .restart local v3    # "delaysMilliSeconds":[J
    .restart local v5    # "firstInstall":Z
    .restart local v6    # "i":I
    :cond_4
    aget-wide v9, p9, v6

    const-wide v11, 0x40f5180000000000L

    mul-double/2addr v9, v11

    const-wide v11, 0x408f400000000000L

    mul-double/2addr v9, v11

    double-to-long v9, v9

    add-long/2addr v9, v1

    aput-wide v9, v3, v6

    .line 191
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 203
    .restart local v4    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "delays.entry."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v10, v3

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v6

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 204
    aget-wide v10, v3, v6

    .line 203
    invoke-interface {v4, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 205
    sget-object v9, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "First install: saving future date : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/util/Date;

    aget-wide v12, v3, v6

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method public static setAlarm(Landroid/content/Context;JLjava/lang/String;Landroid/content/Intent;Ljava/lang/Integer;)Landroid/app/PendingIntent;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dateAsMillisecondFrom01Jan70"    # J
    .param p3, "toastMessage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "uuid"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x1

    .line 120
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, p4, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 123
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 124
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v5, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 127
    if-eqz p3, :cond_0

    .line 128
    invoke-static {p0, p3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 131
    :cond_0
    sget-object v2, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Pending intent created for this date "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_0
    return-object v1

    .line 135
    :cond_1
    sget-object v2, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid value for Alarm date : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v1, 0x0

    goto :goto_0
.end method
