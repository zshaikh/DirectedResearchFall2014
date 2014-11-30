.class public Lcom/dolphin/browser/f/c/c;
.super Ljava/lang/Object;
.source "WebServiceUriBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/dolphin/browser/f/c/c;->a:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/dolphin/browser/f/c/c;->b:Ljava/lang/String;

    .line 15
    iput p3, p0, Lcom/dolphin/browser/f/c/c;->c:I

    .line 16
    iput-object p4, p0, Lcom/dolphin/browser/f/c/c;->d:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri$Builder;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 20
    const-string v0, "pn"

    iget-object v1, p0, Lcom/dolphin/browser/f/c/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "src"

    iget-object v2, p0, Lcom/dolphin/browser/f/c/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "vn"

    iget v2, p0, Lcom/dolphin/browser/f/c/c;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/dolphin/browser/f/c/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
