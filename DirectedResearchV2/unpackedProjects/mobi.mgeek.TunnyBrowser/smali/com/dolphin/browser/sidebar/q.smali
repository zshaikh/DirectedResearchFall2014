.class Lcom/dolphin/browser/sidebar/q;
.super Ljava/lang/Object;
.source "BookmarkView.java"

# interfaces
.implements Lcom/dolphin/browser/sync/o;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sidebar/i;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sidebar/i;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/q;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 466
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/q;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v0, v1}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;Z)Z

    .line 467
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/q;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v0, v1}, Lcom/dolphin/browser/sidebar/i;->b(Lcom/dolphin/browser/sidebar/i;I)I

    .line 468
    return-void
.end method

.method public a(J)V
    .locals 2

    .prologue
    .line 480
    const-wide/16 v0, 0x14

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/q;->a:Lcom/dolphin/browser/sidebar/i;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;I)V

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/q;->a:Lcom/dolphin/browser/sidebar/i;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 453
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/q;->a:Lcom/dolphin/browser/sidebar/i;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;I)V

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/q;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v0}, Lcom/dolphin/browser/sidebar/i;->f(Lcom/dolphin/browser/sidebar/i;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 475
    return-void
.end method
