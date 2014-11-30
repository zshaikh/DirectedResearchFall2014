.class Lcom/dolphin/browser/gesture/ui/ak;
.super Ljava/lang/Object;
.source "RecommendGestureView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/aj;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/gesture/ui/aj;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/ak;->a:Lcom/dolphin/browser/gesture/ui/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 85
    const-string v0, "gesture"

    const-string v1, "clickbtn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gesture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ak;->a:Lcom/dolphin/browser/gesture/ui/aj;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/aj;->a(Lcom/dolphin/browser/gesture/ui/aj;)Lcom/dolphin/browser/gesture/ui/al;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/dolphin/browser/gesture/ui/al;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/a/a;

    .line 87
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ak;->a:Lcom/dolphin/browser/gesture/ui/aj;

    invoke-static {v1, v0}, Lcom/dolphin/browser/gesture/ui/aj;->a(Lcom/dolphin/browser/gesture/ui/aj;Lcom/dolphin/browser/gesture/a/a;)V

    .line 88
    return-void
.end method
