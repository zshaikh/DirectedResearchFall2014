.class public Lcom/dolphin/browser/f/a/l;
.super Lcom/dolphin/browser/f/a/k;
.source "RandomSampler.java"


# instance fields
.field private a:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/dolphin/browser/f/a/k;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/f/a/l;->a:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 3

    .prologue
    .line 18
    const/4 v1, 0x0

    .line 20
    mul-int v2, p1, p2

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/f/a/l;->a:Ljava/util/Random;

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 22
    if-ltz v0, :cond_0

    if-ge v0, v2, :cond_0

    .line 28
    :goto_0
    return v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    goto :goto_0
.end method
