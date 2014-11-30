.class public final Lcom/dolphin/browser/DolphinService/e;
.super Ljava/lang/Object;
.source "AvatarUtil.java"


# direct methods
.method public static a(Lcom/dolphin/browser/DolphinService/Account/a;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 27
    invoke-static {p0}, Lcom/dolphin/browser/DolphinService/e;->b(Lcom/dolphin/browser/DolphinService/Account/a;)Ljava/io/File;

    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/e;->a(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/16 v2, 0x40

    .line 58
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/e/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 62
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    const/high16 v1, 0x42000000

    invoke-static {v0, v1}, Lcom/dolphin/browser/pagedrop/e/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Ljava/io/File;
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getDataDir()Ljava/io/File;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/io/File;

    const-string v2, "avatar"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 53
    :cond_0
    return-object v1
.end method

.method public static b(Lcom/dolphin/browser/DolphinService/Account/a;)Ljava/io/File;
    .locals 4

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x40

    const/16 v3, 0x5f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {}, Lcom/dolphin/browser/DolphinService/e;->a()Ljava/io/File;

    move-result-object v2

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Lcom/dolphin/browser/DolphinService/Account/a;)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    :goto_0
    return v4

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/dolphin/browser/DolphinService/e;->b(Lcom/dolphin/browser/DolphinService/Account/a;)Ljava/io/File;

    move-result-object v1

    .line 78
    const-wide v2, 0x7fffffffffffffffL

    const-string v5, "BizAvatar"

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/Network/l;->a(Ljava/lang/String;Ljava/io/File;JZLjava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method
