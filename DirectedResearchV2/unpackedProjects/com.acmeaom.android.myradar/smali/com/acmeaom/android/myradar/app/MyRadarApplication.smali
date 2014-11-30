.class public Lcom/acmeaom/android/myradar/app/MyRadarApplication;
.super Landroid/app/Application;
.source "ProGuard"


# static fields
.field public static a:Landroid/content/Context;

.field private static b:Lcom/google/android/a/a/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x1f

    return v0
.end method

.method static synthetic a(Lcom/acmeaom/android/myradar/app/MyRadarApplication;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->d()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->b:Lcom/google/android/a/a/i;

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->b:Lcom/google/android/a/a/i;

    invoke-virtual {v0, p0}, Lcom/google/android/a/a/i;->a(Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->b:Lcom/google/android/a/a/i;

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->b:Lcom/google/android/a/a/i;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 195
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->b:Lcom/google/android/a/a/i;

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->b:Lcom/google/android/a/a/i;

    invoke-virtual {v0}, Lcom/google/android/a/a/i;->b()Z

    .line 183
    :cond_0
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->b:Lcom/google/android/a/a/i;

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->b:Lcom/google/android/a/a/i;

    invoke-virtual {v0}, Lcom/google/android/a/a/i;->d()V

    .line 189
    :cond_0
    return-void
.end method

.method private d()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x3

    const/4 v2, 0x1

    .line 111
    const-string v0, "https://s.mrsv.co/wu4.ashx?a=3"

    .line 113
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 114
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 117
    const/16 v4, 0xc8

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    if-ne v4, v1, :cond_0

    .line 118
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 120
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const-string v0, "\\|"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 129
    array-length v0, v5

    if-lt v0, v8, :cond_6

    .line 130
    const-string v0, "kDynamicURLsKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 134
    const/4 v1, 0x0

    aget-object v6, v5, v1

    .line 135
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v3, v2

    .line 139
    :cond_2
    const/4 v1, 0x1

    aget-object v6, v5, v1

    .line 140
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v3, v2

    .line 144
    :cond_3
    const/4 v1, 0x2

    aget-object v6, v5, v1

    .line 145
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    .line 149
    :goto_1
    array-length v3, v5

    if-le v3, v8, :cond_4

    .line 150
    const/4 v3, 0x3

    aget-object v3, v5, v3

    .line 151
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 158
    :goto_2
    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 162
    const v1, 0x7f0b0040

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/f;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_2
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 51
    sput-object p0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    .line 53
    const v0, 0x7f040004

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 54
    const v0, 0x7f040007

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 55
    const v0, 0x7f040002

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 56
    const v0, 0x7f040005

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 57
    const v0, 0x7f040006

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 58
    invoke-static {}, Lcom/acmeaom/android/a/f/g;->a()V

    .line 63
    :try_start_0
    invoke-static {}, Lcom/google/android/a/a/i;->a()Lcom/google/android/a/a/i;

    move-result-object v0

    sput-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->b:Lcom/google/android/a/a/i;

    .line 64
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->b:Lcom/google/android/a/a/i;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->b:Lcom/google/android/a/a/i;

    const-string v1, "UA-31181662-1"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/a/a/i;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 66
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->b:Lcom/google/android/a/a/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/i;->a(Z)V

    .line 67
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->b:Lcom/google/android/a/a/i;

    const-string v1, "Application"

    const-string v2, "onCreate"

    const-string v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->b:Lcom/google/android/a/a/i;

    const-string v1, "/MyRadarApplicationHomeScreen"

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    sget-object v0, Lcom/acmeaom/android/a/c/b;->a:Lcom/acmeaom/android/a/c/b;

    const-wide v1, 0x12a05f200L

    invoke-static {v0, v1, v2}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/b;J)Lcom/acmeaom/android/a/c/j;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/acmeaom/android/a/c/a;->a(IJ)Lcom/acmeaom/android/a/c/c;

    move-result-object v1

    new-instance v2, Lcom/acmeaom/android/myradar/app/f;

    invoke-direct {v2, p0}, Lcom/acmeaom/android/myradar/app/f;-><init>(Lcom/acmeaom/android/myradar/app/MyRadarApplication;)V

    invoke-static {v0, v1, v2}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/j;Lcom/acmeaom/android/a/c/c;Ljava/lang/Runnable;)V

    .line 87
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->b:Lcom/google/android/a/a/i;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->b:Lcom/google/android/a/a/i;

    invoke-virtual {v0}, Lcom/google/android/a/a/i;->d()V

    .line 94
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 95
    return-void
.end method
