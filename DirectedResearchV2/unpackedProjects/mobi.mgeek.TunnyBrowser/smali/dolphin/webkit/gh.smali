.class final enum Ldolphin/webkit/gh;
.super Ljava/lang/Enum;
.source "Prereader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldolphin/webkit/gh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldolphin/webkit/gh;

.field public static final enum b:Ldolphin/webkit/gh;

.field private static final synthetic c:[Ldolphin/webkit/gh;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Ldolphin/webkit/gh;

    const-string v1, "StopPrereadingAndGoToIdle"

    invoke-direct {v0, v1, v2}, Ldolphin/webkit/gh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/gh;->a:Ldolphin/webkit/gh;

    .line 44
    new-instance v0, Ldolphin/webkit/gh;

    const-string v1, "StopPrereadingOnly"

    invoke-direct {v0, v1, v3}, Ldolphin/webkit/gh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/gh;->b:Ldolphin/webkit/gh;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ldolphin/webkit/gh;

    sget-object v1, Ldolphin/webkit/gh;->a:Ldolphin/webkit/gh;

    aput-object v1, v0, v2

    sget-object v1, Ldolphin/webkit/gh;->b:Ldolphin/webkit/gh;

    aput-object v1, v0, v3

    sput-object v0, Ldolphin/webkit/gh;->c:[Ldolphin/webkit/gh;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldolphin/webkit/gh;
    .locals 1

    .prologue
    .line 42
    const-class v0, Ldolphin/webkit/gh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/gh;

    return-object v0
.end method

.method public static values()[Ldolphin/webkit/gh;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Ldolphin/webkit/gh;->c:[Ldolphin/webkit/gh;

    invoke-virtual {v0}, [Ldolphin/webkit/gh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldolphin/webkit/gh;

    return-object v0
.end method
