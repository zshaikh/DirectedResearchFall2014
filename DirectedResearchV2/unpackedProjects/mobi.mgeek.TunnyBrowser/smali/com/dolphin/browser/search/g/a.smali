.class public Lcom/dolphin/browser/search/g/a;
.super Ljava/lang/Object;
.source "PushedUrlModifyStrategyLoader.java"


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/g/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0}, Lcom/dolphin/browser/search/g/a;->d()V

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/search/g/b;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/dolphin/browser/search/g/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/search/g/a;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/dolphin/browser/search/g/c;->a()Lcom/dolphin/browser/search/g/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/g/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 66
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 69
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 70
    new-instance v3, Lcom/dolphin/browser/search/g/f;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/dolphin/browser/search/g/f;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 72
    :catch_0
    move-exception v1

    .line 73
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/dolphin/browser/search/g/a;->e()Ljava/io/File;

    move-result-object v0

    .line 49
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v0, "utf-8"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/IOUtilities;->loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/dolphin/browser/search/g/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/g/a;->b:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :catch_1
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private e()Ljava/io/File;
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/search/g/a;->a:Ljava/io/File;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dolphin/browser/search/a/d;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "search_url_modify_strategy.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/g/a;->a:Ljava/io/File;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/g/a;->a:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/search/g/f;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/search/g/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/search/g/a;->b:Ljava/util/List;

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/g/a;->b(Lcom/dolphin/browser/search/g/f;)V

    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/search/g/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/g/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/search/g/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public b(Lcom/dolphin/browser/search/g/f;)V
    .locals 5

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/search/g/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/search/g/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/g/f;

    .line 116
    invoke-virtual {v0}, Lcom/dolphin/browser/search/g/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/dolphin/browser/search/g/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/search/g/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/dolphin/browser/search/g/a;->e()Ljava/io/File;

    move-result-object v1

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/search/g/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/search/g/a;->b:Ljava/util/List;

    .line 89
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/search/g/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/g/f;

    .line 91
    invoke-virtual {v0}, Lcom/dolphin/browser/search/g/f;->g()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 94
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/util/IOUtilities;->saveToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    goto :goto_1
.end method
