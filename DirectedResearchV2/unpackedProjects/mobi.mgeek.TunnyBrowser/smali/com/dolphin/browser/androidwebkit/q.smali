.class Lcom/dolphin/browser/androidwebkit/q;
.super Ljava/lang/Object;
.source "MyWebView.java"

# interfaces
.implements Lcom/dolphin/browser/androidwebkit/n;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/androidwebkit/MyWebView;

.field private b:Z

.field private final c:Lcom/dolphin/browser/androidwebkit/o;

.field private final d:Lcom/dolphin/browser/androidwebkit/o;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebView;)V
    .locals 2

    .prologue
    .line 811
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    new-instance v0, Lcom/dolphin/browser/androidwebkit/o;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/dolphin/browser/androidwebkit/o;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebView;Lcom/dolphin/browser/androidwebkit/n;I)V

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->c:Lcom/dolphin/browser/androidwebkit/o;

    .line 813
    new-instance v0, Lcom/dolphin/browser/androidwebkit/o;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p0, v1}, Lcom/dolphin/browser/androidwebkit/o;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebView;Lcom/dolphin/browser/androidwebkit/n;I)V

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->d:Lcom/dolphin/browser/androidwebkit/o;

    .line 814
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->c:Lcom/dolphin/browser/androidwebkit/o;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/o;->a()V

    .line 819
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->d:Lcom/dolphin/browser/androidwebkit/o;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/o;->a()V

    .line 820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/q;->b:Z

    .line 821
    return-void
.end method

.method public a(Lcom/dolphin/browser/androidwebkit/o;II)V
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->c:Lcom/dolphin/browser/androidwebkit/o;

    if-ne v0, p1, :cond_0

    .line 864
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0, p2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Lcom/dolphin/browser/androidwebkit/MyWebView;I)I

    .line 865
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0, p3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->b(Lcom/dolphin/browser/androidwebkit/MyWebView;I)I

    .line 870
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0, p2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->e(Lcom/dolphin/browser/androidwebkit/MyWebView;I)I

    .line 871
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0, p3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->f(Lcom/dolphin/browser/androidwebkit/MyWebView;I)I

    .line 872
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/q;->d()V

    .line 873
    return-void

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0, p2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->c(Lcom/dolphin/browser/androidwebkit/MyWebView;I)I

    .line 868
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0, p3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->d(Lcom/dolphin/browser/androidwebkit/MyWebView;I)I

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/q;->b:Z

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 843
    :goto_0
    return-void

    .line 839
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/q;->b:Z

    .line 840
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->c:Lcom/dolphin/browser/androidwebkit/o;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/o;->b()V

    .line 841
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->d:Lcom/dolphin/browser/androidwebkit/o;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/o;->b()V

    .line 842
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->invalidate()V

    goto :goto_0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/q;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 859
    :goto_0
    return-void

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->c:Lcom/dolphin/browser/androidwebkit/o;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->g(Lcom/dolphin/browser/androidwebkit/MyWebView;)I

    move-result v1

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->h(Lcom/dolphin/browser/androidwebkit/MyWebView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/androidwebkit/o;->a(II)V

    .line 851
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->d:Lcom/dolphin/browser/androidwebkit/o;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->i(Lcom/dolphin/browser/androidwebkit/MyWebView;)I

    move-result v1

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->j(Lcom/dolphin/browser/androidwebkit/MyWebView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/androidwebkit/o;->a(II)V

    .line 852
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->g(Lcom/dolphin/browser/androidwebkit/MyWebView;)I

    move-result v1

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->e(I)I

    move-result v0

    .line 853
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->h(Lcom/dolphin/browser/androidwebkit/MyWebView;)I

    move-result v2

    iget-object v3, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->f(I)I

    move-result v1

    .line 854
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    iget-object v3, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->i(Lcom/dolphin/browser/androidwebkit/MyWebView;)I

    move-result v3

    iget-object v4, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v4}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->e(I)I

    move-result v2

    .line 855
    iget-object v3, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    iget-object v4, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v4}, Lcom/dolphin/browser/androidwebkit/MyWebView;->j(Lcom/dolphin/browser/androidwebkit/MyWebView;)I

    move-result v4

    iget-object v5, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v5}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/androidwebkit/MyWebView;->f(I)I

    move-result v3

    .line 856
    iget-object v4, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(IIII)V

    .line 857
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->k(Lcom/dolphin/browser/androidwebkit/MyWebView;)V

    .line 858
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/q;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->invalidate()V

    goto :goto_0
.end method
