.class final Lcom/vungle/sdk/j$b;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/j;


# direct methods
.method private constructor <init>(Lcom/vungle/sdk/j;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/vungle/sdk/j$b;->a:Lcom/vungle/sdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/sdk/j;B)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/vungle/sdk/j$b;-><init>(Lcom/vungle/sdk/j;)V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/vungle/sdk/j$b;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->e(Lcom/vungle/sdk/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    .line 316
    iget-object v2, p0, Lcom/vungle/sdk/j$b;->a:Lcom/vungle/sdk/j;

    invoke-static {v2}, Lcom/vungle/sdk/j;->f(Lcom/vungle/sdk/j;)V

    .line 317
    iget-object v2, p0, Lcom/vungle/sdk/j$b;->a:Lcom/vungle/sdk/j;

    invoke-static {v2}, Lcom/vungle/sdk/j;->g(Lcom/vungle/sdk/j;)V

    .line 318
    iget-object v2, p0, Lcom/vungle/sdk/j$b;->a:Lcom/vungle/sdk/j;

    invoke-static {v2}, Lcom/vungle/sdk/j;->i(Lcom/vungle/sdk/j;)Lcom/vungle/sdk/j$g;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/sdk/j$b;->a:Lcom/vungle/sdk/j;

    invoke-static {v3}, Lcom/vungle/sdk/j;->h(Lcom/vungle/sdk/j;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/vungle/sdk/j$g;->a(JJ)V

    goto :goto_0
.end method
