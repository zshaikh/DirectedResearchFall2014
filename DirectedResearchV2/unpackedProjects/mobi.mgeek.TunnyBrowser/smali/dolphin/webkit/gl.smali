.class final enum Ldolphin/webkit/gl;
.super Ljava/lang/Enum;
.source "Prereader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldolphin/webkit/gl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldolphin/webkit/gl;

.field public static final enum b:Ldolphin/webkit/gl;

.field public static final enum c:Ldolphin/webkit/gl;

.field private static final synthetic d:[Ldolphin/webkit/gl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Ldolphin/webkit/gl;

    const-string v1, "NotCreated"

    invoke-direct {v0, v1, v2}, Ldolphin/webkit/gl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/gl;->a:Ldolphin/webkit/gl;

    .line 29
    new-instance v0, Ldolphin/webkit/gl;

    const-string v1, "Created"

    invoke-direct {v0, v1, v3}, Ldolphin/webkit/gl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/gl;->b:Ldolphin/webkit/gl;

    .line 30
    new-instance v0, Ldolphin/webkit/gl;

    const-string v1, "Initialized"

    invoke-direct {v0, v1, v4}, Ldolphin/webkit/gl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/gl;->c:Ldolphin/webkit/gl;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Ldolphin/webkit/gl;

    sget-object v1, Ldolphin/webkit/gl;->a:Ldolphin/webkit/gl;

    aput-object v1, v0, v2

    sget-object v1, Ldolphin/webkit/gl;->b:Ldolphin/webkit/gl;

    aput-object v1, v0, v3

    sget-object v1, Ldolphin/webkit/gl;->c:Ldolphin/webkit/gl;

    aput-object v1, v0, v4

    sput-object v0, Ldolphin/webkit/gl;->d:[Ldolphin/webkit/gl;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldolphin/webkit/gl;
    .locals 1

    .prologue
    .line 27
    const-class v0, Ldolphin/webkit/gl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/gl;

    return-object v0
.end method

.method public static values()[Ldolphin/webkit/gl;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Ldolphin/webkit/gl;->d:[Ldolphin/webkit/gl;

    invoke-virtual {v0}, [Ldolphin/webkit/gl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldolphin/webkit/gl;

    return-object v0
.end method
