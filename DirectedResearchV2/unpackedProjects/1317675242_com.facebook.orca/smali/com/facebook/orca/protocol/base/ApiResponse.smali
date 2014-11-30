.class public Lcom/facebook/orca/protocol/base/ApiResponse;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# instance fields
.field private final a:I

.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Lorg/codehaus/jackson/JsonNode;


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->a:I

    .line 25
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->b:Lcom/google/common/collect/ImmutableList;

    .line 26
    iput-object p3, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->d:Lorg/codehaus/jackson/JsonNode;

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/util/List;Lorg/codehaus/jackson/JsonNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;",
            "Lorg/codehaus/jackson/JsonNode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->a:I

    .line 32
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->b:Lcom/google/common/collect/ImmutableList;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->d:Lorg/codehaus/jackson/JsonNode;

    .line 35
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "No response body."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Ljava/lang/String;

    return-object v0

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lorg/codehaus/jackson/JsonNode;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->d:Lorg/codehaus/jackson/JsonNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "No response json."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->d()V

    .line 53
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->d:Lorg/codehaus/jackson/JsonNode;

    return-object v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->a()Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->d:Lorg/codehaus/jackson/JsonNode;

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No response json or body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->d:Lorg/codehaus/jackson/JsonNode;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->d:Lorg/codehaus/jackson/JsonNode;

    invoke-static {v0}, Lcom/facebook/orca/protocol/base/ApiResponseChecker;->a(Lorg/codehaus/jackson/JsonNode;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/protocol/base/ApiResponseChecker;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
