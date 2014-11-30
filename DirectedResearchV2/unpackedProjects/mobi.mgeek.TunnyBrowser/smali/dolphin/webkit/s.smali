.class final enum Ldolphin/webkit/s;
.super Ljava/lang/Enum;
.source "BackgroundLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldolphin/webkit/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldolphin/webkit/s;

.field public static final enum b:Ldolphin/webkit/s;

.field public static final enum c:Ldolphin/webkit/s;

.field private static final synthetic d:[Ldolphin/webkit/s;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Ldolphin/webkit/s;

    const-string v1, "NotCreated"

    invoke-direct {v0, v1, v2}, Ldolphin/webkit/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/s;->a:Ldolphin/webkit/s;

    .line 32
    new-instance v0, Ldolphin/webkit/s;

    const-string v1, "Created"

    invoke-direct {v0, v1, v3}, Ldolphin/webkit/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/s;->b:Ldolphin/webkit/s;

    .line 33
    new-instance v0, Ldolphin/webkit/s;

    const-string v1, "Initialized"

    invoke-direct {v0, v1, v4}, Ldolphin/webkit/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/s;->c:Ldolphin/webkit/s;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Ldolphin/webkit/s;

    sget-object v1, Ldolphin/webkit/s;->a:Ldolphin/webkit/s;

    aput-object v1, v0, v2

    sget-object v1, Ldolphin/webkit/s;->b:Ldolphin/webkit/s;

    aput-object v1, v0, v3

    sget-object v1, Ldolphin/webkit/s;->c:Ldolphin/webkit/s;

    aput-object v1, v0, v4

    sput-object v0, Ldolphin/webkit/s;->d:[Ldolphin/webkit/s;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldolphin/webkit/s;
    .locals 1

    .prologue
    .line 30
    const-class v0, Ldolphin/webkit/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/s;

    return-object v0
.end method

.method public static values()[Ldolphin/webkit/s;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Ldolphin/webkit/s;->d:[Ldolphin/webkit/s;

    invoke-virtual {v0}, [Ldolphin/webkit/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldolphin/webkit/s;

    return-object v0
.end method
