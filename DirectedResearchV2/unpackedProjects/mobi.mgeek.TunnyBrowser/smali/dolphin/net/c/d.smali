.class public final enum Ldolphin/net/c/d;
.super Ljava/lang/Enum;
.source "RequestPriority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldolphin/net/c/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldolphin/net/c/d;

.field public static final enum b:Ldolphin/net/c/d;

.field public static final enum c:Ldolphin/net/c/d;

.field private static final synthetic d:[Ldolphin/net/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Ldolphin/net/c/d;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Ldolphin/net/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/net/c/d;->a:Ldolphin/net/c/d;

    .line 11
    new-instance v0, Ldolphin/net/c/d;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Ldolphin/net/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/net/c/d;->b:Ldolphin/net/c/d;

    .line 12
    new-instance v0, Ldolphin/net/c/d;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Ldolphin/net/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/net/c/d;->c:Ldolphin/net/c/d;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Ldolphin/net/c/d;

    sget-object v1, Ldolphin/net/c/d;->a:Ldolphin/net/c/d;

    aput-object v1, v0, v2

    sget-object v1, Ldolphin/net/c/d;->b:Ldolphin/net/c/d;

    aput-object v1, v0, v3

    sget-object v1, Ldolphin/net/c/d;->c:Ldolphin/net/c/d;

    aput-object v1, v0, v4

    sput-object v0, Ldolphin/net/c/d;->d:[Ldolphin/net/c/d;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Ldolphin/net/c/d;
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    sget-object v0, Ldolphin/net/c/d;->c:Ldolphin/net/c/d;

    .line 17
    :goto_0
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object v0, Ldolphin/net/c/d;->b:Ldolphin/net/c/d;

    goto :goto_0

    .line 17
    :cond_1
    sget-object v0, Ldolphin/net/c/d;->a:Ldolphin/net/c/d;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ldolphin/net/c/d;
    .locals 1

    .prologue
    .line 9
    const-class v0, Ldolphin/net/c/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldolphin/net/c/d;

    return-object v0
.end method

.method public static values()[Ldolphin/net/c/d;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Ldolphin/net/c/d;->d:[Ldolphin/net/c/d;

    invoke-virtual {v0}, [Ldolphin/net/c/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldolphin/net/c/d;

    return-object v0
.end method
