.class final Lcom/vungle/sdk/i;
.super Lcom/vungle/sdk/k;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/i$a;,
        Lcom/vungle/sdk/i$b;
    }
.end annotation


# instance fields
.field a:Lcom/vungle/sdk/i$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/sdk/g$a;
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/sdk/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    check-cast p3, Lcom/vungle/sdk/i$b;

    iput-object p3, p0, Lcom/vungle/sdk/i;->a:Lcom/vungle/sdk/i$b;

    .line 18
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/vungle/sdk/f;

    invoke-direct {v0, p1}, Lcom/vungle/sdk/f;-><init>(Landroid/content/Context;)V

    .line 28
    iget-object v1, v0, Lcom/vungle/sdk/f;->a:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/vungle/sdk/i;->c:Landroid/view/View;

    .line 29
    iget-object v0, v0, Lcom/vungle/sdk/f;->b:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/vungle/sdk/i;->b:Landroid/webkit/WebView;

    .line 30
    return-void
.end method

.method protected final d()Lcom/vungle/sdk/k$a;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/vungle/sdk/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vungle/sdk/i$a;-><init>(Lcom/vungle/sdk/i;B)V

    return-object v0
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vungle/sdk/i;->a:Lcom/vungle/sdk/i$b;

    invoke-interface {v0}, Lcom/vungle/sdk/i$b;->a()V

    .line 66
    return-void
.end method
