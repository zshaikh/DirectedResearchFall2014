.class Lcom/dolphin/browser/share/j;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Lcom/dolphin/browser/share/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/b/k;

.field final synthetic b:Lcom/dolphin/browser/share/i;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/i;Lcom/dolphin/browser/share/b/k;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/dolphin/browser/share/j;->b:Lcom/dolphin/browser/share/i;

    iput-object p2, p0, Lcom/dolphin/browser/share/j;->a:Lcom/dolphin/browser/share/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 165
    if-eqz p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/dolphin/browser/share/j;->b:Lcom/dolphin/browser/share/i;

    iget-object v0, v0, Lcom/dolphin/browser/share/i;->a:Lcom/dolphin/browser/share/ShareActivity;

    iget-object v1, p0, Lcom/dolphin/browser/share/j;->a:Lcom/dolphin/browser/share/b/k;

    invoke-virtual {v1}, Lcom/dolphin/browser/share/b/k;->d()I

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/dolphin/browser/share/ShareActivity;->a(Lcom/dolphin/browser/share/ShareActivity;IZ)V

    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/share/j;->b:Lcom/dolphin/browser/share/i;

    iget-object v0, v0, Lcom/dolphin/browser/share/i;->a:Lcom/dolphin/browser/share/ShareActivity;

    iget-object v1, p0, Lcom/dolphin/browser/share/j;->b:Lcom/dolphin/browser/share/i;

    iget-object v1, v1, Lcom/dolphin/browser/share/i;->a:Lcom/dolphin/browser/share/ShareActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e059a

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dolphin/browser/share/j;->a:Lcom/dolphin/browser/share/b/k;

    invoke-virtual {v5}, Lcom/dolphin/browser/share/b/k;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/share/ShareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "failed post message"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/j;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 182
    iget-object v0, p0, Lcom/dolphin/browser/share/j;->b:Lcom/dolphin/browser/share/i;

    iget-object v0, v0, Lcom/dolphin/browser/share/i;->a:Lcom/dolphin/browser/share/ShareActivity;

    iget-object v1, p0, Lcom/dolphin/browser/share/j;->a:Lcom/dolphin/browser/share/b/k;

    invoke-virtual {v1}, Lcom/dolphin/browser/share/b/k;->d()I

    move-result v1

    invoke-static {v0, v1, v5}, Lcom/dolphin/browser/share/ShareActivity;->a(Lcom/dolphin/browser/share/ShareActivity;IZ)V

    .line 183
    iget-object v0, p0, Lcom/dolphin/browser/share/j;->b:Lcom/dolphin/browser/share/i;

    iget-object v0, v0, Lcom/dolphin/browser/share/i;->a:Lcom/dolphin/browser/share/ShareActivity;

    iget-object v1, p0, Lcom/dolphin/browser/share/j;->b:Lcom/dolphin/browser/share/i;

    iget-object v1, v1, Lcom/dolphin/browser/share/i;->a:Lcom/dolphin/browser/share/ShareActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0599

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/dolphin/browser/share/j;->a:Lcom/dolphin/browser/share/b/k;

    invoke-virtual {v4}, Lcom/dolphin/browser/share/b/k;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/share/ShareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    return-void
.end method
