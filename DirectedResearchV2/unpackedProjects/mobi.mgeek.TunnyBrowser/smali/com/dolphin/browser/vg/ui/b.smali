.class Lcom/dolphin/browser/vg/ui/b;
.super Ljava/lang/Object;
.source "SwitcherView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dolphin/browser/vg/ui/SwitcherView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/vg/ui/SwitcherView;I)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/dolphin/browser/vg/ui/b;->b:Lcom/dolphin/browser/vg/ui/SwitcherView;

    iput p2, p0, Lcom/dolphin/browser/vg/ui/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/b;->b:Lcom/dolphin/browser/vg/ui/SwitcherView;

    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/b;->b:Lcom/dolphin/browser/vg/ui/SwitcherView;

    invoke-static {v1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->a(Lcom/dolphin/browser/vg/ui/SwitcherView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->a(Lcom/dolphin/browser/vg/ui/SwitcherView;I)V

    .line 320
    iget v0, p0, Lcom/dolphin/browser/vg/ui/b;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/b;->b:Lcom/dolphin/browser/vg/ui/SwitcherView;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->a(Lcom/dolphin/browser/vg/ui/SwitcherView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 321
    const-string v0, "gesture"

    const-string v1, "clickbtn"

    const-string v2, "switchbutton"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void
.end method
