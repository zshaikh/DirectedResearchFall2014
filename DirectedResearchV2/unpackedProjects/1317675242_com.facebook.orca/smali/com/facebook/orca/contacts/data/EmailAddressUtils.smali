.class public Lcom/facebook/orca/contacts/data/EmailAddressUtils;
.super Ljava/lang/Object;
.source "EmailAddressUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 50
    move v0, v5

    move v1, v5

    move v2, v5

    .line 53
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 54
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 55
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v5

    .line 70
    :goto_1
    return v0

    .line 58
    :cond_0
    const/16 v4, 0x40

    if-ne v3, v4, :cond_2

    .line 59
    if-eqz v2, :cond_1

    move v0, v5

    .line 61
    goto :goto_1

    :cond_1
    move v2, v6

    .line 66
    :cond_2
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_3

    if-eqz v2, :cond_3

    move v1, v6

    .line 53
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    move v0, v6

    goto :goto_1

    :cond_5
    move v0, v5

    goto :goto_1
.end method
