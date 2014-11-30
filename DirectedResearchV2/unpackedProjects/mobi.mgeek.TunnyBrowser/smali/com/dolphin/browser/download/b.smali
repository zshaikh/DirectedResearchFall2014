.class public Lcom/dolphin/browser/download/b;
.super Ljava/lang/Object;
.source "CategoryInfo.java"


# instance fields
.field private a:Lcom/dolphin/browser/download/a;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/download/a;Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/dolphin/browser/download/b;->a:Lcom/dolphin/browser/download/a;

    .line 23
    iput-object p2, p0, Lcom/dolphin/browser/download/b;->b:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/dolphin/browser/download/b;->c:I

    .line 25
    iput v0, p0, Lcom/dolphin/browser/download/b;->d:I

    .line 26
    iput v0, p0, Lcom/dolphin/browser/download/b;->e:I

    .line 27
    return-void
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/dolphin/browser/download/b;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 53
    iget v0, p0, Lcom/dolphin/browser/download/b;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/dolphin/browser/download/b;->d:I

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iput p1, p0, Lcom/dolphin/browser/download/b;->d:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/dolphin/browser/download/b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/download/b;->e:I

    .line 34
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/dolphin/browser/download/b;->d:I

    .line 18
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/dolphin/browser/download/b;->d:I

    iget v1, p0, Lcom/dolphin/browser/download/b;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/download/b;->d:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/download/b;->e:I

    .line 42
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/b;->b(I)V

    .line 49
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/dolphin/browser/download/b;->d:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/download/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/dolphin/browser/download/b;->c:I

    return v0
.end method

.method public g()Lcom/dolphin/browser/download/a;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/download/b;->a:Lcom/dolphin/browser/download/a;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/dolphin/browser/download/b;->d:I

    .line 77
    iput v0, p0, Lcom/dolphin/browser/download/b;->e:I

    .line 78
    return-void
.end method
