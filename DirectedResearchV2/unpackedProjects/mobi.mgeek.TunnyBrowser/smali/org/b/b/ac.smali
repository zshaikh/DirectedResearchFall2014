.class public final enum Lorg/b/b/ac;
.super Ljava/lang/Enum;
.source "BayeuxClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/b/b/ac;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/b/b/ac;

.field public static final enum b:Lorg/b/b/ac;

.field public static final enum c:Lorg/b/b/ac;

.field public static final enum d:Lorg/b/b/ac;

.field public static final enum e:Lorg/b/b/ac;

.field public static final enum f:Lorg/b/b/ac;

.field public static final enum g:Lorg/b/b/ac;

.field private static final synthetic i:[Lorg/b/b/ac;


# instance fields
.field private final h:[Lorg/b/b/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1088
    new-instance v0, Lorg/b/b/ac;

    const-string v1, "UNCONNECTED"

    new-array v2, v5, [Lorg/b/b/ac;

    invoke-direct {v0, v1, v5, v2}, Lorg/b/b/ac;-><init>(Ljava/lang/String;I[Lorg/b/b/ac;)V

    sput-object v0, Lorg/b/b/ac;->a:Lorg/b/b/ac;

    .line 1092
    new-instance v0, Lorg/b/b/ac;

    const-string v1, "HANDSHAKING"

    new-array v2, v5, [Lorg/b/b/ac;

    invoke-direct {v0, v1, v6, v2}, Lorg/b/b/ac;-><init>(Ljava/lang/String;I[Lorg/b/b/ac;)V

    sput-object v0, Lorg/b/b/ac;->b:Lorg/b/b/ac;

    .line 1097
    new-instance v0, Lorg/b/b/ac;

    const-string v1, "REHANDSHAKING"

    new-array v2, v5, [Lorg/b/b/ac;

    invoke-direct {v0, v1, v7, v2}, Lorg/b/b/ac;-><init>(Ljava/lang/String;I[Lorg/b/b/ac;)V

    sput-object v0, Lorg/b/b/ac;->c:Lorg/b/b/ac;

    .line 1101
    new-instance v0, Lorg/b/b/ac;

    const-string v1, "CONNECTING"

    new-array v2, v6, [Lorg/b/b/ac;

    sget-object v3, Lorg/b/b/ac;->b:Lorg/b/b/ac;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v8, v2}, Lorg/b/b/ac;-><init>(Ljava/lang/String;I[Lorg/b/b/ac;)V

    sput-object v0, Lorg/b/b/ac;->d:Lorg/b/b/ac;

    .line 1105
    new-instance v0, Lorg/b/b/ac;

    const-string v1, "CONNECTED"

    new-array v2, v7, [Lorg/b/b/ac;

    sget-object v3, Lorg/b/b/ac;->b:Lorg/b/b/ac;

    aput-object v3, v2, v5

    sget-object v3, Lorg/b/b/ac;->d:Lorg/b/b/ac;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v9, v2}, Lorg/b/b/ac;-><init>(Ljava/lang/String;I[Lorg/b/b/ac;)V

    sput-object v0, Lorg/b/b/ac;->e:Lorg/b/b/ac;

    .line 1109
    new-instance v0, Lorg/b/b/ac;

    const-string v1, "DISCONNECTING"

    const/4 v2, 0x5

    new-array v3, v5, [Lorg/b/b/ac;

    invoke-direct {v0, v1, v2, v3}, Lorg/b/b/ac;-><init>(Ljava/lang/String;I[Lorg/b/b/ac;)V

    sput-object v0, Lorg/b/b/ac;->f:Lorg/b/b/ac;

    .line 1113
    new-instance v0, Lorg/b/b/ac;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x6

    new-array v3, v6, [Lorg/b/b/ac;

    sget-object v4, Lorg/b/b/ac;->f:Lorg/b/b/ac;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/b/b/ac;-><init>(Ljava/lang/String;I[Lorg/b/b/ac;)V

    sput-object v0, Lorg/b/b/ac;->g:Lorg/b/b/ac;

    .line 1083
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/b/b/ac;

    sget-object v1, Lorg/b/b/ac;->a:Lorg/b/b/ac;

    aput-object v1, v0, v5

    sget-object v1, Lorg/b/b/ac;->b:Lorg/b/b/ac;

    aput-object v1, v0, v6

    sget-object v1, Lorg/b/b/ac;->c:Lorg/b/b/ac;

    aput-object v1, v0, v7

    sget-object v1, Lorg/b/b/ac;->d:Lorg/b/b/ac;

    aput-object v1, v0, v8

    sget-object v1, Lorg/b/b/ac;->e:Lorg/b/b/ac;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/b/b/ac;->f:Lorg/b/b/ac;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/b/b/ac;->g:Lorg/b/b/ac;

    aput-object v2, v0, v1

    sput-object v0, Lorg/b/b/ac;->i:[Lorg/b/b/ac;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Lorg/b/b/ac;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/b/b/ac;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1119
    iput-object p3, p0, Lorg/b/b/ac;->h:[Lorg/b/b/ac;

    .line 1120
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/b/b/ac;
    .locals 1

    .prologue
    .line 1083
    const-class v0, Lorg/b/b/ac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/b/b/ac;

    return-object v0
.end method

.method public static values()[Lorg/b/b/ac;
    .locals 1

    .prologue
    .line 1083
    sget-object v0, Lorg/b/b/ac;->i:[Lorg/b/b/ac;

    invoke-virtual {v0}, [Lorg/b/b/ac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/b/b/ac;

    return-object v0
.end method
