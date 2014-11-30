.class public Lcom/dolphin/browser/search/c/d;
.super Ljava/lang/Object;
.source "SearchPromotionStore.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dolphin/browser/search/c/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/dolphin/browser/search/c/d;->a:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 106
    const/4 v0, 0x0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 109
    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 110
    if-eqz v6, :cond_0

    array-length v2, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    .line 128
    :cond_0
    if-eqz v1, :cond_1

    .line 130
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    move-object v0, v1

    .line 137
    :cond_2
    :goto_1
    return-object v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :cond_3
    :try_start_2
    const-string v3, "search_promotion.json"

    .line 114
    invoke-static {p2}, Lcom/dolphin/browser/search/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "search_promotion.json_yandex"

    .line 116
    :goto_2
    const/4 v2, 0x0

    move v4, v2

    :goto_3
    array-length v2, v6

    if-ge v4, v2, :cond_8

    .line 117
    aget-object v2, v6, v4

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v0, v2

    .line 123
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 124
    :try_start_3
    const-string v0, "utf-8"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/IOUtilities;->loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 128
    if-eqz v2, :cond_2

    .line 130
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 131
    :catch_1
    move-exception v1

    .line 132
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    goto :goto_1

    .line 114
    :cond_4
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search_promotion.json_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    goto :goto_2

    .line 116
    :cond_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    .line 125
    :catch_2
    move-exception v0

    move-object v2, v1

    .line 126
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 128
    if-eqz v2, :cond_6

    .line 130
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_6
    move-object v0, v1

    .line 137
    goto :goto_1

    .line 131
    :catch_3
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    goto :goto_6

    .line 128
    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v1, :cond_7

    .line 130
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 133
    :cond_7
    :goto_8
    throw v0

    .line 131
    :catch_4
    move-exception v1

    .line 132
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    goto :goto_8

    .line 128
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_7

    .line 125
    :catch_5
    move-exception v0

    goto :goto_5

    :cond_8
    move-object v0, v3

    goto :goto_4
.end method

.method private a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 95
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/IOUtilities;->loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/c/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :catch_1
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 70
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-static {v0}, Lcom/dolphin/browser/search/c/b;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/search/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/c/d;->b:Lcom/dolphin/browser/search/c/b;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/search/c/d;->a:Landroid/content/Context;

    const-string v1, "builtin"

    invoke-static {}, Lcom/dolphin/browser/search/i;->a()Lcom/dolphin/browser/search/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/search/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/search/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/c/d;->a(Ljava/lang/String;)V

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    :try_start_0
    invoke-direct {p0}, Lcom/dolphin/browser/search/c/d;->e()Ljava/io/File;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/util/IOUtilities;->saveToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private e()Ljava/io/File;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dolphin/browser/search/a/d;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "search_promotion.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/dolphin/browser/search/c/d;->e()Ljava/io/File;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/dolphin/browser/search/c/d;->d()V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/c/d;->a(Ljava/io/File;)V

    goto :goto_0
.end method

.method public b()Lcom/dolphin/browser/search/c/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/search/c/d;->b:Lcom/dolphin/browser/search/c/b;

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/dolphin/browser/search/c/d;->e()Ljava/io/File;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 60
    invoke-direct {p0}, Lcom/dolphin/browser/search/c/d;->d()V

    .line 62
    :cond_0
    return-void
.end method
