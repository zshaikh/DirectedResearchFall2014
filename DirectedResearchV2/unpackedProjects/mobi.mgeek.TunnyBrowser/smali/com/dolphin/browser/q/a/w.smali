.class public Lcom/dolphin/browser/q/a/w;
.super Ljava/lang/Object;
.source "UploadNotificationItem.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/dolphin/browser/q/a/w;->c:I

    .line 13
    iput v0, p0, Lcom/dolphin/browser/q/a/w;->d:I

    .line 17
    iput p1, p0, Lcom/dolphin/browser/q/a/w;->a:I

    .line 18
    iput-object p2, p0, Lcom/dolphin/browser/q/a/w;->b:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/dolphin/browser/q/a/w;->c:I

    .line 20
    iput p4, p0, Lcom/dolphin/browser/q/a/w;->d:I

    .line 21
    return-void
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/dolphin/browser/q/a/w;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Z
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/dolphin/browser/q/a/w;->d:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/q/a/w;->c:I

    iget v1, p0, Lcom/dolphin/browser/q/a/w;->d:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/dolphin/browser/q/a/w;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dolphin/browser/q/a/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/dolphin/browser/q/a/w;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/dolphin/browser/q/a/w;->d:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    const-string v0, ""

    .line 41
    invoke-virtual {p0}, Lcom/dolphin/browser/q/a/w;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    iget v0, p0, Lcom/dolphin/browser/q/a/w;->c:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/dolphin/browser/q/a/w;->d:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    const/16 v0, 0x25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    const-string v0, ""

    .line 53
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    .line 54
    invoke-direct {p0}, Lcom/dolphin/browser/q/a/w;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e03bd

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/q/a/w;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e03bc

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/dolphin/browser/q/a/w;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/dolphin/browser/q/a/w;->i()Z

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
