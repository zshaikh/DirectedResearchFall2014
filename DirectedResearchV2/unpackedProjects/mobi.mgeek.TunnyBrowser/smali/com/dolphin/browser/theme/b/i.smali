.class public Lcom/dolphin/browser/theme/b/i;
.super Lcom/dolphin/browser/theme/b/e;
.source "WallPaperInstallHandler.java"


# direct methods
.method public constructor <init>(ILjava/io/File;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/theme/b/e;-><init>(ILjava/io/File;)V

    .line 13
    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 17
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    .line 18
    iget-object v1, p0, Lcom/dolphin/browser/theme/b/i;->c:Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/dolphin/browser/theme/ar;->a(Ljava/io/File;ZIZ)V

    .line 19
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/dolphin/browser/theme/R$string;->wallpaper_download_complete_msg:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/dolphin/browser/theme/R$string;->wallpaper_installed_dlg_msg:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/dolphin/browser/theme/R$string;->wallpaper_download_title:I

    return v0
.end method

.method public g()Ljava/io/File;
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/i;->c:Ljava/io/File;

    if-nez v0, :cond_1

    .line 39
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    .line 43
    :cond_0
    const-string v1, "wallpapers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/dolphin/browser/theme/b/i;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dolphin/browser/theme/b/i;->c:Ljava/io/File;

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/i;->c:Ljava/io/File;

    goto :goto_0
.end method
