.class final enum Ldolphin/webkit/o;
.super Ljava/lang/Enum;
.source "BackgroundLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldolphin/webkit/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldolphin/webkit/o;

.field public static final enum b:Ldolphin/webkit/o;

.field public static final enum c:Ldolphin/webkit/o;

.field private static final synthetic d:[Ldolphin/webkit/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Ldolphin/webkit/o;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v2}, Ldolphin/webkit/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/o;->a:Ldolphin/webkit/o;

    .line 38
    new-instance v0, Ldolphin/webkit/o;

    const-string v1, "Backgrounding"

    invoke-direct {v0, v1, v3}, Ldolphin/webkit/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/o;->b:Ldolphin/webkit/o;

    .line 39
    new-instance v0, Ldolphin/webkit/o;

    const-string v1, "Backgrounded"

    invoke-direct {v0, v1, v4}, Ldolphin/webkit/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/o;->c:Ldolphin/webkit/o;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Ldolphin/webkit/o;

    sget-object v1, Ldolphin/webkit/o;->a:Ldolphin/webkit/o;

    aput-object v1, v0, v2

    sget-object v1, Ldolphin/webkit/o;->b:Ldolphin/webkit/o;

    aput-object v1, v0, v3

    sget-object v1, Ldolphin/webkit/o;->c:Ldolphin/webkit/o;

    aput-object v1, v0, v4

    sput-object v0, Ldolphin/webkit/o;->d:[Ldolphin/webkit/o;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldolphin/webkit/o;
    .locals 1

    .prologue
    .line 36
    const-class v0, Ldolphin/webkit/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/o;

    return-object v0
.end method

.method public static values()[Ldolphin/webkit/o;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Ldolphin/webkit/o;->d:[Ldolphin/webkit/o;

    invoke-virtual {v0}, [Ldolphin/webkit/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldolphin/webkit/o;

    return-object v0
.end method
