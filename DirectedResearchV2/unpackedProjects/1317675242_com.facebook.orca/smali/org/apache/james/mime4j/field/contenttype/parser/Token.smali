.class public Lorg/apache/james/mime4j/field/contenttype/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

.field public h:Lorg/apache/james/mime4j/field/contenttype/parser/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .locals 1

    .prologue
    .line 93
    .line 95
    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->f:Ljava/lang/String;

    return-object v0
.end method
