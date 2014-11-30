.class public final enum Ldolphin/webkit/bg;
.super Ljava/lang/Enum;
.source "ConsoleMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldolphin/webkit/bg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldolphin/webkit/bg;

.field public static final enum b:Ldolphin/webkit/bg;

.field public static final enum c:Ldolphin/webkit/bg;

.field public static final enum d:Ldolphin/webkit/bg;

.field public static final enum e:Ldolphin/webkit/bg;

.field private static final synthetic f:[Ldolphin/webkit/bg;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Ldolphin/webkit/bg;

    const-string v1, "TIP"

    invoke-direct {v0, v1, v2}, Ldolphin/webkit/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/bg;->a:Ldolphin/webkit/bg;

    .line 34
    new-instance v0, Ldolphin/webkit/bg;

    const-string v1, "LOG"

    invoke-direct {v0, v1, v3}, Ldolphin/webkit/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/bg;->b:Ldolphin/webkit/bg;

    .line 35
    new-instance v0, Ldolphin/webkit/bg;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v4}, Ldolphin/webkit/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/bg;->c:Ldolphin/webkit/bg;

    .line 36
    new-instance v0, Ldolphin/webkit/bg;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Ldolphin/webkit/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/bg;->d:Ldolphin/webkit/bg;

    .line 37
    new-instance v0, Ldolphin/webkit/bg;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v6}, Ldolphin/webkit/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/bg;->e:Ldolphin/webkit/bg;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Ldolphin/webkit/bg;

    sget-object v1, Ldolphin/webkit/bg;->a:Ldolphin/webkit/bg;

    aput-object v1, v0, v2

    sget-object v1, Ldolphin/webkit/bg;->b:Ldolphin/webkit/bg;

    aput-object v1, v0, v3

    sget-object v1, Ldolphin/webkit/bg;->c:Ldolphin/webkit/bg;

    aput-object v1, v0, v4

    sget-object v1, Ldolphin/webkit/bg;->d:Ldolphin/webkit/bg;

    aput-object v1, v0, v5

    sget-object v1, Ldolphin/webkit/bg;->e:Ldolphin/webkit/bg;

    aput-object v1, v0, v6

    sput-object v0, Ldolphin/webkit/bg;->f:[Ldolphin/webkit/bg;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldolphin/webkit/bg;
    .locals 1

    .prologue
    .line 32
    const-class v0, Ldolphin/webkit/bg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/bg;

    return-object v0
.end method

.method public static values()[Ldolphin/webkit/bg;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Ldolphin/webkit/bg;->f:[Ldolphin/webkit/bg;

    invoke-virtual {v0}, [Ldolphin/webkit/bg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldolphin/webkit/bg;

    return-object v0
.end method
