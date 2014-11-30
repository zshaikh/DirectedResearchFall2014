.class final enum Ldolphin/webkit/gm;
.super Ljava/lang/Enum;
.source "Prereader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldolphin/webkit/gm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldolphin/webkit/gm;

.field public static final enum b:Ldolphin/webkit/gm;

.field public static final enum c:Ldolphin/webkit/gm;

.field public static final enum d:Ldolphin/webkit/gm;

.field public static final enum e:Ldolphin/webkit/gm;

.field public static final enum f:Ldolphin/webkit/gm;

.field private static final synthetic g:[Ldolphin/webkit/gm;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Ldolphin/webkit/gm;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v3}, Ldolphin/webkit/gm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/gm;->a:Ldolphin/webkit/gm;

    .line 35
    new-instance v0, Ldolphin/webkit/gm;

    const-string v1, "Prereading"

    invoke-direct {v0, v1, v4}, Ldolphin/webkit/gm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/gm;->b:Ldolphin/webkit/gm;

    .line 36
    new-instance v0, Ldolphin/webkit/gm;

    const-string v1, "Transfered"

    invoke-direct {v0, v1, v5}, Ldolphin/webkit/gm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/gm;->c:Ldolphin/webkit/gm;

    .line 37
    new-instance v0, Ldolphin/webkit/gm;

    const-string v1, "AboutFinished"

    invoke-direct {v0, v1, v6}, Ldolphin/webkit/gm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/gm;->d:Ldolphin/webkit/gm;

    .line 38
    new-instance v0, Ldolphin/webkit/gm;

    const-string v1, "Prereaded"

    invoke-direct {v0, v1, v7}, Ldolphin/webkit/gm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/gm;->e:Ldolphin/webkit/gm;

    .line 39
    new-instance v0, Ldolphin/webkit/gm;

    const-string v1, "PrereadFailed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ldolphin/webkit/gm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/gm;->f:Ldolphin/webkit/gm;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Ldolphin/webkit/gm;

    sget-object v1, Ldolphin/webkit/gm;->a:Ldolphin/webkit/gm;

    aput-object v1, v0, v3

    sget-object v1, Ldolphin/webkit/gm;->b:Ldolphin/webkit/gm;

    aput-object v1, v0, v4

    sget-object v1, Ldolphin/webkit/gm;->c:Ldolphin/webkit/gm;

    aput-object v1, v0, v5

    sget-object v1, Ldolphin/webkit/gm;->d:Ldolphin/webkit/gm;

    aput-object v1, v0, v6

    sget-object v1, Ldolphin/webkit/gm;->e:Ldolphin/webkit/gm;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ldolphin/webkit/gm;->f:Ldolphin/webkit/gm;

    aput-object v2, v0, v1

    sput-object v0, Ldolphin/webkit/gm;->g:[Ldolphin/webkit/gm;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldolphin/webkit/gm;
    .locals 1

    .prologue
    .line 33
    const-class v0, Ldolphin/webkit/gm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/gm;

    return-object v0
.end method

.method public static values()[Ldolphin/webkit/gm;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Ldolphin/webkit/gm;->g:[Ldolphin/webkit/gm;

    invoke-virtual {v0}, [Ldolphin/webkit/gm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldolphin/webkit/gm;

    return-object v0
.end method
