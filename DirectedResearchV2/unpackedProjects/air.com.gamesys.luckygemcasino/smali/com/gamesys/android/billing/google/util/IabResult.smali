.class public Lcom/gamesys/android/billing/google/util/IabResult;
.super Ljava/lang/Object;
.source "IabResult.java"


# static fields
.field private static final RESPONSE_USER_ALREADY_OWN_ITEM:I = 0x7

.field private static final RESPONSE_USER_CANCEL:I = -0x3ed

.field private static final RESPONSE_USER_NOT_OWN_ITEM:I = 0x8


# instance fields
.field mMessage:Ljava/lang/String;

.field mResponse:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/gamesys/android/billing/google/util/IabResult;->mResponse:I

    .line 46
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    :cond_0
    invoke-static {p1}, Lcom/gamesys/android/billing/google/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gamesys/android/billing/google/util/IabResult;->mMessage:Ljava/lang/String;

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " (response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/gamesys/android/billing/google/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gamesys/android/billing/google/util/IabResult;->mMessage:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/IabResult;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/gamesys/android/billing/google/util/IabResult;->mResponse:I

    return v0
.end method

.method public hasUserCancelled()Z
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/gamesys/android/billing/google/util/IabResult;->mResponse:I

    const/16 v1, -0x3ed

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailure()Z
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/gamesys/android/billing/google/util/IabResult;->mResponse:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserNotOwningItem()Z
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lcom/gamesys/android/billing/google/util/IabResult;->mResponse:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserOwnItem()Z
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/gamesys/android/billing/google/util/IabResult;->mResponse:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IabResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
