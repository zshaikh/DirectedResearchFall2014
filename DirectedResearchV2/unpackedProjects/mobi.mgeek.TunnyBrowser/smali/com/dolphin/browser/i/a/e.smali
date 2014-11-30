.class public Lcom/dolphin/browser/i/a/e;
.super Ljava/lang/Object;
.source "WebServiceUriBuilder.java"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/i/a/e;->a:Landroid/net/Uri;

    .line 19
    iput-object p2, p0, Lcom/dolphin/browser/i/a/e;->b:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/dolphin/browser/i/a/e;->c:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/dolphin/browser/i/a/e;->e:Ljava/lang/String;

    .line 22
    iput p4, p0, Lcom/dolphin/browser/i/a/e;->d:I

    .line 23
    return-void
.end method

.method private b()Landroid/net/Uri$Builder;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/i/a/e;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 33
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dolphin/browser/i/a/e;->b()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/i/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/i/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/i/a/e;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/i/a/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
