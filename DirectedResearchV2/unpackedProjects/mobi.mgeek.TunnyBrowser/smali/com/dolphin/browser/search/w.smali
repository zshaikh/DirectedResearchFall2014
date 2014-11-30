.class public Lcom/dolphin/browser/search/w;
.super Ljava/lang/Object;
.source "SuggestionAdapterBase.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:F

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput-object p1, p0, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    .line 583
    iput-object p2, p0, Lcom/dolphin/browser/search/w;->b:Ljava/lang/String;

    .line 584
    iput p3, p0, Lcom/dolphin/browser/search/w;->d:I

    .line 585
    iput-object p4, p0, Lcom/dolphin/browser/search/w;->f:Ljava/lang/String;

    .line 586
    return-void
.end method


# virtual methods
.method a(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 619
    iget-object v0, p0, Lcom/dolphin/browser/search/w;->b:Ljava/lang/String;

    .line 620
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 621
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 626
    :cond_0
    :goto_0
    return-object v0

    .line 621
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/search/w;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 623
    :cond_2
    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/dolphin/browser/search/w;->d:I

    invoke-static {v0}, Lcom/dolphin/browser/search/y;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/search/w;->d:I

    invoke-static {v0}, Lcom/dolphin/browser/search/y;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 636
    iget-object v0, p0, Lcom/dolphin/browser/search/w;->f:Ljava/lang/String;

    .line 637
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 638
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 643
    :cond_0
    :goto_0
    return-object v0

    .line 638
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/search/w;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 640
    :cond_2
    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/dolphin/browser/search/w;->d:I

    invoke-static {v0}, Lcom/dolphin/browser/search/y;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/search/w;->d:I

    invoke-static {v0}, Lcom/dolphin/browser/search/y;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/search/w;->d:I

    invoke-static {v0}, Lcom/dolphin/browser/search/y;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/dolphin/browser/search/w;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 2

    .prologue
    .line 601
    sget-object v0, Lcom/dolphin/browser/search/y;->e:Lcom/dolphin/browser/search/y;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/search/w;->d:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/search/w;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/w;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/w;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/w;->b(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 658
    sget-object v0, Lcom/dolphin/browser/search/y;->e:Lcom/dolphin/browser/search/y;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/search/w;->d:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/search/w;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/dolphin/browser/search/w;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 660
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    .line 661
    invoke-interface {v0}, Lcom/dolphin/browser/core/IBrowserSettings;->getSearchEngine()Lcom/dolphin/browser/search/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/search/w;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/search/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 669
    const-string v0, "[%s]%s(%s)%f"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/dolphin/browser/search/k;->j()[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/dolphin/browser/search/w;->d:I

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dolphin/browser/search/w;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/dolphin/browser/search/w;->e:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
