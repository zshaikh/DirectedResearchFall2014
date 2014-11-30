.class public abstract Lcom/facebook/orca/protocol/base/ContentBody;
.super Lorg/apache/http/entity/mime/content/AbstractContentBody;
.source "ContentBody.java"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/apache/http/entity/mime/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    .line 22
    iput p2, p0, Lcom/facebook/orca/protocol/base/ContentBody;->a:I

    .line 23
    iput-object p3, p0, Lcom/facebook/orca/protocol/base/ContentBody;->b:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "binary"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcom/facebook/orca/protocol/base/ContentBody;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ContentBody;->b:Ljava/lang/String;

    return-object v0
.end method
