.class public Lcom/dolphin/browser/s/b;
.super Ljava/lang/Object;
.source "SparkManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/s/b;


# instance fields
.field private b:Lcom/dolphin/browser/s/i;

.field private c:Lcom/dolphin/browser/s/k;

.field private d:Lcom/dolphin/browser/s/g;

.field private e:Lcom/dolphin/browser/s/m;

.field private f:Landroid/content/Context;

.field private g:Landroid/content/SharedPreferences;

.field private h:Lcom/dolphin/browser/s/p;

.field private i:Lcom/dolphin/browser/s/q;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/dolphin/browser/s/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/s/c;-><init>(Lcom/dolphin/browser/s/b;)V

    iput-object v0, p0, Lcom/dolphin/browser/s/b;->b:Lcom/dolphin/browser/s/i;

    .line 112
    new-instance v0, Lcom/dolphin/browser/s/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/s/d;-><init>(Lcom/dolphin/browser/s/b;)V

    iput-object v0, p0, Lcom/dolphin/browser/s/b;->c:Lcom/dolphin/browser/s/k;

    .line 137
    new-instance v0, Lcom/dolphin/browser/s/e;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/s/e;-><init>(Lcom/dolphin/browser/s/b;)V

    iput-object v0, p0, Lcom/dolphin/browser/s/b;->d:Lcom/dolphin/browser/s/g;

    .line 154
    new-instance v0, Lcom/dolphin/browser/s/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/s/f;-><init>(Lcom/dolphin/browser/s/b;)V

    iput-object v0, p0, Lcom/dolphin/browser/s/b;->e:Lcom/dolphin/browser/s/m;

    .line 174
    iput-object p1, p0, Lcom/dolphin/browser/s/b;->f:Landroid/content/Context;

    .line 175
    const-string v0, "pref_spark"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/s/b;->g:Landroid/content/SharedPreferences;

    .line 176
    invoke-virtual {p0}, Lcom/dolphin/browser/s/b;->b()Lcom/dolphin/browser/s/q;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/s/b;->i:Lcom/dolphin/browser/s/q;

    .line 177
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/s/b;Ljava/util/List;Ljava/lang/String;)Lcom/dolphin/browser/Network/d;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/s/b;->a(Ljava/util/List;Ljava/lang/String;)Lcom/dolphin/browser/Network/d;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Lcom/dolphin/browser/Network/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dolphin/browser/Network/d;"
        }
    .end annotation

    .prologue
    .line 541
    new-instance v0, Lcom/dolphin/browser/Network/h;

    invoke-direct {v0, p2}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->a(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const-string v1, "Spark"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->b(I)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->a(I)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/dolphin/browser/s/b;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/dolphin/browser/s/b;->a:Lcom/dolphin/browser/s/b;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/dolphin/browser/s/b;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/s/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/s/b;->a:Lcom/dolphin/browser/s/b;

    .line 93
    :cond_0
    sget-object v0, Lcom/dolphin/browser/s/b;->a:Lcom/dolphin/browser/s/b;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/s/b;Lcom/dolphin/browser/s/p;)Lcom/dolphin/browser/s/p;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/dolphin/browser/s/b;->h:Lcom/dolphin/browser/s/p;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/s/b;)Lcom/dolphin/browser/s/q;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/s/b;->i:Lcom/dolphin/browser/s/q;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/s/b;Lcom/dolphin/browser/s/q;)Lcom/dolphin/browser/s/q;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/dolphin/browser/s/b;->i:Lcom/dolphin/browser/s/q;

    return-object p1
.end method

.method static synthetic b(Lcom/dolphin/browser/s/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dolphin/browser/s/b;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/s/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dolphin/browser/s/b;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    .line 553
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 554
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pn"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "versioncode"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getVersionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "chn"

    invoke-static {}, Lcom/dolphin/browser/util/ao;->a()Lcom/dolphin/browser/util/ao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolphin/browser/util/ao;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "clientid"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getClientGUID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    return-object v1
.end method

.method private h()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    .line 563
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 564
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pn"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "vn"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getVersionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "chn"

    invoke-static {}, Lcom/dolphin/browser/util/ao;->a()Lcom/dolphin/browser/util/ao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolphin/browser/util/ao;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "uid"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getClientGUID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "locale"

    iget-object v3, p0, Lcom/dolphin/browser/s/b;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/dolphin/browser/util/bj;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    return-object v1
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/s/q;)V
    .locals 4

    .prologue
    .line 180
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/s/b;->g:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_key_share_dolphin_task"

    invoke-static {p1}, Lcom/dolphin/browser/s/q;->a(Lcom/dolphin/browser/s/q;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 181
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 225
    const-string v1, "SparkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logReferrerAsync E, referrer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v1, Lcom/dolphin/browser/s/o;

    invoke-direct {v1, p0, p1, v0, v0}, Lcom/dolphin/browser/s/o;-><init>(Lcom/dolphin/browser/s/b;Ljava/lang/String;Lcom/dolphin/browser/s/n;Lcom/dolphin/browser/s/c;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 227
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 201
    const-string v0, "spark"

    invoke-static {v0, p1, p2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 230
    const-string v0, "SparkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchShortUrlAsync E, taskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", plainText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Lcom/dolphin/browser/s/h;

    const-string v7, "*"

    iget-object v8, p0, Lcom/dolphin/browser/s/b;->d:Lcom/dolphin/browser/s/g;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    move-object v6, p3

    move-object v9, v3

    invoke-direct/range {v0 .. v9}, Lcom/dolphin/browser/s/h;-><init>(Lcom/dolphin/browser/s/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/s/g;Lcom/dolphin/browser/s/c;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    check-cast v3, Ljava/lang/Void;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 232
    return-void
.end method

.method public b()Lcom/dolphin/browser/s/q;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/dolphin/browser/s/b;->g:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_share_dolphin_task"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/dolphin/browser/s/q;->b(Ljava/lang/String;)Lcom/dolphin/browser/s/q;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 220
    const-string v0, "SparkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchSparkTaskAsync E, taskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Lcom/dolphin/browser/s/l;

    iget-object v4, p0, Lcom/dolphin/browser/s/b;->c:Lcom/dolphin/browser/s/k;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/s/l;-><init>(Lcom/dolphin/browser/s/b;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/s/k;Lcom/dolphin/browser/s/c;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    check-cast v5, Ljava/lang/Void;

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 222
    return-void
.end method

.method public c()Lcom/dolphin/browser/s/q;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/s/b;->i:Lcom/dolphin/browser/s/q;

    return-object v0
.end method

.method public d()Lcom/dolphin/browser/s/p;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/dolphin/browser/s/b;->h:Lcom/dolphin/browser/s/p;

    return-object v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "SparkManager"

    const-string v1, "fetchSparkSettingsAsyncIfNeeded E"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/dolphin/browser/s/b;->i:Lcom/dolphin/browser/s/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/s/b;->i:Lcom/dolphin/browser/s/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/s/q;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "SparkManager"

    const-string v1, "share task is confirmed, skip"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/s/b;->f()V

    goto :goto_0
.end method

.method public f()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 215
    const-string v1, "SparkManager"

    const-string v2, "fetchSparkSettingsAsync E"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v1, Lcom/dolphin/browser/s/j;

    iget-object v2, p0, Lcom/dolphin/browser/s/b;->b:Lcom/dolphin/browser/s/i;

    invoke-direct {v1, p0, v2, v0}, Lcom/dolphin/browser/s/j;-><init>(Lcom/dolphin/browser/s/b;Lcom/dolphin/browser/s/i;Lcom/dolphin/browser/s/c;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 217
    return-void
.end method
