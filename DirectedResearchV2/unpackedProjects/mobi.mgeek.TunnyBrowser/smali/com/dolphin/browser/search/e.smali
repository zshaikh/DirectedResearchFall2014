.class public Lcom/dolphin/browser/search/e;
.super Ljava/lang/Object;
.source "OpenSearchSearchEngine.java"

# interfaces
.implements Lcom/dolphin/browser/search/g;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final c:Lcom/dolphin/browser/search/b/b;

.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "suggest_intent_query"

    aput-object v1, v0, v3

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v5

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v6

    sput-object v0, Lcom/dolphin/browser/search/e;->a:[Ljava/lang/String;

    .line 64
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "suggest_intent_query"

    aput-object v1, v0, v3

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v5

    sput-object v0, Lcom/dolphin/browser/search/e;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/search/b/b;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/dolphin/browser/search/e;->d:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/dolphin/browser/search/e;->c:Lcom/dolphin/browser/search/b/b;

    .line 77
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 148
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 151
    const-string v1, "search_suggest_query"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 153
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 155
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/search/e;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 162
    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/e;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 207
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 209
    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 212
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/dolphin/browser/search/e;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/dolphin/browser/search/e;->b:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 97
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-object v0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/search/e;->c:Lcom/dolphin/browser/search/b/b;

    invoke-virtual {v1, p2}, Lcom/dolphin/browser/search/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    invoke-static {v1}, Lcom/dolphin/browser/util/URIUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    invoke-direct {p0, v1, p2}, Lcom/dolphin/browser/search/e;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_2
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/e;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 112
    const-string v1, "OpenSearchSearchEngine"

    const-string v2, "Not connected to network."

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/search/c/c;->a()Lcom/dolphin/browser/search/c/c;

    move-result-object v2

    const-string v3, "search_suggestion"

    invoke-virtual {v2, v1, v3}, Lcom/dolphin/browser/search/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/search/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_0

    .line 128
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 129
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 131
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-le v1, v4, :cond_5

    .line 132
    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v0

    .line 139
    :goto_1
    new-instance v1, Lcom/dolphin/browser/search/f;

    invoke-direct {v1, v3, v2}, Lcom/dolphin/browser/search/f;-><init>(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    const-string v2, "OpenSearchSearchEngine"

    const-string v3, "Error"

    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    move-object v2, v1

    goto :goto_1

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/search/e;->c:Lcom/dolphin/browser/search/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/search/e;->c:Lcom/dolphin/browser/search/b/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/search/e;->c:Lcom/dolphin/browser/search/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/search/e;->c:Lcom/dolphin/browser/search/b/b;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/search/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/search/e;->c:Lcom/dolphin/browser/search/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/search/e;->c:Lcom/dolphin/browser/search/b/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 173
    new-instance v1, Lcom/dolphin/browser/Network/h;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    const-string v2, "BizSearch"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v1

    .line 176
    :try_start_0
    invoke-virtual {v1}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 177
    :try_start_1
    iget-object v1, v2, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 178
    const/16 v3, 0xc8

    if-ne v3, v1, :cond_0

    .line 179
    iget-object v1, v2, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v1}, Lcom/dolphin/browser/Network/l;->d(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 184
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    .line 187
    :goto_0
    return-object v0

    .line 184
    :cond_0
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 182
    :goto_1
    :try_start_2
    const-string v3, "OpenSearchSearchEngine"

    const-string v4, "Error"

    invoke-static {v3, v4, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 181
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dolphin/browser/search/e;->c:Lcom/dolphin/browser/search/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/search/e;->c:Lcom/dolphin/browser/search/b/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->h()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenSearchSearchEngine{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/search/e;->c:Lcom/dolphin/browser/search/b/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
