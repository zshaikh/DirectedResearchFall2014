.class public Lcom/dolphin/browser/util/be;
.super Ljava/lang/Object;
.source "IconUtil.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/dolphin/browser/util/be;


# instance fields
.field private c:Ljava/io/File;

.field private d:Landroid/content/Context;

.field private e:Lcom/dolphin/browser/util/bg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/dolphin/browser/util/be;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/util/be;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/util/bg;)V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/dolphin/browser/util/be;->d:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/dolphin/browser/util/be;->e:Lcom/dolphin/browser/util/bg;

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "icons_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    sget-object v1, Lcom/dolphin/browser/util/be;->a:Ljava/lang/String;

    const-string v2, "make dirs failed"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    iput-object v0, p0, Lcom/dolphin/browser/util/be;->c:Ljava/io/File;

    .line 53
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    :goto_0
    return-object v0

    .line 135
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/util/be;->d:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/dolphin/browser/util/aj;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    sget-object v2, Lcom/dolphin/browser/util/be;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a()Lcom/dolphin/browser/util/be;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/util/be;->b:Lcom/dolphin/browser/util/be;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Instance should be initialzed first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    sget-object v0, Lcom/dolphin/browser/util/be;->b:Lcom/dolphin/browser/util/be;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/dolphin/browser/util/bg;)Lcom/dolphin/browser/util/be;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/dolphin/browser/util/be;->b:Lcom/dolphin/browser/util/be;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/dolphin/browser/util/be;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/util/be;-><init>(Landroid/content/Context;Lcom/dolphin/browser/util/bg;)V

    sput-object v0, Lcom/dolphin/browser/util/be;->b:Lcom/dolphin/browser/util/be;

    .line 40
    :cond_0
    sget-object v0, Lcom/dolphin/browser/util/be;->b:Lcom/dolphin/browser/util/be;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/util/be;Ljava/util/List;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/util/be;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    invoke-direct {p0, v0}, Lcom/dolphin/browser/util/be;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/dolphin/browser/util/be;->c:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/dolphin/browser/util/be;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    sget-object v1, Lcom/dolphin/browser/util/be;->a:Ljava/lang/String;

    const-string v2, "make dirs failed"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 158
    const-string v0, "%08x.cache"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/util/be;->c:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/util/be;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/util/be;->c:Ljava/io/File;

    new-instance v1, Lcom/dolphin/browser/util/bf;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/util/bf;-><init>(Lcom/dolphin/browser/util/be;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_1

    array-length v0, v1

    if-lez v0, :cond_1

    .line 72
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 73
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    sget-object v3, Lcom/dolphin/browser/util/be;->a:Ljava/lang/String;

    const-string v4, "delete file failed"

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const/4 v5, 0x0

    .line 113
    :cond_0
    :goto_0
    return v5

    .line 107
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/util/be;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 108
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/util/be;->e:Lcom/dolphin/browser/util/bg;

    const-wide/32 v3, 0x177000

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/dolphin/browser/util/bg;->a(Ljava/lang/String;Ljava/io/File;JZ)Z

    move-result v5

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 117
    .line 118
    invoke-direct {p0, p1}, Lcom/dolphin/browser/util/be;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/util/be;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 122
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x1

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/util/be;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    goto :goto_0

    .line 99
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
