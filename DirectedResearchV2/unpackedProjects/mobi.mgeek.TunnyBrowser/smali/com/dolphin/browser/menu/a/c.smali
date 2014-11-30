.class public Lcom/dolphin/browser/menu/a/c;
.super Ljava/lang/Thread;
.source "SetAsWallpaper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/net/URL;

.field private final c:Ljava/lang/String;

.field private d:Landroid/app/ProgressDialog;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/dolphin/browser/menu/a/c;->e:Z

    .line 38
    iput-boolean v0, p0, Lcom/dolphin/browser/menu/a/c;->f:Z

    .line 42
    iput-object p1, p0, Lcom/dolphin/browser/menu/a/c;->a:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/dolphin/browser/menu/a/c;->c:Ljava/lang/String;

    .line 45
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/a/c;->b:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/menu/a/c;->b:Ljava/net/URL;

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/a/c;->e:Z

    .line 55
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 60
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/a/c;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/menu/a/c;->b:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/dolphin/browser/menu/a/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/a/c;->d:Landroid/app/ProgressDialog;

    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/menu/a/c;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/menu/a/c;->d:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/dolphin/browser/menu/a/c;->a:Landroid/content/Context;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e04fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/menu/a/c;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/menu/a/c;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/menu/a/c;->d:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 73
    iput-boolean v3, p0, Lcom/dolphin/browser/menu/a/c;->f:Z

    .line 74
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/a/c;->start()V

    .line 76
    :cond_0
    const-string v0, "home"

    const-string v1, "longpressmenu"

    const-string v2, "setaswallpaper"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return v3
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 84
    const-string v0, "SetAsWallpaper"

    const-string v1, "setAsWallPaper thread run"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/menu/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 86
    if-nez v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 91
    if-eqz v3, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/menu/a/c;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/mgeek/android/util/WebViewCacheManager;->getCacheResult(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 107
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 108
    const-string v1, "SetAsWallpaper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Use cached file for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/dolphin/browser/menu/a/c;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 114
    :goto_1
    if-eqz v0, :cond_2

    .line 115
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    :cond_2
    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 126
    :goto_2
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/a/c;->e:Z

    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 131
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 132
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 133
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 134
    invoke-virtual {v3, v7, v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 137
    :try_start_2
    iget-object v0, p0, Lcom/dolphin/browser/menu/a/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->setWallpaper(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    :goto_3
    iput-boolean v7, p0, Lcom/dolphin/browser/menu/a/c;->e:Z

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/menu/a/c;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/menu/a/c;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 111
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/dolphin/browser/menu/a/c;->b:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 117
    :catch_0
    move-exception v1

    .line 118
    :try_start_4
    const-string v1, "SetAsWallpaper"

    const-string v2, "Unable to set new wallpaper"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dolphin/browser/menu/a/c;->e:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 123
    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_4
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    .line 138
    :catch_1
    move-exception v0

    .line 139
    const-string v0, "SetAsWallpaper"

    const-string v1, "Unable to restore old wallpaper."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 123
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4
.end method
