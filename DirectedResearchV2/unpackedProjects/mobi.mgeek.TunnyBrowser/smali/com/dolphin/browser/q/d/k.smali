.class public Lcom/dolphin/browser/q/d/k;
.super Ljava/lang/Object;
.source "Twitter.java"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

.field private e:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

.field private f:Lcom/dolphin/browser/q/d/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "twitter.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".twitter.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "https://twitter.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "https://.twitter.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/q/d/k;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/dolphin/browser/q/d/k;->b:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/dolphin/browser/q/d/k;->c:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify your consumerKey and consumerSecret when instantiating a Twitter object. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    new-instance v0, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-direct {v0, p1, p2}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/d/k;->d:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    .line 53
    new-instance v0, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    const-string v1, "https://twitter.com/oauth/request_token"

    const-string v2, "https://twitter.com/oauth/access_token"

    const-string v3, "https://twitter.com/oauth/authorize"

    invoke-direct {v0, v1, v2, v3}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/d/k;->e:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    .line 60
    new-instance v0, Lcom/dolphin/browser/q/d/ak;

    iget-object v1, p0, Lcom/dolphin/browser/q/d/k;->d:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/q/d/ak;-><init>(Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/d/k;->f:Lcom/dolphin/browser/q/d/ak;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/q/d/k;)Lcom/dolphin/browser/q/d/ak;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/q/d/k;->f:Lcom/dolphin/browser/q/d/ak;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/q/d/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/d/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/q/d/k;Lorg/json/JSONArray;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/q/d/k;->a(Lorg/json/JSONArray;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONArray;II)Ljava/lang/String;
    .locals 4

    .prologue
    .line 279
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 280
    :cond_0
    const/4 v0, 0x0

    .line 292
    :goto_0
    return-object v0

    .line 283
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, p2

    .line 285
    :goto_1
    if-ge v0, v2, :cond_3

    .line 286
    if-eq v0, p2, :cond_2

    .line 287
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 292
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Lcom/dolphin/browser/share/g;)V
    .locals 3

    .prologue
    .line 130
    const-string v0, "Twitter"

    const-string v1, "[Twitter] dialog"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "Error"

    const-string v1, "Application requires permission to access the Internet"

    invoke-static {p1, v0, v1}, Lcom/dolphin/browser/q/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v0, Lcom/dolphin/browser/q/d/s;

    iget-object v1, p0, Lcom/dolphin/browser/q/d/k;->e:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    iget-object v2, p0, Lcom/dolphin/browser/q/d/k;->d:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/dolphin/browser/q/d/s;-><init>(Landroid/content/Context;Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;Lcom/dolphin/browser/share/g;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/q/d/k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/d/k;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 250
    if-eqz p1, :cond_2

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 254
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 255
    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 256
    const-string v5, "screen_name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 258
    new-instance v5, Lcom/dolphin/browser/q/a;

    invoke-direct {v5, v4, v3}, Lcom/dolphin/browser/q/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_1
    const-string v0, "Twitter"

    const-string v2, "getFriendDetails succeed."

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {}, Lcom/dolphin/browser/q/d/z;->b()Lcom/dolphin/browser/q/d/z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/d/z;->a(Ljava/util/List;)V

    .line 264
    :cond_2
    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_id"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v1, p0, Lcom/dolphin/browser/q/d/k;->f:Lcom/dolphin/browser/q/d/ak;

    const-string v2, "users/lookup.json?"

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/q/d/ak;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {p0}, Lcom/dolphin/browser/q/d/k;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    sget-object v0, Lcom/dolphin/browser/q/d/k;->a:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/dolphin/browser/q/d;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/q/d/k;->a(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/q/d/k;->b(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/q/d/k;->d:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v0, v1, v1}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "true"

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/g;)V
    .locals 2

    .prologue
    .line 64
    const-string v0, "Twitter"

    const-string v1, "[Twitter] authorize"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 66
    new-instance v0, Lcom/dolphin/browser/q/d/l;

    invoke-direct {v0, p0, p2, p2}, Lcom/dolphin/browser/q/d/l;-><init>(Lcom/dolphin/browser/q/d/k;Lcom/dolphin/browser/share/g;Lcom/dolphin/browser/share/g;)V

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/q/d/k;->b(Landroid/content/Context;Lcom/dolphin/browser/share/g;)V

    .line 94
    return-void
.end method

.method public a(Lcom/dolphin/browser/q/d/r;Lcom/dolphin/browser/share/g;)V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lcom/dolphin/browser/q/d/n;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/q/d/n;-><init>(Lcom/dolphin/browser/q/d/k;Lcom/dolphin/browser/q/d/r;)V

    .line 189
    iget-object v1, p0, Lcom/dolphin/browser/q/d/k;->f:Lcom/dolphin/browser/q/d/ak;

    invoke-virtual {v1, v0, p2}, Lcom/dolphin/browser/q/d/ak;->a(Lcom/dolphin/browser/q/d/d;Lcom/dolphin/browser/share/g;)V

    .line 190
    return-void
.end method

.method public a(Lcom/dolphin/browser/share/g;)V
    .locals 4

    .prologue
    .line 193
    const-string v0, "Twitter"

    const-string v1, "getFriendIds start ... "

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Lcom/dolphin/browser/q/d/o;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/q/d/o;-><init>(Lcom/dolphin/browser/q/d/k;)V

    .line 209
    iget-object v1, p0, Lcom/dolphin/browser/q/d/k;->f:Lcom/dolphin/browser/q/d/ak;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/dolphin/browser/q/d/ak;->a(ILcom/dolphin/browser/q/d/d;Lcom/dolphin/browser/share/g;Z)V

    .line 212
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/dolphin/browser/q/d/k;->b:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/dolphin/browser/share/g;)V
    .locals 2

    .prologue
    .line 155
    const-string v0, "Twitter"

    const-string v1, "postMessage start.."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Lcom/dolphin/browser/q/d/m;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/q/d/m;-><init>(Lcom/dolphin/browser/q/d/k;Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/dolphin/browser/q/d/k;->f:Lcom/dolphin/browser/q/d/ak;

    invoke-virtual {v1, v0, p2}, Lcom/dolphin/browser/q/d/ak;->a(Lcom/dolphin/browser/q/d/d;Lcom/dolphin/browser/share/g;)V

    .line 173
    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 5

    .prologue
    .line 215
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const-string v0, "Twitter"

    const-string v1, "getFriendDetails start ... "

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Lcom/dolphin/browser/q/d/p;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/q/d/p;-><init>(Lcom/dolphin/browser/q/d/k;Lorg/json/JSONArray;)V

    .line 244
    iget-object v1, p0, Lcom/dolphin/browser/q/d/k;->f:Lcom/dolphin/browser/q/d/ak;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/dolphin/browser/q/d/ak;->a(ILcom/dolphin/browser/q/d/d;Lcom/dolphin/browser/share/g;Z)V

    goto :goto_0
.end method

.method public declared-synchronized a()Z
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/q/d/k;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/q/d/k;->c()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/q/d/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/dolphin/browser/share/g;)V
    .locals 4

    .prologue
    .line 296
    const-string v0, "Twitter"

    const-string v1, "getUserName start ... "

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v0, Lcom/dolphin/browser/q/d/q;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/q/d/q;-><init>(Lcom/dolphin/browser/q/d/k;)V

    .line 313
    iget-object v1, p0, Lcom/dolphin/browser/q/d/k;->f:Lcom/dolphin/browser/q/d/ak;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/dolphin/browser/q/d/ak;->a(ILcom/dolphin/browser/q/d/d;Lcom/dolphin/browser/share/g;Z)V

    .line 316
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/dolphin/browser/q/d/k;->c:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/q/d/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/q/d/k;->d:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    iget-object v1, p0, Lcom/dolphin/browser/q/d/k;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/q/d/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method
