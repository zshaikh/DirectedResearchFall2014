.class Lcom/dolphin/browser/ui/launcher/l;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/launcher/g;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/launcher/g;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/l;->a:Lcom/dolphin/browser/ui/launcher/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    const-string v0, "LauncherIcon"

    return-object v0
.end method

.method public onImageLoadFailed(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 575
    const-string v0, "Launcher"

    const-string v1, "requestIcon result, url=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 576
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/l;->a:Lcom/dolphin/browser/ui/launcher/g;

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/ui/launcher/g;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bw;

    .line 577
    if-eqz v0, :cond_0

    .line 578
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/dolphin/browser/launcher/bw;->a(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 580
    :cond_0
    return-void
.end method

.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 564
    const-string v0, "Launcher"

    const-string v1, "requestIcon result, type=%d, url=%s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 565
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/l;->a:Lcom/dolphin/browser/ui/launcher/g;

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/ui/launcher/g;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bw;

    .line 566
    if-eqz v0, :cond_0

    .line 567
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/l;->a:Lcom/dolphin/browser/ui/launcher/g;

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/launcher/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/dolphin/browser/ui/launcher/x;->a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 568
    invoke-interface {v0, v5, p1, v1}, Lcom/dolphin/browser/launcher/bw;->a(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 570
    :cond_0
    return-void
.end method
