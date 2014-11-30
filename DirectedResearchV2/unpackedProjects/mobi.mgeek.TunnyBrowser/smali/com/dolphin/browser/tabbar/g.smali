.class Lcom/dolphin/browser/tabbar/g;
.super Ljava/lang/Object;
.source "TabPageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tabbar/d;

.field private b:I


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tabbar/d;I)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/dolphin/browser/tabbar/g;->a:Lcom/dolphin/browser/tabbar/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput p2, p0, Lcom/dolphin/browser/tabbar/g;->b:I

    .line 539
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 544
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/g;->a:Lcom/dolphin/browser/tabbar/d;

    invoke-static {v0}, Lcom/dolphin/browser/tabbar/d;->b(Lcom/dolphin/browser/tabbar/d;)Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/g;->a:Lcom/dolphin/browser/tabbar/d;

    invoke-static {v0}, Lcom/dolphin/browser/tabbar/d;->b(Lcom/dolphin/browser/tabbar/d;)Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentIndex()I

    move-result v0

    .line 548
    new-instance v1, Lcom/dolphin/browser/tabbar/c;

    iget v2, p0, Lcom/dolphin/browser/tabbar/g;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/dolphin/browser/tabbar/c;-><init>(IIILjava/lang/Runnable;)V

    .line 550
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/g;->a:Lcom/dolphin/browser/tabbar/d;

    invoke-static {v0}, Lcom/dolphin/browser/tabbar/d;->j(Lcom/dolphin/browser/tabbar/d;)Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a(Lcom/dolphin/browser/tabbar/c;)V

    .line 551
    const-string v0, "TabPageView"

    const-string v1, "ShowTab run"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
