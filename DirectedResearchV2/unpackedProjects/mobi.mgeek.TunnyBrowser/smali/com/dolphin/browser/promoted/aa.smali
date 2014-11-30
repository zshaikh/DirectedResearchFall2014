.class public Lcom/dolphin/browser/promoted/aa;
.super Ljava/lang/Object;
.source "WebServiceUriBuilder.java"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/promoted/aa;->a:Landroid/net/Uri;

    .line 24
    iput-object p2, p0, Lcom/dolphin/browser/promoted/aa;->b:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/dolphin/browser/promoted/aa;->c:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/dolphin/browser/promoted/aa;->d:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/dolphin/browser/promoted/aa;->e:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/dolphin/browser/promoted/aa;->f:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri$Builder;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    const-string v0, "os"

    iget-object v1, p0, Lcom/dolphin/browser/promoted/aa;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pn"

    iget-object v2, p0, Lcom/dolphin/browser/promoted/aa;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "l"

    iget-object v2, p0, Lcom/dolphin/browser/promoted/aa;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "src"

    iget-object v2, p0, Lcom/dolphin/browser/promoted/aa;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 73
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 74
    const-string v1, "mt"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 77
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/promoted/f;->a()Lcom/dolphin/browser/promoted/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/promoted/f;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/bs;->a(Landroid/content/Context;Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
