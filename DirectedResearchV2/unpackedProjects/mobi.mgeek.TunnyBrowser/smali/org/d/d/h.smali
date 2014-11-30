.class public final enum Lorg/d/d/h;
.super Ljava/lang/Enum;
.source "SignatureType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/d/d/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/d/d/h;

.field public static final enum b:Lorg/d/d/h;

.field private static final synthetic c:[Lorg/d/d/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lorg/d/d/h;

    const-string v1, "Header"

    invoke-direct {v0, v1, v2}, Lorg/d/d/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/d/d/h;->a:Lorg/d/d/h;

    .line 6
    new-instance v0, Lorg/d/d/h;

    const-string v1, "QueryString"

    invoke-direct {v0, v1, v3}, Lorg/d/d/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/d/d/h;->b:Lorg/d/d/h;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/d/d/h;

    sget-object v1, Lorg/d/d/h;->a:Lorg/d/d/h;

    aput-object v1, v0, v2

    sget-object v1, Lorg/d/d/h;->b:Lorg/d/d/h;

    aput-object v1, v0, v3

    sput-object v0, Lorg/d/d/h;->c:[Lorg/d/d/h;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/d/d/h;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lorg/d/d/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/d/d/h;

    return-object v0
.end method

.method public static values()[Lorg/d/d/h;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lorg/d/d/h;->c:[Lorg/d/d/h;

    invoke-virtual {v0}, [Lorg/d/d/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/d/d/h;

    return-object v0
.end method
