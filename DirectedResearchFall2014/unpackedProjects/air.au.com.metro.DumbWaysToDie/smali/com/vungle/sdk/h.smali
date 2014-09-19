.class final Lcom/vungle/sdk/h;
.super Lcom/vungle/sdk/k;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/h$a;,
        Lcom/vungle/sdk/h$b;
    }
.end annotation


# instance fields
.field a:Lcom/vungle/sdk/h$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/sdk/g$a;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/sdk/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    check-cast p3, Lcom/vungle/sdk/h$b;

    iput-object p3, p0, Lcom/vungle/sdk/h;->a:Lcom/vungle/sdk/h$b;

    .line 19
    iget-object v0, p0, Lcom/vungle/sdk/h;->a:Lcom/vungle/sdk/h$b;

    invoke-interface {v0}, Lcom/vungle/sdk/h$b;->a()V

    .line 20
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/vungle/sdk/e;

    invoke-direct {v0, p1}, Lcom/vungle/sdk/e;-><init>(Landroid/content/Context;)V

    .line 29
    iget-object v1, v0, Lcom/vungle/sdk/e;->a:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/vungle/sdk/h;->c:Landroid/view/View;

    .line 30
    iget-object v0, v0, Lcom/vungle/sdk/e;->b:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/vungle/sdk/h;->b:Landroid/webkit/WebView;

    .line 31
    return-void
.end method

.method protected final d()Lcom/vungle/sdk/k$a;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/vungle/sdk/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vungle/sdk/h$a;-><init>(Lcom/vungle/sdk/h;B)V

    return-object v0
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vungle/sdk/h;->a:Lcom/vungle/sdk/h$b;

    invoke-interface {v0}, Lcom/vungle/sdk/h$b;->b()V

    .line 69
    return-void
.end method
