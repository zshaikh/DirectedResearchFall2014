.class public final enum Lcom/flurry/android/monolithic/sdk/impl/ie;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/ie;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/android/monolithic/sdk/impl/ie;

.field public static final enum b:Lcom/flurry/android/monolithic/sdk/impl/ie;

.field private static final synthetic e:[Lcom/flurry/android/monolithic/sdk/impl/ie;


# instance fields
.field public final c:I

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ie;

    const-string v1, "PhoneId"

    invoke-direct {v0, v1, v4, v3, v3}, Lcom/flurry/android/monolithic/sdk/impl/ie;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ie;->a:Lcom/flurry/android/monolithic/sdk/impl/ie;

    .line 6
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ie;

    const-string v1, "Sha1Imei"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/flurry/android/monolithic/sdk/impl/ie;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ie;->b:Lcom/flurry/android/monolithic/sdk/impl/ie;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/ie;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ie;->a:Lcom/flurry/android/monolithic/sdk/impl/ie;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ie;->b:Lcom/flurry/android/monolithic/sdk/impl/ie;

    aput-object v1, v0, v3

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ie;->e:[Lcom/flurry/android/monolithic/sdk/impl/ie;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/flurry/android/monolithic/sdk/impl/ie;->c:I

    .line 13
    iput-boolean p4, p0, Lcom/flurry/android/monolithic/sdk/impl/ie;->d:Z

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ie;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/ie;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/ie;

    return-object p0
.end method

.method public static values()[Lcom/flurry/android/monolithic/sdk/impl/ie;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ie;->e:[Lcom/flurry/android/monolithic/sdk/impl/ie;

    invoke-virtual {v0}, [Lcom/flurry/android/monolithic/sdk/impl/ie;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/monolithic/sdk/impl/ie;

    return-object v0
.end method
