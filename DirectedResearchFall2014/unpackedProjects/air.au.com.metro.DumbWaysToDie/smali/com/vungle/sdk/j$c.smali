.class final Lcom/vungle/sdk/j$c;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/j;


# direct methods
.method private constructor <init>(Lcom/vungle/sdk/j;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/vungle/sdk/j$c;->a:Lcom/vungle/sdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/sdk/j;B)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/vungle/sdk/j$c;-><init>(Lcom/vungle/sdk/j;)V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/vungle/sdk/j$c;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->e(Lcom/vungle/sdk/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 333
    :goto_0
    return v0

    .line 327
    :cond_0
    const-string v0, "OnErrorListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error encountered during video playback: what("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") extra("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/vungle/sdk/j$c;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->f(Lcom/vungle/sdk/j;)V

    .line 331
    iget-object v0, p0, Lcom/vungle/sdk/j$c;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->g(Lcom/vungle/sdk/j;)V

    .line 332
    iget-object v0, p0, Lcom/vungle/sdk/j$c;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->i(Lcom/vungle/sdk/j;)Lcom/vungle/sdk/j$g;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/sdk/j$c;->a:Lcom/vungle/sdk/j;

    invoke-static {v1}, Lcom/vungle/sdk/j;->h(Lcom/vungle/sdk/j;)J

    invoke-interface {v0}, Lcom/vungle/sdk/j$g;->c()V

    .line 333
    const/4 v0, 0x1

    goto :goto_0
.end method
