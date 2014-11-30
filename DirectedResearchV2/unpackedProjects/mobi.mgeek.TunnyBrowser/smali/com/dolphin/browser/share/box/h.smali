.class Lcom/dolphin/browser/share/box/h;
.super Ljava/lang/Object;
.source "BoxShareViewContent.java"

# interfaces
.implements Lcom/dolphin/browser/q/a/i;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/box/g;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/box/g;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/dolphin/browser/share/box/h;->a:Lcom/dolphin/browser/share/box/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/dolphin/browser/share/box/h;->a:Lcom/dolphin/browser/share/box/g;

    iget-object v0, v0, Lcom/dolphin/browser/share/box/g;->a:Lcom/dolphin/browser/share/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/share/a;->a(Ljava/lang/Throwable;)V

    .line 389
    const-string v0, "box share"

    const-string v1, "uploadpdf"

    const-string v2, "failure"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/dolphin/browser/share/box/h;->a:Lcom/dolphin/browser/share/box/g;

    iget-object v0, v0, Lcom/dolphin/browser/share/box/g;->a:Lcom/dolphin/browser/share/a;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/a;->a(Ljava/lang/Object;)V

    .line 380
    const-string v0, "box share"

    const-string v1, "uploadpdf"

    const-string v2, "success"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method
