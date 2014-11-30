.class Lcom/google/ads/b/r;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/b/w;

.field private final b:Landroid/webkit/WebView;

.field private final c:Lcom/google/ads/b/y;

.field private final d:Lcom/google/ads/AdRequest$ErrorCode;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/b/w;Landroid/webkit/WebView;Lcom/google/ads/b/y;Lcom/google/ads/AdRequest$ErrorCode;Z)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/google/ads/b/r;->a:Lcom/google/ads/b/w;

    .line 108
    iput-object p2, p0, Lcom/google/ads/b/r;->b:Landroid/webkit/WebView;

    .line 109
    iput-object p3, p0, Lcom/google/ads/b/r;->c:Lcom/google/ads/b/y;

    .line 110
    iput-object p4, p0, Lcom/google/ads/b/r;->d:Lcom/google/ads/AdRequest$ErrorCode;

    .line 111
    iput-boolean p5, p0, Lcom/google/ads/b/r;->e:Z

    .line 112
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/ads/b/r;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/ads/b/r;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 119
    iget-object v0, p0, Lcom/google/ads/b/r;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/ads/b/r;->c:Lcom/google/ads/b/y;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/google/ads/b/r;->c:Lcom/google/ads/b/y;

    invoke-virtual {v0}, Lcom/google/ads/b/y;->a()V

    .line 128
    :cond_1
    iget-boolean v0, p0, Lcom/google/ads/b/r;->e:Z

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/google/ads/b/r;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->l()Lcom/google/ads/b/e;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/google/ads/b/e;->stopLoading()V

    .line 131
    iget-object v0, p0, Lcom/google/ads/b/r;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->i:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/google/ads/b/r;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->i:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/google/ads/b/r;->a:Lcom/google/ads/b/w;

    iget-object v1, p0, Lcom/google/ads/b/r;->d:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/w;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 138
    return-void
.end method
