.class public Lam/sunrise/android/calendar/c;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 116
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 117
    const/4 v1, 0x0

    const/4 v2, 0x7

    aput v2, v0, v1

    .line 118
    aput v3, v0, v3

    .line 119
    aput v4, v0, v4

    .line 120
    sput-object v0, Lam/sunrise/android/calendar/c;->a:[I

    .line 121
    return-void
.end method

.method private static a(Landroid/content/res/Resources;II)I
    .locals 4

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 249
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 250
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    :goto_1
    return v0

    .line 249
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 33
    return-void
.end method

.method public static a(Landroid/content/Context;Lam/sunrise/android/calendar/api/models/datas/Profile;)V
    .locals 14

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 78
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-wide/16 v1, 0x270f

    .line 87
    iget-object v3, p1, Lam/sunrise/android/calendar/api/models/datas/Profile;->connections:[Lam/sunrise/android/calendar/api/models/datas/Connection;

    invoke-static {v3}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 88
    iget-object v7, p1, Lam/sunrise/android/calendar/api/models/datas/Profile;->connections:[Lam/sunrise/android/calendar/api/models/datas/Connection;

    array-length v8, v7

    move v4, v5

    move-object v3, v0

    :goto_1
    if-ge v4, v8, :cond_5

    aget-object v6, v7, v4

    .line 89
    iget-object v9, v6, Lam/sunrise/android/calendar/api/models/datas/Connection;->calendars:[Lam/sunrise/android/calendar/api/models/datas/Calendar;

    invoke-static {v9}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 90
    iget-object v9, v6, Lam/sunrise/android/calendar/api/models/datas/Connection;->calendars:[Lam/sunrise/android/calendar/api/models/datas/Calendar;

    array-length v10, v9

    move v6, v5

    :goto_2
    if-ge v6, v10, :cond_3

    aget-object v11, v9, v6

    .line 91
    iget-boolean v12, v11, Lam/sunrise/android/calendar/api/models/datas/Calendar;->isWritable:Z

    if-eqz v12, :cond_2

    .line 92
    iget-object v12, v11, Lam/sunrise/android/calendar/api/models/datas/Calendar;->defaults:Lam/sunrise/android/calendar/api/models/datas/Calendar$Defaults;

    if-eqz v12, :cond_2

    .line 93
    iget-object v12, v11, Lam/sunrise/android/calendar/api/models/datas/Calendar;->defaults:Lam/sunrise/android/calendar/api/models/datas/Calendar$Defaults;

    iget-wide v12, v12, Lam/sunrise/android/calendar/api/models/datas/Calendar$Defaults;->priority:J

    cmp-long v12, v12, v1

    if-gez v12, :cond_2

    .line 94
    iget-object v0, v11, Lam/sunrise/android/calendar/api/models/datas/Calendar;->defaults:Lam/sunrise/android/calendar/api/models/datas/Calendar$Defaults;

    iget-wide v1, v0, Lam/sunrise/android/calendar/api/models/datas/Calendar$Defaults;->priority:J

    .line 95
    iget-object v3, v11, Lam/sunrise/android/calendar/api/models/datas/Calendar;->id:Ljava/lang/String;

    .line 96
    iget-object v0, v11, Lam/sunrise/android/calendar/api/models/datas/Calendar;->title:Ljava/lang/String;

    .line 90
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 88
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object v3, v0

    .line 105
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-static {p0, v0, v3}, Lam/sunrise/android/calendar/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 4

    .prologue
    .line 470
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 471
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lam/sunrise/android/calendar/c;->a(Landroid/content/res/Resources;II)I

    move-result v0

    .line 473
    const/4 v1, 0x0

    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    .line 477
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 478
    const/4 v0, 0x0

    .line 483
    :goto_0
    if-nez v0, :cond_1

    .line 484
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 489
    :cond_1
    return-void

    .line 480
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 59
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_calendar"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_calendar_id"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 124
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "week_start"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_run"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 41
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    const-string v1, "first_run"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 46
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_sync"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 51
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    const-string v1, "first_sync"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    const-string v1, "default_calendar"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    const-string v1, "default_calendar_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 129
    const-string v1, "week_start"

    const/4 v2, 0x0

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 133
    :cond_0
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    move v3, v0

    .line 142
    :goto_0
    if-nez v3, :cond_1

    .line 143
    :goto_1
    sget-object v3, Lam/sunrise/android/calendar/c;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 144
    sget-object v3, Lam/sunrise/android/calendar/c;->a:[I

    aget v3, v3, v0

    if-ne v3, v2, :cond_5

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "week_start"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    :cond_1
    return-void

    .line 135
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 136
    if-ltz v2, :cond_3

    sget-object v3, Lam/sunrise/android/calendar/c;->a:[I

    array-length v3, v3

    if-lt v2, v3, :cond_4

    .line 137
    :cond_3
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    move v3, v0

    goto :goto_0

    .line 139
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 143
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method public static i(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 159
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 161
    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    .line 174
    :goto_0
    return v0

    .line 164
    :cond_0
    const-string v1, "week_start"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 166
    :cond_1
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    goto :goto_0

    .line 169
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 170
    if-ltz v0, :cond_3

    sget-object v1, Lam/sunrise/android/calendar/c;->a:[I

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 171
    :cond_3
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    goto :goto_0

    .line 174
    :cond_4
    sget-object v1, Lam/sunrise/android/calendar/c;->a:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 181
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 182
    const-string v0, "US"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 184
    :goto_0
    const-string v2, "weather"

    const/4 v3, 0x0

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    const/4 v3, 0x0

    .line 187
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    move v1, v3

    .line 197
    :goto_1
    if-nez v1, :cond_1

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "weather"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 204
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 182
    goto :goto_0

    .line 190
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 191
    if-ltz v2, :cond_4

    const/4 v5, 0x3

    if-lt v2, v5, :cond_5

    :cond_4
    move v1, v3

    .line 192
    goto :goto_1

    :cond_5
    move v0, v2

    .line 194
    goto :goto_1
.end method

.method public static k(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 207
    const-string v0, "US"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 210
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 212
    if-nez v1, :cond_2

    .line 225
    :cond_0
    :goto_1
    return v0

    .line 207
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 215
    :cond_2
    const-string v2, "weather"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 221
    if-ltz v1, :cond_0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    move v0, v1

    .line 225
    goto :goto_1
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 234
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->k(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 238
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->k(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static n(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 259
    const-string v0, "default_reminder_value"

    const v1, 0x7f080005

    const v2, 0x7f0f002a

    invoke-static {p0, v0, v1, v2}, Lam/sunrise/android/calendar/c;->a(Landroid/content/Context;Ljava/lang/String;II)V

    .line 261
    return-void
.end method

.method public static o(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 264
    const-string v0, "allday_reminder_value"

    const v1, 0x7f080001

    const v2, 0x7f0f00b4

    invoke-static {p0, v0, v1, v2}, Lam/sunrise/android/calendar/c;->a(Landroid/content/Context;Ljava/lang/String;II)V

    .line 266
    return-void
.end method

.method public static p(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 269
    const-string v0, "birthdays_reminder_value"

    const v1, 0x7f080003

    const v2, 0x7f0f016a

    invoke-static {p0, v0, v1, v2}, Lam/sunrise/android/calendar/c;->a(Landroid/content/Context;Ljava/lang/String;II)V

    .line 271
    return-void
.end method

.method public static q(Landroid/content/Context;)Lam/sunrise/android/calendar/g;
    .locals 3

    .prologue
    .line 335
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 336
    const-string v1, "default_reminder_value"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 338
    :cond_0
    sget-object v0, Lam/sunrise/android/calendar/g;->d:Lam/sunrise/android/calendar/g;

    .line 346
    :goto_0
    return-object v0

    .line 341
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 342
    if-ltz v0, :cond_2

    invoke-static {}, Lam/sunrise/android/calendar/g;->values()[Lam/sunrise/android/calendar/g;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 343
    :cond_2
    sget-object v0, Lam/sunrise/android/calendar/g;->d:Lam/sunrise/android/calendar/g;

    goto :goto_0

    .line 346
    :cond_3
    invoke-static {v0}, Lam/sunrise/android/calendar/g;->a(I)Lam/sunrise/android/calendar/g;

    move-result-object v0

    goto :goto_0
.end method

.method public static r(Landroid/content/Context;)Lam/sunrise/android/calendar/d;
    .locals 3

    .prologue
    .line 395
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 396
    const-string v1, "allday_reminder_value"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 398
    :cond_0
    sget-object v0, Lam/sunrise/android/calendar/d;->d:Lam/sunrise/android/calendar/d;

    .line 406
    :goto_0
    return-object v0

    .line 401
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 402
    if-ltz v0, :cond_2

    invoke-static {}, Lam/sunrise/android/calendar/g;->values()[Lam/sunrise/android/calendar/g;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 403
    :cond_2
    sget-object v0, Lam/sunrise/android/calendar/d;->d:Lam/sunrise/android/calendar/d;

    goto :goto_0

    .line 406
    :cond_3
    int-to-long v0, v0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/d;->a(J)Lam/sunrise/android/calendar/d;

    move-result-object v0

    goto :goto_0
.end method

.method public static s(Landroid/content/Context;)Lam/sunrise/android/calendar/f;
    .locals 3

    .prologue
    .line 454
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 455
    const-string v1, "birthdays_reminder_value"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 457
    :cond_0
    sget-object v0, Lam/sunrise/android/calendar/f;->e:Lam/sunrise/android/calendar/f;

    .line 465
    :goto_0
    return-object v0

    .line 460
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 461
    if-ltz v0, :cond_2

    invoke-static {}, Lam/sunrise/android/calendar/g;->values()[Lam/sunrise/android/calendar/g;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 462
    :cond_2
    sget-object v0, Lam/sunrise/android/calendar/f;->e:Lam/sunrise/android/calendar/f;

    goto :goto_0

    .line 465
    :cond_3
    int-to-long v0, v0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/f;->a(J)Lam/sunrise/android/calendar/f;

    move-result-object v0

    goto :goto_0
.end method

.method public static t(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 531
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 532
    const-string v0, "refresh_rate"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    const/4 v1, 0x0

    .line 535
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 536
    :cond_0
    sget-object v0, Lam/sunrise/android/calendar/b;->a:Lam/sunrise/android/calendar/e;

    .line 546
    :goto_0
    if-nez v1, :cond_1

    .line 547
    if-eqz v0, :cond_1

    .line 548
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "refresh_rate"

    invoke-virtual {v0}, Lam/sunrise/android/calendar/e;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 554
    :cond_1
    return-void

    .line 538
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lam/sunrise/android/calendar/e;->a(I)Lam/sunrise/android/calendar/e;

    move-result-object v0

    .line 540
    if-nez v0, :cond_3

    .line 541
    sget-object v0, Lam/sunrise/android/calendar/b;->a:Lam/sunrise/android/calendar/e;

    goto :goto_0

    .line 543
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static u(Landroid/content/Context;)Lam/sunrise/android/calendar/e;
    .locals 3

    .prologue
    .line 557
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 558
    const-string v1, "refresh_rate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 560
    :cond_0
    sget-object v0, Lam/sunrise/android/calendar/b;->a:Lam/sunrise/android/calendar/e;

    .line 566
    :cond_1
    :goto_0
    return-object v0

    .line 563
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lam/sunrise/android/calendar/e;->a(I)Lam/sunrise/android/calendar/e;

    move-result-object v0

    .line 566
    if-nez v0, :cond_1

    sget-object v0, Lam/sunrise/android/calendar/b;->a:Lam/sunrise/android/calendar/e;

    goto :goto_0
.end method
