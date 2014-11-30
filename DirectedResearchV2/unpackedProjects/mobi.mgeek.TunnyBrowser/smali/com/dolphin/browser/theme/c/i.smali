.class public Lcom/dolphin/browser/theme/c/i;
.super Ljava/lang/Object;
.source "ResourceValue.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/dolphin/browser/theme/c/i;->a:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/theme/c/i;->c:I

    .line 41
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "@drawable/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/theme/c/i;->c:I

    .line 46
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/c/i;->b:Ljava/lang/String;

    .line 53
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string v0, "@color/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/dolphin/browser/theme/c/i;->c:I

    .line 49
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/c/i;->b:Ljava/lang/String;

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad format of reference"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/dolphin/browser/theme/c/i;->a:I

    return v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method c()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/dolphin/browser/theme/c/i;->c:I

    return v0
.end method
