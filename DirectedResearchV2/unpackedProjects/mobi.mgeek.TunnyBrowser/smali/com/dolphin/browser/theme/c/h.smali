.class public Lcom/dolphin/browser/theme/c/h;
.super Lcom/dolphin/browser/theme/c/l;
.source "NightModeResources.java"


# instance fields
.field private d:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/theme/c/l;-><init>(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-interface {p1}, Lcom/dolphin/browser/theme/c/g;->c()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/c/h;->d:Landroid/content/res/AssetManager;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NightMode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/dolphin/browser/theme/c/h;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/theme/c/h;->d:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/h;->d:Landroid/content/res/AssetManager;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "NightMode"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/dolphin/browser/theme/c/h;->b:[Ljava/lang/String;

    aget-object v3, v3, p2

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/dolphin/browser/theme/c/h;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 108
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/dolphin/browser/theme/c/c;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/h;->d:Landroid/content/res/AssetManager;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "NightMode"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/dolphin/browser/theme/c/h;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/theme/c/c;->a([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected e()[Lcom/dolphin/browser/theme/c/c;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 47
    sget-object v0, Lcom/dolphin/browser/theme/c/h;->b:[Ljava/lang/String;

    array-length v3, v0

    .line 48
    new-array v4, v3, [Lcom/dolphin/browser/theme/c/c;

    .line 49
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/a;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move v2, v1

    .line 50
    :goto_0
    if-ge v2, v3, :cond_1

    .line 52
    sget-object v0, Lcom/dolphin/browser/theme/c/h;->b:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v6, "res/drawable"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/dolphin/browser/theme/c/d;

    invoke-direct {v0}, Lcom/dolphin/browser/theme/c/d;-><init>()V

    .line 57
    :goto_1
    aput-object v0, v4, v2

    .line 50
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Lcom/dolphin/browser/theme/c/c;

    invoke-direct {v0}, Lcom/dolphin/browser/theme/c/c;-><init>()V

    goto :goto_1

    .line 60
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 61
    new-array v5, v3, [Ljava/lang/String;

    move v0, v1

    .line 62
    :goto_2
    if-ge v0, v3, :cond_2

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "assets/NightMode/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/dolphin/browser/theme/c/h;->b:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 66
    const-string v0, "assets/NightMode/res/drawable"

    .line 67
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 69
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 70
    const-string v0, "assets/NightMode/res/drawable"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    const/16 v0, 0x2f

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 74
    if-ltz v0, :cond_3

    .line 77
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move v0, v1

    .line 78
    :goto_4
    if-ge v0, v3, :cond_3

    .line 79
    aget-object v8, v5, v0

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 80
    aget-object v0, v4, v0

    invoke-virtual {v0, v7}, Lcom/dolphin/browser/theme/c/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 88
    :cond_4
    return-object v4

    .line 78
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method
