.class public Lcom/dolphin/browser/DolphinService/WebService/i;
.super Ljava/lang/Object;
.source "WebServiceUriBuilder.java"


# instance fields
.field private a:Landroid/net/Uri$Builder;


# direct methods
.method public constructor <init>(Landroid/net/Uri$Builder;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/WebService/i;->a:Landroid/net/Uri$Builder;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/i;->a:Landroid/net/Uri$Builder;

    .line 42
    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/DolphinService/WebService/i;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/h;->j()Lcom/dolphin/browser/DolphinService/WebService/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/h;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/WebService/i;->a(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/dolphin/browser/DolphinService/WebService/i;
    .locals 1

    .prologue
    .line 73
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/WebService/i;->c(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;
    .locals 1

    .prologue
    .line 57
    const-string v0, "pn"

    invoke-virtual {p0, v0, p1}, Lcom/dolphin/browser/DolphinService/WebService/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;
    .locals 1

    .prologue
    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/i;->a:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 162
    :cond_0
    return-object p0
.end method

.method public b()Lcom/dolphin/browser/DolphinService/WebService/i;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/h;->j()Lcom/dolphin/browser/DolphinService/WebService/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/WebService/i;->b(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;
    .locals 1

    .prologue
    .line 61
    const-string v0, "src"

    invoke-virtual {p0, v0, p1}, Lcom/dolphin/browser/DolphinService/WebService/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/dolphin/browser/DolphinService/WebService/i;
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/h;->j()Lcom/dolphin/browser/DolphinService/WebService/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/h;->i()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/WebService/i;->d(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;

    .line 110
    :cond_0
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;
    .locals 1

    .prologue
    .line 69
    const-string v0, "mt"

    invoke-virtual {p0, v0, p1}, Lcom/dolphin/browser/DolphinService/WebService/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/dolphin/browser/DolphinService/WebService/i;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/h;->j()Lcom/dolphin/browser/DolphinService/WebService/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/h;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/WebService/i;->e(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;
    .locals 1

    .prologue
    .line 77
    const-string v0, "op"

    invoke-virtual {p0, v0, p1}, Lcom/dolphin/browser/DolphinService/WebService/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/i;->a:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;
    .locals 1

    .prologue
    .line 115
    const-string v0, "vn"

    invoke-virtual {p0, v0, p1}, Lcom/dolphin/browser/DolphinService/WebService/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/dolphin/browser/DolphinService/WebService/i;
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/i;->a:Landroid/net/Uri$Builder;

    const-string v1, "avn"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 191
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;
    .locals 1

    .prologue
    .line 119
    const-string v0, "lc"

    invoke-virtual {p0, v0, p1}, Lcom/dolphin/browser/DolphinService/WebService/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/i;->a:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
