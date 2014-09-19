.class final Lcom/fusepowered/m1/android/MMConversionTracker;
.super Ljava/lang/Object;
.source "MMConversionTracker.java"


# static fields
.field private static final KEY_REFERRER:Ljava/lang/String; = "installReferrer"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized trackConversion(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m1/android/MMRequest;)V
    .locals 11
    .parameter "context"
    .parameter "goalId"
    .parameter "request"

    .prologue
    .line 30
    const-class v8, Lcom/fusepowered/m1/android/MMConversionTracker;

    monitor-enter v8

    const-wide/16 v3, 0x0

    .line 34
    .local v3, installTime:J
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-wide p0, v3

    .line 120
    .end local v3           #installTime:J
    .end local p1
    .end local p2
    .local p0, installTime:J
    :goto_0
    monitor-exit v8

    return-void

    .line 37
    .restart local v3       #installTime:J
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .restart local p2
    :cond_1
    :try_start_1
    const-string v0, "MillennialMediaSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 38
    .local v7, settings:Landroid/content/SharedPreferences;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firstLaunch_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 39
    .local v2, isFirstLaunch:Z
    const-string v0, "installReferrer"

    const/4 v1, 0x0

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, referrerString:Ljava/lang/String;
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 42
    .local v5, extraParams:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    .line 44
    invoke-virtual {p2, v5}, Lcom/fusepowered/m1/android/MMRequest;->getUrlParams(Ljava/util/Map;)V

    .line 45
    invoke-static {v5}, Lcom/fusepowered/m1/android/MMRequest;->insertLocation(Ljava/util/Map;)V

    .line 47
    :cond_2
    if-eqz v0, :cond_4

    .line 52
    const-string p2, "&"

    .end local p2
    invoke-virtual {v0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 53
    .local p2, components:[Ljava/lang/String;
    move-object p2, p2

    .local p2, arr$:[Ljava/lang/String;
    array-length v1, p2

    .local v1, len$:I
    const/4 v0, 0x0

    .local v0, i$:I
    :goto_1
    if-ge v0, v1, :cond_4

    aget-object v6, p2, v0

    .line 55
    .local v6, param:Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, subComponents:[Ljava/lang/String;
    array-length v9, v6

    const/4 v10, 0x2

    if-lt v9, v10, :cond_3

    .line 57
    const/4 v9, 0x0

    aget-object v9, v6, v9

    const/4 v10, 0x1

    aget-object v6, v6, v10

    .end local v6           #subComponents:[Ljava/lang/String;
    invoke-virtual {v5, v9, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    .end local v0           #i$:I
    .end local v1           #len$:I
    .end local p2           #arr$:[Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_5

    .line 63
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 64
    .local p2, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firstLaunch_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    .end local p2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 73
    .local v0, info:Landroid/content/pm/PackageInfo;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v1, "firstInstallTime"

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 74
    .local p2, field:Ljava/lang/reflect/Field;
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v0

    .line 84
    .end local v3           #installTime:J
    .end local p2           #field:Ljava/lang/reflect/Field;
    .local v0, installTime:J
    :goto_2
    const-wide/16 v3, 0x0

    cmp-long p2, v0, v3

    if-lez p2, :cond_7

    .line 86
    :try_start_4
    new-instance p2, Ljava/util/GregorianCalendar;

    invoke-direct {p2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 87
    .local p2, calendar:Ljava/util/GregorianCalendar;
    invoke-virtual {p2, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 88
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 89
    invoke-virtual {p2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-wide v0

    move-wide v6, v0

    .line 92
    .end local v0           #installTime:J
    .end local v7           #settings:Landroid/content/SharedPreferences;
    .end local p2           #calendar:Ljava/util/GregorianCalendar;
    .local v6, installTime:J
    :goto_3
    move-wide v3, v6

    .line 93
    .local v3, installTimeUTC:J
    :try_start_5
    invoke-static {p0}, Lcom/fusepowered/m1/android/MMSDK;->isConnected(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 95
    const-string p2, "ua"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string p2, "apid"

    sget-object v0, Lcom/fusepowered/m1/android/HandShake;->apid:Ljava/lang/String;

    invoke-virtual {v5, p2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {p0, v5}, Lcom/fusepowered/m1/android/MMSDK;->insertUrlCommonValues(Landroid/content/Context;Ljava/util/Map;)V

    .line 99
    new-instance v0, Lcom/fusepowered/m1/android/MMConversionTracker$1;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/m1/android/MMConversionTracker$1;-><init>(Ljava/lang/String;ZJLjava/util/TreeMap;)V

    invoke-static {v0}, Lcom/fusepowered/m1/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .end local p0           #context:Landroid/content/Context;
    :goto_4
    move-wide p0, v6

    .line 120
    .end local v6           #installTime:J
    .end local p1
    .local p0, installTime:J
    goto/16 :goto_0

    .line 76
    .local v0, info:Landroid/content/pm/PackageInfo;
    .local v3, installTime:J
    .restart local v7       #settings:Landroid/content/SharedPreferences;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :catch_0
    move-exception p2

    move-wide v0, v3

    .end local v3           #installTime:J
    .local v0, installTime:J
    goto :goto_2

    .line 80
    .end local v0           #installTime:J
    .restart local v3       #installTime:J
    :catch_1
    move-exception p2

    move-wide v0, v3

    .end local v3           #installTime:J
    .restart local v0       #installTime:J
    goto :goto_2

    .line 118
    .end local v0           #installTime:J
    .end local v7           #settings:Landroid/content/SharedPreferences;
    .local v3, installTimeUTC:J
    .restart local v6       #installTime:J
    :cond_6
    const-string p0, "No network available for conversion tracking."

    .end local p0           #context:Landroid/content/Context;
    invoke-static {p0}, Lcom/fusepowered/m1/android/MMSDK$Log;->w(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 30
    :catchall_0
    move-exception p0

    move-object p2, p0

    move-wide p0, v6

    .end local v2           #isFirstLaunch:Z
    .end local v3           #installTimeUTC:J
    .end local v5           #extraParams:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #installTime:J
    .end local p1
    .local p0, installTime:J
    :goto_5
    monitor-exit v8

    throw p2

    .local v3, installTime:J
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :catchall_1
    move-exception p0

    move-object p2, p0

    move-wide p0, v3

    .end local v3           #installTime:J
    .end local p1
    .local p0, installTime:J
    goto :goto_5

    .restart local v0       #installTime:J
    .restart local v2       #isFirstLaunch:Z
    .restart local v5       #extraParams:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7       #settings:Landroid/content/SharedPreferences;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :catchall_2
    move-exception p0

    move-object p2, p0

    move-wide p0, v0

    .end local v0           #installTime:J
    .end local p1
    .local p0, installTime:J
    goto :goto_5

    .restart local v0       #installTime:J
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :cond_7
    move-wide v6, v0

    .end local v0           #installTime:J
    .end local v7           #settings:Landroid/content/SharedPreferences;
    .restart local v6       #installTime:J
    goto :goto_3
.end method
