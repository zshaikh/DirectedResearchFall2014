.class public Lorg/apache/james/mime4j/parser/MimeTokenStream;
.super Ljava/lang/Object;
.source "MimeTokenStream.java"

# interfaces
.implements Lorg/apache/james/mime4j/parser/EntityStates;
.implements Lorg/apache/james/mime4j/parser/RecursionMode;


# instance fields
.field private final a:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/james/mime4j/parser/EntityStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    .line 119
    return-void
.end method

.method protected constructor <init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->b:Ljava/util/LinkedList;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->c:I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->d:I

    .line 123
    iput-object p1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->a:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    .line 124
    return-void
.end method
