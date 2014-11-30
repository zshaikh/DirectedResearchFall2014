.class public abstract Lorg/apache/james/mime4j/message/SingleBody;
.super Ljava/lang/Object;
.source "SingleBody.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Body;


# instance fields
.field private a:Lorg/apache/james/mime4j/message/Entity;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/SingleBody;->a:Lorg/apache/james/mime4j/message/Entity;

    .line 38
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/OutputStream;)V
.end method

.method public a(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lorg/apache/james/mime4j/message/SingleBody;->a:Lorg/apache/james/mime4j/message/Entity;

    .line 52
    return-void
.end method
