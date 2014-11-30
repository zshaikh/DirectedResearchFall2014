.class public final Lcom/appoxee/utils/RandomString;
.super Ljava/lang/Object;
.source "RandomString.java"


# static fields
.field private static length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0xd

    sput v0, Lcom/appoxee/utils/RandomString;->length:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 13
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 14
    .local v0, "random":Ljava/security/SecureRandom;
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x82

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    sget v2, Lcom/appoxee/utils/RandomString;->length:I

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
