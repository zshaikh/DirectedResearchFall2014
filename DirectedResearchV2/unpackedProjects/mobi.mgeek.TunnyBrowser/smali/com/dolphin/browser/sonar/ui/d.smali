.class Lcom/dolphin/browser/sonar/ui/d;
.super Ljava/lang/Object;
.source "PointProgressView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sonar/ui/PointProgressView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sonar/ui/PointProgressView;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/dolphin/browser/sonar/ui/d;->a:Lcom/dolphin/browser/sonar/ui/PointProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/d;->a:Lcom/dolphin/browser/sonar/ui/PointProgressView;

    invoke-static {v0}, Lcom/dolphin/browser/sonar/ui/PointProgressView;->a(Lcom/dolphin/browser/sonar/ui/PointProgressView;)I

    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/d;->a:Lcom/dolphin/browser/sonar/ui/PointProgressView;

    iget-object v1, p0, Lcom/dolphin/browser/sonar/ui/d;->a:Lcom/dolphin/browser/sonar/ui/PointProgressView;

    invoke-static {v1}, Lcom/dolphin/browser/sonar/ui/PointProgressView;->b(Lcom/dolphin/browser/sonar/ui/PointProgressView;)I

    move-result v1

    invoke-static {}, Lcom/dolphin/browser/sonar/ui/PointProgressView;->c()[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/sonar/ui/PointProgressView;->a(Lcom/dolphin/browser/sonar/ui/PointProgressView;I)I

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/d;->a:Lcom/dolphin/browser/sonar/ui/PointProgressView;

    invoke-static {v0}, Lcom/dolphin/browser/sonar/ui/PointProgressView;->c(Lcom/dolphin/browser/sonar/ui/PointProgressView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/d;->a:Lcom/dolphin/browser/sonar/ui/PointProgressView;

    iget-object v1, p0, Lcom/dolphin/browser/sonar/ui/d;->a:Lcom/dolphin/browser/sonar/ui/PointProgressView;

    invoke-static {v1}, Lcom/dolphin/browser/sonar/ui/PointProgressView;->d(Lcom/dolphin/browser/sonar/ui/PointProgressView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/sonar/ui/PointProgressView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/d;->a:Lcom/dolphin/browser/sonar/ui/PointProgressView;

    invoke-virtual {v0}, Lcom/dolphin/browser/sonar/ui/PointProgressView;->invalidate()V

    .line 77
    return-void
.end method
