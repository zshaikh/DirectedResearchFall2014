.class public final enum Lorg/apache/b/a/a/e;
.super Ljava/lang/Enum;
.source "HttpMultipartMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/b/a/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/apache/b/a/a/e;

.field public static final enum b:Lorg/apache/b/a/a/e;

.field private static final synthetic c:[Lorg/apache/b/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lorg/apache/b/a/a/e;

    const-string v1, "STRICT"

    invoke-direct {v0, v1, v2}, Lorg/apache/b/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/b/a/a/e;->a:Lorg/apache/b/a/a/e;

    .line 39
    new-instance v0, Lorg/apache/b/a/a/e;

    const-string v1, "BROWSER_COMPATIBLE"

    invoke-direct {v0, v1, v3}, Lorg/apache/b/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/b/a/a/e;->b:Lorg/apache/b/a/a/e;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/b/a/a/e;

    sget-object v1, Lorg/apache/b/a/a/e;->a:Lorg/apache/b/a/a/e;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/b/a/a/e;->b:Lorg/apache/b/a/a/e;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/b/a/a/e;->c:[Lorg/apache/b/a/a/e;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/b/a/a/e;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/b/a/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/a/e;

    return-object v0
.end method

.method public static final values()[Lorg/apache/b/a/a/e;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/apache/b/a/a/e;->c:[Lorg/apache/b/a/a/e;

    invoke-virtual {v0}, [Lorg/apache/b/a/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/b/a/a/e;

    return-object v0
.end method
