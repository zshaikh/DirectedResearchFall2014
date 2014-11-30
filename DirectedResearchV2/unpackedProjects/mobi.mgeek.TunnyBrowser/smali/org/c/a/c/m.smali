.class public final enum Lorg/c/a/c/m;
.super Ljava/lang/Enum;
.source "Buffers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/c/a/c/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/c/a/c/m;

.field public static final enum b:Lorg/c/a/c/m;

.field public static final enum c:Lorg/c/a/c/m;

.field private static final synthetic d:[Lorg/c/a/c/m;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lorg/c/a/c/m;

    const-string v1, "BYTE_ARRAY"

    invoke-direct {v0, v1, v2}, Lorg/c/a/c/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/c/a/c/m;->a:Lorg/c/a/c/m;

    new-instance v0, Lorg/c/a/c/m;

    const-string v1, "DIRECT"

    invoke-direct {v0, v1, v3}, Lorg/c/a/c/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/c/a/c/m;->b:Lorg/c/a/c/m;

    new-instance v0, Lorg/c/a/c/m;

    const-string v1, "INDIRECT"

    invoke-direct {v0, v1, v4}, Lorg/c/a/c/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/c/a/c/m;->c:Lorg/c/a/c/m;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/c/a/c/m;

    sget-object v1, Lorg/c/a/c/m;->a:Lorg/c/a/c/m;

    aput-object v1, v0, v2

    sget-object v1, Lorg/c/a/c/m;->b:Lorg/c/a/c/m;

    aput-object v1, v0, v3

    sget-object v1, Lorg/c/a/c/m;->c:Lorg/c/a/c/m;

    aput-object v1, v0, v4

    sput-object v0, Lorg/c/a/c/m;->d:[Lorg/c/a/c/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/c/a/c/m;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/c/a/c/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/c/a/c/m;

    return-object v0
.end method

.method public static values()[Lorg/c/a/c/m;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/c/a/c/m;->d:[Lorg/c/a/c/m;

    invoke-virtual {v0}, [Lorg/c/a/c/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/c/a/c/m;

    return-object v0
.end method
