.class Lcom/dolphin/browser/ui/launcher/k;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/launcher/g;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/launcher/g;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/k;->a:Lcom/dolphin/browser/ui/launcher/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 548
    check-cast p2, Ljava/lang/String;

    .line 549
    const-string v0, "Launcher"

    const-string v1, "requestIcon result, type=%d, url=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 550
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/k;->a:Lcom/dolphin/browser/ui/launcher/g;

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/ui/launcher/g;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bw;

    .line 551
    if-eqz v0, :cond_0

    .line 552
    invoke-static {}, Lcom/dolphin/browser/f/a/b;->a()Lcom/dolphin/browser/f/a/b;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/dolphin/browser/f/a/b;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 553
    invoke-interface {v0, v5, p2, v1}, Lcom/dolphin/browser/launcher/bw;->a(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 555
    :cond_0
    return-void
.end method
