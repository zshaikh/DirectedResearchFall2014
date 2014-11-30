.class public Lcom/dolphin/browser/preload/b/b;
.super Ljava/lang/Object;
.source "WebServiceUriBuilder.java"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/preload/b/b;->a:Landroid/net/Uri;

    .line 26
    iput-object p2, p0, Lcom/dolphin/browser/preload/b/b;->b:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/dolphin/browser/preload/b/b;->c:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/dolphin/browser/preload/b/b;->d:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/dolphin/browser/preload/b/b;->e:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/dolphin/browser/preload/b/b;->f:Ljava/lang/String;

    .line 31
    iput p7, p0, Lcom/dolphin/browser/preload/b/b;->g:I

    .line 32
    iput-object p8, p0, Lcom/dolphin/browser/preload/b/b;->h:Ljava/lang/String;

    .line 33
    iput p9, p0, Lcom/dolphin/browser/preload/b/b;->i:I

    .line 34
    iput-object p10, p0, Lcom/dolphin/browser/preload/b/b;->j:Ljava/lang/String;

    .line 35
    iput-object p11, p0, Lcom/dolphin/browser/preload/b/b;->k:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri$Builder;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    const-string v0, "os"

    iget-object v1, p0, Lcom/dolphin/browser/preload/b/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pname"

    iget-object v2, p0, Lcom/dolphin/browser/preload/b/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "src"

    iget-object v2, p0, Lcom/dolphin/browser/preload/b/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "l"

    iget-object v2, p0, Lcom/dolphin/browser/preload/b/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "v"

    iget v2, p0, Lcom/dolphin/browser/preload/b/b;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "re"

    iget-object v2, p0, Lcom/dolphin/browser/preload/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sdk"

    iget v2, p0, Lcom/dolphin/browser/preload/b/b;->i:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "dt"

    iget-object v2, p0, Lcom/dolphin/browser/preload/b/b;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "no"

    iget-object v2, p0, Lcom/dolphin/browser/preload/b/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "nd"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
