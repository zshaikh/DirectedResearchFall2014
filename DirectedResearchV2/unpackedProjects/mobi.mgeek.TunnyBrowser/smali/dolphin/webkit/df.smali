.class Ldolphin/webkit/df;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Lcom/dolphin/player/p;


# instance fields
.field final synthetic a:Ldolphin/webkit/dc;


# direct methods
.method constructor <init>(Ldolphin/webkit/dc;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Ldolphin/webkit/df;->a:Ldolphin/webkit/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/player/j;II)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Ldolphin/webkit/df;->a:Ldolphin/webkit/dc;

    invoke-interface {p1}, Lcom/dolphin/player/j;->l()I

    move-result v1

    invoke-static {v0, v1}, Ldolphin/webkit/dc;->b(Ldolphin/webkit/dc;I)I

    .line 142
    iget-object v0, p0, Ldolphin/webkit/df;->a:Ldolphin/webkit/dc;

    invoke-interface {p1}, Lcom/dolphin/player/j;->m()I

    move-result v1

    invoke-static {v0, v1}, Ldolphin/webkit/dc;->c(Ldolphin/webkit/dc;I)I

    .line 143
    iget-object v0, p0, Ldolphin/webkit/df;->a:Ldolphin/webkit/dc;

    invoke-static {v0}, Ldolphin/webkit/dc;->a(Ldolphin/webkit/dc;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/df;->a:Ldolphin/webkit/dc;

    invoke-static {v0}, Ldolphin/webkit/dc;->b(Ldolphin/webkit/dc;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Ldolphin/webkit/df;->a:Ldolphin/webkit/dc;

    invoke-static {v0}, Ldolphin/webkit/dc;->e(Ldolphin/webkit/dc;)Ldolphin/webkit/dj;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/dj;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/df;->a:Ldolphin/webkit/dc;

    invoke-static {v1}, Ldolphin/webkit/dc;->a(Ldolphin/webkit/dc;)I

    move-result v1

    iget-object v2, p0, Ldolphin/webkit/df;->a:Ldolphin/webkit/dc;

    invoke-static {v2}, Ldolphin/webkit/dc;->b(Ldolphin/webkit/dc;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 146
    :cond_0
    return-void
.end method
