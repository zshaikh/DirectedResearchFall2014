.class public Lcom/chartboost/sdk/impl/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/ah;


# static fields
.field static final a:[Ljava/lang/String;


# instance fields
.field private b:[B

.field private c:[B

.field private d:Lcom/chartboost/sdk/impl/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 512
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/chartboost/sdk/impl/ak;->a:[Ljava/lang/String;

    .line 522
    const/16 v0, 0x30

    const/16 v1, 0x39

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/ak;->a(BB)V

    .line 523
    const/16 v0, 0x61

    const/16 v1, 0x7a

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/ak;->a(BB)V

    .line 524
    const/16 v0, 0x41

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/ak;->a(BB)V

    .line 525
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ak;->b:[B

    .line 497
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ak;->c:[B

    .line 499
    new-instance v0, Lcom/chartboost/sdk/impl/aq;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/aq;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ak;->d:Lcom/chartboost/sdk/impl/aq;

    return-void
.end method

.method static a(BB)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 514
    move v0, p0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 515
    const-string v1, ""

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 517
    sget-object v2, Lcom/chartboost/sdk/impl/ak;->a:[Ljava/lang/String;

    aput-object v1, v2, v0

    .line 518
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 519
    goto :goto_0

    .line 520
    :cond_0
    return-void
.end method
