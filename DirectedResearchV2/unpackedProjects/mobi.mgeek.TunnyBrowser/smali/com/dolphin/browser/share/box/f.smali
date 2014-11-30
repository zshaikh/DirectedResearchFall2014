.class Lcom/dolphin/browser/share/box/f;
.super Ljava/lang/Object;
.source "BoxShareViewContent.java"

# interfaces
.implements Lcom/dolphin/browser/share/box/n;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/box/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/box/b;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/dolphin/browser/share/box/f;->a:Lcom/dolphin/browser/share/box/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/a/b;)V
    .locals 5

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 320
    iget-object v1, p0, Lcom/dolphin/browser/share/box/f;->a:Lcom/dolphin/browser/share/box/b;

    invoke-static {v1}, Lcom/dolphin/browser/share/box/b;->d(Lcom/dolphin/browser/share/box/b;)Lcom/b/a/a/b;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/share/box/f;->a:Lcom/dolphin/browser/share/box/b;

    invoke-static {v1}, Lcom/dolphin/browser/share/box/b;->d(Lcom/dolphin/browser/share/box/b;)Lcom/b/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a/b;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/b/a/a/b;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 322
    const/4 v0, 0x1

    .line 324
    :cond_0
    const-string v1, "box share"

    const-string v2, "choose"

    const-string v3, "folder"

    invoke-static {v1, v2, v3, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 329
    iget-object v0, p0, Lcom/dolphin/browser/share/box/f;->a:Lcom/dolphin/browser/share/box/b;

    invoke-static {v0, p1}, Lcom/dolphin/browser/share/box/b;->b(Lcom/dolphin/browser/share/box/b;Lcom/b/a/a/b;)Lcom/b/a/a/b;

    .line 330
    iget-object v0, p0, Lcom/dolphin/browser/share/box/f;->a:Lcom/dolphin/browser/share/box/b;

    invoke-static {v0}, Lcom/dolphin/browser/share/box/b;->e(Lcom/dolphin/browser/share/box/b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lcom/dolphin/browser/share/box/o;->b(Lcom/b/a/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    return-void
.end method
