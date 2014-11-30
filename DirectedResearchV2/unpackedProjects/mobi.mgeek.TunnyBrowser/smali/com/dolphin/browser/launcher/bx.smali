.class Lcom/dolphin/browser/launcher/bx;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MiddlePage.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/MiddlePage;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/MiddlePage;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/dolphin/browser/launcher/bx;->a:Lcom/dolphin/browser/launcher/MiddlePage;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 141
    iget-object v1, p0, Lcom/dolphin/browser/launcher/bx;->a:Lcom/dolphin/browser/launcher/MiddlePage;

    invoke-static {v1}, Lcom/dolphin/browser/launcher/MiddlePage;->a(Lcom/dolphin/browser/launcher/MiddlePage;)Lcom/dolphin/browser/launcher/ca;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/launcher/ca;->c:Lcom/dolphin/browser/launcher/ca;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/dolphin/browser/launcher/bx;->a:Lcom/dolphin/browser/launcher/MiddlePage;

    invoke-static {v1}, Lcom/dolphin/browser/launcher/MiddlePage;->b(Lcom/dolphin/browser/launcher/MiddlePage;)Lcom/dolphin/browser/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/Workspace;->getScrollY()I

    move-result v1

    if-lez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 145
    invoke-static {}, Lcom/dolphin/browser/launcher/MiddlePage;->a()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p4, v1

    if-lez v1, :cond_3

    .line 146
    iget-object v1, p0, Lcom/dolphin/browser/launcher/bx;->a:Lcom/dolphin/browser/launcher/MiddlePage;

    invoke-static {v1}, Lcom/dolphin/browser/launcher/MiddlePage;->a(Lcom/dolphin/browser/launcher/MiddlePage;)Lcom/dolphin/browser/launcher/ca;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/launcher/ca;->c:Lcom/dolphin/browser/launcher/ca;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/dolphin/browser/launcher/bx;->a:Lcom/dolphin/browser/launcher/MiddlePage;

    invoke-static {v1}, Lcom/dolphin/browser/launcher/MiddlePage;->b(Lcom/dolphin/browser/launcher/MiddlePage;)Lcom/dolphin/browser/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/Workspace;->getScrollY()I

    move-result v1

    if-nez v1, :cond_2

    .line 147
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bx;->a:Lcom/dolphin/browser/launcher/MiddlePage;

    sget-object v1, Lcom/dolphin/browser/launcher/ca;->a:Lcom/dolphin/browser/launcher/ca;

    invoke-static {v0, v1}, Lcom/dolphin/browser/launcher/MiddlePage;->a(Lcom/dolphin/browser/launcher/MiddlePage;Lcom/dolphin/browser/launcher/ca;)Z

    move-result v0

    goto :goto_0

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/launcher/bx;->a:Lcom/dolphin/browser/launcher/MiddlePage;

    invoke-static {v1}, Lcom/dolphin/browser/launcher/MiddlePage;->a(Lcom/dolphin/browser/launcher/MiddlePage;)Lcom/dolphin/browser/launcher/ca;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/launcher/ca;->a:Lcom/dolphin/browser/launcher/ca;

    if-ne v1, v2, :cond_0

    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bx;->a:Lcom/dolphin/browser/launcher/MiddlePage;

    sget-object v1, Lcom/dolphin/browser/launcher/ca;->b:Lcom/dolphin/browser/launcher/ca;

    invoke-static {v0, v1}, Lcom/dolphin/browser/launcher/MiddlePage;->a(Lcom/dolphin/browser/launcher/MiddlePage;Lcom/dolphin/browser/launcher/ca;)Z

    move-result v0

    goto :goto_0

    .line 151
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/launcher/MiddlePage;->a()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, p4, v1

    if-gez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/dolphin/browser/launcher/bx;->a:Lcom/dolphin/browser/launcher/MiddlePage;

    invoke-static {v1}, Lcom/dolphin/browser/launcher/MiddlePage;->a(Lcom/dolphin/browser/launcher/MiddlePage;)Lcom/dolphin/browser/launcher/ca;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/launcher/ca;->b:Lcom/dolphin/browser/launcher/ca;

    if-ne v1, v2, :cond_4

    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bx;->a:Lcom/dolphin/browser/launcher/MiddlePage;

    sget-object v1, Lcom/dolphin/browser/launcher/ca;->a:Lcom/dolphin/browser/launcher/ca;

    invoke-static {v0, v1}, Lcom/dolphin/browser/launcher/MiddlePage;->a(Lcom/dolphin/browser/launcher/MiddlePage;Lcom/dolphin/browser/launcher/ca;)Z

    move-result v0

    goto :goto_0

    .line 154
    :cond_4
    iget-object v1, p0, Lcom/dolphin/browser/launcher/bx;->a:Lcom/dolphin/browser/launcher/MiddlePage;

    invoke-static {v1}, Lcom/dolphin/browser/launcher/MiddlePage;->a(Lcom/dolphin/browser/launcher/MiddlePage;)Lcom/dolphin/browser/launcher/ca;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/launcher/ca;->a:Lcom/dolphin/browser/launcher/ca;

    if-ne v1, v2, :cond_0

    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bx;->a:Lcom/dolphin/browser/launcher/MiddlePage;

    sget-object v1, Lcom/dolphin/browser/launcher/ca;->c:Lcom/dolphin/browser/launcher/ca;

    invoke-static {v0, v1}, Lcom/dolphin/browser/launcher/MiddlePage;->a(Lcom/dolphin/browser/launcher/MiddlePage;Lcom/dolphin/browser/launcher/ca;)Z

    move-result v0

    goto :goto_0
.end method
