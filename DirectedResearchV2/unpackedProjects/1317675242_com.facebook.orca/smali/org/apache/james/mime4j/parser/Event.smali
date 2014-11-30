.class public final Lorg/apache/james/mime4j/parser/Event;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field public static final a:Lorg/apache/james/mime4j/parser/Event;

.field public static final b:Lorg/apache/james/mime4j/parser/Event;

.field public static final c:Lorg/apache/james/mime4j/parser/Event;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lorg/apache/james/mime4j/parser/Event;

    const-string v1, "Body part ended prematurely. Boundary detected in header or EOF reached."

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/parser/Event;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/james/mime4j/parser/Event;->a:Lorg/apache/james/mime4j/parser/Event;

    .line 32
    new-instance v0, Lorg/apache/james/mime4j/parser/Event;

    const-string v1, "Unexpected end of headers detected. Higher level boundary detected or EOF reached."

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/parser/Event;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/james/mime4j/parser/Event;->b:Lorg/apache/james/mime4j/parser/Event;

    .line 36
    new-instance v0, Lorg/apache/james/mime4j/parser/Event;

    const-string v1, "Invalid header encountered"

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/parser/Event;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/james/mime4j/parser/Event;->c:Lorg/apache/james/mime4j/parser/Event;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Code may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lorg/apache/james/mime4j/parser/Event;->d:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    if-nez p1, :cond_0

    move v0, v1

    .line 62
    :goto_0
    return v0

    .line 57
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    instance-of v0, p1, Lorg/apache/james/mime4j/parser/Event;

    if-eqz v0, :cond_2

    .line 59
    check-cast p1, Lorg/apache/james/mime4j/parser/Event;

    .line 60
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/Event;->d:Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/james/mime4j/parser/Event;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 62
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/Event;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/Event;->d:Ljava/lang/String;

    return-object v0
.end method
