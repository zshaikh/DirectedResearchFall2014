.class public Lcom/facebook/orca/protocol/base/ByteArrayBody;
.super Lcom/facebook/orca/protocol/base/ContentBody;
.source "ByteArrayBody.java"


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    array-length v0, p1

    invoke-direct {p0, p2, v0, p3}, Lcom/facebook/orca/protocol/base/ContentBody;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/ByteArrayBody;->a:[B

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ByteArrayBody;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 29
    return-void
.end method
