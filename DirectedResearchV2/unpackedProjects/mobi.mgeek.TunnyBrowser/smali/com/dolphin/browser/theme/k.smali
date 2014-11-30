.class Lcom/dolphin/browser/theme/k;
.super Ljava/lang/Object;
.source "ProgressTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/ProgressTextView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ProgressTextView;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/dolphin/browser/theme/k;->a:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/theme/k;->a:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ProgressTextView;->a(Lcom/dolphin/browser/theme/ProgressTextView;)F

    move-result v0

    const v1, 0x3f59999a

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/theme/k;->a:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ProgressTextView;->b(Lcom/dolphin/browser/theme/ProgressTextView;)Lcom/dolphin/browser/theme/data/n;

    move-result-object v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/k;->a:Lcom/dolphin/browser/theme/ProgressTextView;

    const v1, 0x3c23d70a

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/ProgressTextView;->a(Lcom/dolphin/browser/theme/ProgressTextView;F)F

    .line 83
    invoke-static {}, Lcom/dolphin/browser/theme/ProgressTextView;->c()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/theme/k;->a:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-static {v1}, Lcom/dolphin/browser/theme/ProgressTextView;->b(Lcom/dolphin/browser/theme/ProgressTextView;)Lcom/dolphin/browser/theme/data/n;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/theme/k;->a:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-static {v2}, Lcom/dolphin/browser/theme/ProgressTextView;->a(Lcom/dolphin/browser/theme/ProgressTextView;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/theme/k;->a:Lcom/dolphin/browser/theme/ProgressTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v2, 0x42c80000

    iget-object v3, p0, Lcom/dolphin/browser/theme/k;->a:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-static {v3}, Lcom/dolphin/browser/theme/ProgressTextView;->a(Lcom/dolphin/browser/theme/ProgressTextView;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/ProgressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/theme/k;->a:Lcom/dolphin/browser/theme/ProgressTextView;

    iget-object v1, p0, Lcom/dolphin/browser/theme/k;->a:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-static {v1}, Lcom/dolphin/browser/theme/ProgressTextView;->c(Lcom/dolphin/browser/theme/ProgressTextView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/theme/ProgressTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/theme/k;->a:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ProgressTextView;->invalidate()V

    goto :goto_0
.end method
