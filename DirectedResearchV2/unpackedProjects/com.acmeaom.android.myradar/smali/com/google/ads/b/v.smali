.class Lcom/google/ads/b/v;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/b/n;

.field private final b:Lcom/google/ads/b/w;

.field private final c:Landroid/webkit/WebView;

.field private final d:Ljava/util/LinkedList;

.field private final e:I

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/ads/AdSize;


# direct methods
.method public constructor <init>(Lcom/google/ads/b/n;Lcom/google/ads/b/w;Landroid/webkit/WebView;Ljava/util/LinkedList;IZLjava/lang/String;Lcom/google/ads/AdSize;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/ads/b/v;->a:Lcom/google/ads/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/google/ads/b/v;->b:Lcom/google/ads/b/w;

    .line 191
    iput-object p3, p0, Lcom/google/ads/b/v;->c:Landroid/webkit/WebView;

    .line 192
    iput-object p4, p0, Lcom/google/ads/b/v;->d:Ljava/util/LinkedList;

    .line 193
    iput p5, p0, Lcom/google/ads/b/v;->e:I

    .line 194
    iput-boolean p6, p0, Lcom/google/ads/b/v;->f:Z

    .line 195
    iput-object p7, p0, Lcom/google/ads/b/v;->g:Ljava/lang/String;

    .line 196
    iput-object p8, p0, Lcom/google/ads/b/v;->h:Lcom/google/ads/AdSize;

    .line 197
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/ads/b/v;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/ads/b/v;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 204
    iget-object v0, p0, Lcom/google/ads/b/v;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/ads/b/v;->b:Lcom/google/ads/b/w;

    iget-object v1, p0, Lcom/google/ads/b/v;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/w;->a(Ljava/util/LinkedList;)V

    .line 207
    iget-object v0, p0, Lcom/google/ads/b/v;->b:Lcom/google/ads/b/w;

    iget v1, p0, Lcom/google/ads/b/v;->e:I

    invoke-virtual {v0, v1}, Lcom/google/ads/b/w;->a(I)V

    .line 208
    iget-object v0, p0, Lcom/google/ads/b/v;->b:Lcom/google/ads/b/w;

    iget-boolean v1, p0, Lcom/google/ads/b/v;->f:Z

    invoke-virtual {v0, v1}, Lcom/google/ads/b/w;->a(Z)V

    .line 209
    iget-object v0, p0, Lcom/google/ads/b/v;->b:Lcom/google/ads/b/w;

    iget-object v1, p0, Lcom/google/ads/b/v;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/w;->a(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/google/ads/b/v;->h:Lcom/google/ads/AdSize;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/google/ads/b/v;->a:Lcom/google/ads/b/n;

    invoke-static {v0}, Lcom/google/ads/b/n;->b(Lcom/google/ads/b/n;)Lcom/google/ads/l;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->g:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/ac;

    iget-object v1, p0, Lcom/google/ads/b/v;->h:Lcom/google/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/ac;->b(Lcom/google/ads/AdSize;)V

    .line 212
    iget-object v0, p0, Lcom/google/ads/b/v;->b:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->l()Lcom/google/ads/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/b/v;->h:Lcom/google/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/e;->setAdSize(Lcom/google/ads/AdSize;)V

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/google/ads/b/v;->b:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->B()V

    .line 215
    return-void
.end method
