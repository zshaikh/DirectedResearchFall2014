.class public Lorg/apache/james/mime4j/parser/MimeStreamParser;
.super Ljava/lang/Object;
.source "MimeStreamParser.java"


# instance fields
.field private a:Lorg/apache/james/mime4j/parser/ContentHandler;

.field private b:Z

.field private final c:Lorg/apache/james/mime4j/parser/MimeTokenStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->a:Lorg/apache/james/mime4j/parser/ContentHandler;

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->a()Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    move-result-object v0

    .line 57
    :goto_0
    new-instance v1, Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->c:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->b:Z

    .line 59
    return-void

    .line 55
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    goto :goto_0
.end method
