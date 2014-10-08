.class final Lcom/vungle/sdk/h$a;
.super Lcom/vungle/sdk/k$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/h;


# direct methods
.method private constructor <init>(Lcom/vungle/sdk/h;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vungle/sdk/h$a;->a:Lcom/vungle/sdk/h;

    invoke-direct {p0, p1}, Lcom/vungle/sdk/k$a;-><init>(Lcom/vungle/sdk/k;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/sdk/h;B)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/vungle/sdk/h$a;-><init>(Lcom/vungle/sdk/h;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 45
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/vungle/sdk/h$a;->a:Lcom/vungle/sdk/h;

    iget-object v0, v0, Lcom/vungle/sdk/h;->a:Lcom/vungle/sdk/h$b;

    invoke-interface {v0}, Lcom/vungle/sdk/h$b;->b()V

    move v0, v1

    .line 62
    :goto_0
    return v0

    .line 49
    :cond_0
    const-string v0, "download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/vungle/sdk/h$a;->a:Lcom/vungle/sdk/h;

    iget-object v0, v0, Lcom/vungle/sdk/h;->a:Lcom/vungle/sdk/h$b;

    invoke-interface {v0}, Lcom/vungle/sdk/h$b;->c()V

    move v0, v1

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    const-string v0, "replay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/vungle/sdk/h$a;->a:Lcom/vungle/sdk/h;

    iget-object v0, v0, Lcom/vungle/sdk/h;->a:Lcom/vungle/sdk/h$b;

    invoke-interface {v0}, Lcom/vungle/sdk/h$b;->d()V

    move v0, v1

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    const-string v0, "custom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/vungle/sdk/h$a;->a:Lcom/vungle/sdk/h;

    iget-object v0, v0, Lcom/vungle/sdk/h;->a:Lcom/vungle/sdk/h$b;

    invoke-interface {v0, p2}, Lcom/vungle/sdk/h$b;->a(Ljava/lang/String;)V

    move v0, v1

    .line 59
    goto :goto_0

    .line 62
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
