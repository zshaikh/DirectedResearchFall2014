.class public Lcom/dolphin/browser/search/a/d;
.super Ljava/lang/Object;
.source "SearchCategoryStore.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/dolphin/browser/search/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/dolphin/browser/search/a/b;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/search/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/a/d;->b:Lcom/dolphin/browser/search/a/b;

    .line 38
    invoke-direct {p0}, Lcom/dolphin/browser/search/a/d;->e()Ljava/io/File;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/dolphin/browser/search/a/d;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/a/d;->a:Ljava/util/List;

    .line 42
    :cond_0
    return-void
.end method

.method public static a()Ljava/io/File;
    .locals 3

    .prologue
    .line 51
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "search"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/core/AppContext;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    if-eqz p0, :cond_1

    .line 97
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 100
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/search/b/a;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/search/b/a;

    move-result-object v3

    .line 101
    if-eqz v3, :cond_0

    .line 102
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_1
    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    .line 84
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/search/a/d;->a(Lorg/json/JSONArray;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v0, "SearchCategoryStore"

    const-string v1, "read incompatiable SearchCategory data error."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/dolphin/browser/search/a/d;->d()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private e()Ljava/io/File;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dolphin/browser/search/a/d;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "search_category"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/dolphin/browser/search/a/d;->e()Ljava/io/File;

    move-result-object v1

    .line 123
    const/4 v0, 0x0

    .line 125
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v1, "utf-8"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/IOUtilities;->loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :catch_1
    move-exception v1

    .line 129
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/b/a;

    .line 152
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/a;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/a/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iput-object p1, p0, Lcom/dolphin/browser/search/a/d;->a:Ljava/util/List;

    .line 159
    :cond_1
    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 164
    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    :goto_0
    return v0

    .line 169
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/dolphin/browser/search/a/d;->e()Ljava/io/File;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, p1, v2}, Lcom/dolphin/browser/util/IOUtilities;->saveToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    const/4 v0, 0x1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/dolphin/browser/search/a/d;->f()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/a/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/search/a/d;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/search/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/search/a/d;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/a/d;->a:Ljava/util/List;

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/a/d;->a:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/search/a/d;->b:Lcom/dolphin/browser/search/a/b;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/search/a/b;->a(J)V

    .line 112
    invoke-direct {p0}, Lcom/dolphin/browser/search/a/d;->e()Ljava/io/File;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 117
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->l()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
