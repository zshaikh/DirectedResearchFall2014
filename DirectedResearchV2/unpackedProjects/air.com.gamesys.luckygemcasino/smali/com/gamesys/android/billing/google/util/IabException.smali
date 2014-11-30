.class public Lcom/gamesys/android/billing/google/util/IabException;
.super Ljava/lang/Exception;
.source "IabException.java"


# static fields
.field private static final serialVersionUID:J = 0x3d9f2790a1805698L


# instance fields
.field private mResult:Lcom/gamesys/android/billing/google/util/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Lcom/gamesys/android/billing/google/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/gamesys/android/billing/google/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/gamesys/android/billing/google/util/IabException;-><init>(Lcom/gamesys/android/billing/google/util/IabResult;)V

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 40
    new-instance v0, Lcom/gamesys/android/billing/google/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/gamesys/android/billing/google/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/gamesys/android/billing/google/util/IabException;-><init>(Lcom/gamesys/android/billing/google/util/IabResult;Ljava/lang/Exception;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/gamesys/android/billing/google/util/IabResult;)V
    .locals 1
    .param p1, "r"    # Lcom/gamesys/android/billing/google/util/IabResult;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gamesys/android/billing/google/util/IabException;-><init>(Lcom/gamesys/android/billing/google/util/IabResult;Ljava/lang/Exception;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/gamesys/android/billing/google/util/IabResult;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "r"    # Lcom/gamesys/android/billing/google/util/IabResult;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/gamesys/android/billing/google/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    iput-object p1, p0, Lcom/gamesys/android/billing/google/util/IabException;->mResult:Lcom/gamesys/android/billing/google/util/IabResult;

    .line 37
    return-void
.end method


# virtual methods
.method public getResult()Lcom/gamesys/android/billing/google/util/IabResult;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/IabException;->mResult:Lcom/gamesys/android/billing/google/util/IabResult;

    return-object v0
.end method
