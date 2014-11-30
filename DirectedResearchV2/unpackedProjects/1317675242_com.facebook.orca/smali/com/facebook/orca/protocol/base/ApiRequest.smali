.class public Lcom/facebook/orca/protocol/base/ApiRequest;
.super Ljava/lang/Object;
.source "ApiRequest.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/orca/protocol/base/ApiResponseType;

.field private final f:Lorg/apache/http/entity/mime/FormBodyPart;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/facebook/orca/protocol/base/ApiResponseType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;Lorg/apache/http/entity/mime/FormBodyPart;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;Lorg/apache/http/entity/mime/FormBodyPart;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/facebook/orca/protocol/base/ApiResponseType;",
            "Lorg/apache/http/entity/mime/FormBodyPart;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->a:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->b:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->c:Ljava/lang/String;

    .line 42
    invoke-static {p4}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->d:Lcom/google/common/collect/ImmutableList;

    .line 43
    iput-object p5, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->e:Lcom/facebook/orca/protocol/base/ApiResponseType;

    .line 44
    iput-object p6, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->f:Lorg/apache/http/entity/mime/FormBodyPart;

    .line 45
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->d:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public e()Lorg/apache/http/entity/mime/FormBodyPart;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->f:Lorg/apache/http/entity/mime/FormBodyPart;

    return-object v0
.end method

.method public f()Lcom/facebook/orca/protocol/base/ApiResponseType;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->e:Lcom/facebook/orca/protocol/base/ApiResponseType;

    return-object v0
.end method
