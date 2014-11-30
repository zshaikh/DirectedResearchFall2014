.class public Lcom/mgeek/android/util/EmailAddressValidator;
.super Ljava/lang/Object;
.source "EmailAddressValidator.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValid(Ljava/lang/CharSequence;)Z
    .locals 12
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/16 v11, 0x40

    const/16 v10, 0x2e

    const/4 v0, 0x0

    .line 27
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 31
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 32
    aget-object v4, v2, v1

    .line 33
    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 38
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 39
    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 40
    invoke-virtual {v5, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 41
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v5, v10, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 42
    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 43
    if-lez v7, :cond_3

    if-ne v7, v8, :cond_3

    add-int/lit8 v7, v8, 0x1

    if-ge v7, v9, :cond_3

    if-gt v9, v5, :cond_3

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_3

    .line 45
    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 31
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
