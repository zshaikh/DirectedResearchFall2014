.class public final Lorg/codehaus/jackson/node/MissingNode;
.super Lorg/codehaus/jackson/node/BaseJsonNode;
.source "MissingNode.java"


# static fields
.field private static final a:Lorg/codehaus/jackson/node/MissingNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/codehaus/jackson/node/MissingNode;

    invoke-direct {v0}, Lorg/codehaus/jackson/node/MissingNode;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/node/MissingNode;->a:Lorg/codehaus/jackson/node/MissingNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/codehaus/jackson/node/BaseJsonNode;-><init>()V

    return-void
.end method

.method public static A()Lorg/codehaus/jackson/node/MissingNode;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/codehaus/jackson/node/MissingNode;->a:Lorg/codehaus/jackson/node/MissingNode;

    return-object v0
.end method


# virtual methods
.method public a()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->NOT_AVAILABLE:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 0

    .prologue
    .line 52
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 87
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, ""

    return-object v0
.end method
