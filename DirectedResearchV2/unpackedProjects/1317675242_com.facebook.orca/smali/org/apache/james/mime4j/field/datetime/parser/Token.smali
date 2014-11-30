.class public Lorg/apache/james/mime4j/field/datetime/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lorg/apache/james/mime4j/field/datetime/parser/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->d:Ljava/lang/String;

    return-object v0
.end method
