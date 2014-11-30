.class public final enum Lorg/d/d/j;
.super Ljava/lang/Enum;
.source "Verb.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/d/d/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/d/d/j;

.field public static final enum b:Lorg/d/d/j;

.field public static final enum c:Lorg/d/d/j;

.field public static final enum d:Lorg/d/d/j;

.field private static final synthetic e:[Lorg/d/d/j;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lorg/d/d/j;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lorg/d/d/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/d/d/j;->a:Lorg/d/d/j;

    new-instance v0, Lorg/d/d/j;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lorg/d/d/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/d/d/j;->b:Lorg/d/d/j;

    new-instance v0, Lorg/d/d/j;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lorg/d/d/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/d/d/j;->c:Lorg/d/d/j;

    new-instance v0, Lorg/d/d/j;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lorg/d/d/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/d/d/j;->d:Lorg/d/d/j;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/d/d/j;

    sget-object v1, Lorg/d/d/j;->a:Lorg/d/d/j;

    aput-object v1, v0, v2

    sget-object v1, Lorg/d/d/j;->b:Lorg/d/d/j;

    aput-object v1, v0, v3

    sget-object v1, Lorg/d/d/j;->c:Lorg/d/d/j;

    aput-object v1, v0, v4

    sget-object v1, Lorg/d/d/j;->d:Lorg/d/d/j;

    aput-object v1, v0, v5

    sput-object v0, Lorg/d/d/j;->e:[Lorg/d/d/j;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/d/d/j;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lorg/d/d/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/d/d/j;

    return-object v0
.end method

.method public static values()[Lorg/d/d/j;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lorg/d/d/j;->e:[Lorg/d/d/j;

    invoke-virtual {v0}, [Lorg/d/d/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/d/d/j;

    return-object v0
.end method
