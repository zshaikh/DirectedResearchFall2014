.class Lcom/dolphin/browser/tabbar/e;
.super Ljava/lang/Object;
.source "TabPageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tabbar/d;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tabbar/d;II)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/dolphin/browser/tabbar/e;->a:Lcom/dolphin/browser/tabbar/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput p2, p0, Lcom/dolphin/browser/tabbar/e;->b:I

    .line 518
    iput p3, p0, Lcom/dolphin/browser/tabbar/e;->c:I

    .line 519
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 524
    new-instance v0, Lcom/dolphin/browser/tabbar/c;

    iget v1, p0, Lcom/dolphin/browser/tabbar/e;->b:I

    iget v2, p0, Lcom/dolphin/browser/tabbar/e;->c:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/tabbar/c;-><init>(IIILjava/lang/Runnable;)V

    .line 526
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/e;->a:Lcom/dolphin/browser/tabbar/d;

    invoke-static {v1}, Lcom/dolphin/browser/tabbar/d;->j(Lcom/dolphin/browser/tabbar/d;)Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a(Lcom/dolphin/browser/tabbar/c;)V

    .line 527
    const-string v0, "TabPageView"

    const-string v1, "DismissTab run"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void
.end method
