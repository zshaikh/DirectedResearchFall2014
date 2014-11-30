.class public final enum Lorg/c/a/e/ae;
.super Ljava/lang/Enum;
.source "WebSocketParserRFC6455.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/c/a/e/ae;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/c/a/e/ae;

.field public static final enum b:Lorg/c/a/e/ae;

.field public static final enum c:Lorg/c/a/e/ae;

.field public static final enum d:Lorg/c/a/e/ae;

.field public static final enum e:Lorg/c/a/e/ae;

.field public static final enum f:Lorg/c/a/e/ae;

.field public static final enum g:Lorg/c/a/e/ae;

.field public static final enum h:Lorg/c/a/e/ae;

.field public static final enum i:Lorg/c/a/e/ae;

.field public static final enum j:Lorg/c/a/e/ae;

.field private static final synthetic l:[Lorg/c/a/e/ae;


# instance fields
.field k:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 42
    new-instance v0, Lorg/c/a/e/ae;

    const-string v1, "START"

    invoke-direct {v0, v1, v4, v4}, Lorg/c/a/e/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/c/a/e/ae;->a:Lorg/c/a/e/ae;

    new-instance v0, Lorg/c/a/e/ae;

    const-string v1, "OPCODE"

    invoke-direct {v0, v1, v3, v3}, Lorg/c/a/e/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/c/a/e/ae;->b:Lorg/c/a/e/ae;

    new-instance v0, Lorg/c/a/e/ae;

    const-string v1, "LENGTH_7"

    invoke-direct {v0, v1, v5, v3}, Lorg/c/a/e/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/c/a/e/ae;->c:Lorg/c/a/e/ae;

    new-instance v0, Lorg/c/a/e/ae;

    const-string v1, "LENGTH_16"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v5}, Lorg/c/a/e/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/c/a/e/ae;->d:Lorg/c/a/e/ae;

    new-instance v0, Lorg/c/a/e/ae;

    const-string v1, "LENGTH_63"

    invoke-direct {v0, v1, v6, v7}, Lorg/c/a/e/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/c/a/e/ae;->e:Lorg/c/a/e/ae;

    new-instance v0, Lorg/c/a/e/ae;

    const-string v1, "MASK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v6}, Lorg/c/a/e/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/c/a/e/ae;->f:Lorg/c/a/e/ae;

    new-instance v0, Lorg/c/a/e/ae;

    const-string v1, "PAYLOAD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lorg/c/a/e/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/c/a/e/ae;->g:Lorg/c/a/e/ae;

    new-instance v0, Lorg/c/a/e/ae;

    const-string v1, "DATA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lorg/c/a/e/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/c/a/e/ae;->h:Lorg/c/a/e/ae;

    new-instance v0, Lorg/c/a/e/ae;

    const-string v1, "SKIP"

    invoke-direct {v0, v1, v7, v3}, Lorg/c/a/e/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/c/a/e/ae;->i:Lorg/c/a/e/ae;

    new-instance v0, Lorg/c/a/e/ae;

    const-string v1, "SEEK_EOF"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lorg/c/a/e/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/c/a/e/ae;->j:Lorg/c/a/e/ae;

    .line 40
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/c/a/e/ae;

    sget-object v1, Lorg/c/a/e/ae;->a:Lorg/c/a/e/ae;

    aput-object v1, v0, v4

    sget-object v1, Lorg/c/a/e/ae;->b:Lorg/c/a/e/ae;

    aput-object v1, v0, v3

    sget-object v1, Lorg/c/a/e/ae;->c:Lorg/c/a/e/ae;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lorg/c/a/e/ae;->d:Lorg/c/a/e/ae;

    aput-object v2, v0, v1

    sget-object v1, Lorg/c/a/e/ae;->e:Lorg/c/a/e/ae;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lorg/c/a/e/ae;->f:Lorg/c/a/e/ae;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/c/a/e/ae;->g:Lorg/c/a/e/ae;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/c/a/e/ae;->h:Lorg/c/a/e/ae;

    aput-object v2, v0, v1

    sget-object v1, Lorg/c/a/e/ae;->i:Lorg/c/a/e/ae;

    aput-object v1, v0, v7

    const/16 v1, 0x9

    sget-object v2, Lorg/c/a/e/ae;->j:Lorg/c/a/e/ae;

    aput-object v2, v0, v1

    sput-object v0, Lorg/c/a/e/ae;->l:[Lorg/c/a/e/ae;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lorg/c/a/e/ae;->k:I

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/c/a/e/ae;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/c/a/e/ae;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/c/a/e/ae;

    return-object v0
.end method

.method public static values()[Lorg/c/a/e/ae;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/c/a/e/ae;->l:[Lorg/c/a/e/ae;

    invoke-virtual {v0}, [Lorg/c/a/e/ae;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/c/a/e/ae;

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/c/a/e/ae;->k:I

    return v0
.end method
