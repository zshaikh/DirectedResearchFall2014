.class public final enum Lcom/b/a/ak;
.super Ljava/lang/Enum;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/a/ak;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/ak;

.field public static final enum b:Lcom/b/a/ak;

.field public static final enum c:Lcom/b/a/ak;

.field private static final synthetic e:[Lcom/b/a/ak;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 512
    new-instance v0, Lcom/b/a/ak;

    const-string v1, "MEMORY"

    const v2, -0xff0100

    invoke-direct {v0, v1, v3, v2}, Lcom/b/a/ak;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/ak;->a:Lcom/b/a/ak;

    .line 513
    new-instance v0, Lcom/b/a/ak;

    const-string v1, "DISK"

    const/16 v2, -0x100

    invoke-direct {v0, v1, v4, v2}, Lcom/b/a/ak;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/ak;->b:Lcom/b/a/ak;

    .line 514
    new-instance v0, Lcom/b/a/ak;

    const-string v1, "NETWORK"

    const/high16 v2, -0x10000

    invoke-direct {v0, v1, v5, v2}, Lcom/b/a/ak;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/ak;->c:Lcom/b/a/ak;

    .line 511
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/b/a/ak;

    sget-object v1, Lcom/b/a/ak;->a:Lcom/b/a/ak;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/ak;->b:Lcom/b/a/ak;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/ak;->c:Lcom/b/a/ak;

    aput-object v1, v0, v5

    sput-object v0, Lcom/b/a/ak;->e:[Lcom/b/a/ak;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 518
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 519
    iput p3, p0, Lcom/b/a/ak;->d:I

    .line 520
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 511
    const-class v0, Lcom/b/a/ak;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/ak;

    return-object v0
.end method

.method public static values()[Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 511
    sget-object v0, Lcom/b/a/ak;->e:[Lcom/b/a/ak;

    invoke-virtual {v0}, [Lcom/b/a/ak;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/ak;

    return-object v0
.end method
