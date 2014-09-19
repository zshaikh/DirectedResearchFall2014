.class final Lcom/vungle/sdk/i$a;
.super Lcom/vungle/sdk/k$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/i;


# direct methods
.method private constructor <init>(Lcom/vungle/sdk/i;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vungle/sdk/i$a;->a:Lcom/vungle/sdk/i;

    invoke-direct {p0, p1}, Lcom/vungle/sdk/k$a;-><init>(Lcom/vungle/sdk/k;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/sdk/i;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/vungle/sdk/i$a;-><init>(Lcom/vungle/sdk/i;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 43
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/vungle/sdk/i$a;->a:Lcom/vungle/sdk/i;

    iget-object v0, v0, Lcom/vungle/sdk/i;->a:Lcom/vungle/sdk/i$b;

    invoke-interface {v0}, Lcom/vungle/sdk/i$b;->b()V

    move v0, v1

    .line 59
    :goto_0
    return v0

    .line 47
    :cond_0
    const-string v0, "watch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/vungle/sdk/i$a;->a:Lcom/vungle/sdk/i;

    iget-object v0, v0, Lcom/vungle/sdk/i;->a:Lcom/vungle/sdk/i$b;

    invoke-interface {v0}, Lcom/vungle/sdk/i$b;->a()V

    move v0, v1

    .line 49
    goto :goto_0

    .line 51
    :cond_1
    const-string v0, "download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/vungle/sdk/i$a;->a:Lcom/vungle/sdk/i;

    iget-object v0, v0, Lcom/vungle/sdk/i;->a:Lcom/vungle/sdk/i$b;

    invoke-interface {v0}, Lcom/vungle/sdk/i$b;->c()V

    move v0, v1

    .line 53
    goto :goto_0

    .line 55
    :cond_2
    const-string v0, "custom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/vungle/sdk/i$a;->a:Lcom/vungle/sdk/i;

    iget-object v0, v0, Lcom/vungle/sdk/i;->a:Lcom/vungle/sdk/i$b;

    invoke-interface {v0, p2}, Lcom/vungle/sdk/i$b;->a(Ljava/lang/String;)V

    move v0, v1

    .line 57
    goto :goto_0

    .line 59
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
