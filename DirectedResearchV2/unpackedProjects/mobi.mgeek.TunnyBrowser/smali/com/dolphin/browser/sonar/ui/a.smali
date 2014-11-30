.class Lcom/dolphin/browser/sonar/ui/a;
.super Ljava/lang/Object;
.source "AnimTextFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/dolphin/browser/sonar/ui/a;->a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 232
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/a;->a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-static {v0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->a(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/a;->a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-static {v0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->c(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/sonar/ui/a;->a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-static {v1}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->b(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sonar/ui/c;

    .line 236
    invoke-static {v0}, Lcom/dolphin/browser/sonar/ui/c;->b(Lcom/dolphin/browser/sonar/ui/c;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/dolphin/browser/sonar/ui/a;->a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-static {v1}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->d(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)Lcom/dolphin/browser/sonar/ui/b;

    move-result-object v1

    .line 238
    if-eqz v1, :cond_2

    .line 239
    const/high16 v2, 0x3f800000

    invoke-static {}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->c()[Landroid/view/animation/Interpolator;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v2, v1, v3}, Lcom/dolphin/browser/sonar/ui/c;->a(FLcom/dolphin/browser/sonar/ui/b;Landroid/view/animation/Interpolator;)V

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/a;->a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-static {v0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->e(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)I

    .line 243
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/a;->a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    iget-object v1, p0, Lcom/dolphin/browser/sonar/ui/a;->a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-static {v1}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->b(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)I

    move-result v1

    iget-object v2, p0, Lcom/dolphin/browser/sonar/ui/a;->a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-static {v2}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->f(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->a(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;I)I

    .line 244
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/a;->a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-static {v0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->a(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/a;->a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    iget-object v1, p0, Lcom/dolphin/browser/sonar/ui/a;->a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-static {v1}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->g(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->d()[J

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/sonar/ui/a;->a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-static {v3}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->h(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)Ljava/util/Random;

    move-result-object v3

    invoke-static {}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->d()[J

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-wide v2, v2, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
