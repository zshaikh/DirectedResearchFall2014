.class public Lcom/bitrhymes/iab/util/IabException;
.super Ljava/lang/Exception;
.source "IabException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field mResult:Lcom/bitrhymes/iab/util/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "response"
    .parameter "message"

    .prologue
    .line 18
    new-instance v0, Lcom/bitrhymes/iab/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/bitrhymes/iab/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/bitrhymes/iab/util/IabException;-><init>(Lcom/bitrhymes/iab/util/IabResult;)V

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "response"
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 27
    new-instance v0, Lcom/bitrhymes/iab/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/bitrhymes/iab/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/bitrhymes/iab/util/IabException;-><init>(Lcom/bitrhymes/iab/util/IabResult;Ljava/lang/Exception;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/bitrhymes/iab/util/IabResult;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bitrhymes/iab/util/IabException;-><init>(Lcom/bitrhymes/iab/util/IabResult;Ljava/lang/Exception;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/bitrhymes/iab/util/IabResult;Ljava/lang/Exception;)V
    .locals 1
    .parameter "r"
    .parameter "cause"

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/bitrhymes/iab/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    iput-object p1, p0, Lcom/bitrhymes/iab/util/IabException;->mResult:Lcom/bitrhymes/iab/util/IabResult;

    .line 24
    return-void
.end method


# virtual methods
.method public getResult()Lcom/bitrhymes/iab/util/IabResult;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bitrhymes/iab/util/IabException;->mResult:Lcom/bitrhymes/iab/util/IabResult;

    return-object v0
.end method
