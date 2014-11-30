.class public Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;
.super Lcom/facebook/orca/protocol/base/BatchRunner;
.source "SimulatedBatchRunner.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "\\{result=([^}:]*):([^}]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/protocol/base/SingleMethodRunner;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/protocol/base/BatchRunner;-><init>()V

    .line 27
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->c:Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->b:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 32
    return-void
.end method

.method private a(Lcom/facebook/orca/protocol/base/ApiRequest;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 7

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->b(Lcom/facebook/orca/protocol/base/ApiRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    .line 61
    :goto_0
    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 58
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 59
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    :cond_1
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->f()Lcom/facebook/orca/protocol/base/ApiResponseType;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->e()Lorg/apache/http/entity/mime/FormBodyPart;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;Lorg/apache/http/entity/mime/FormBodyPart;)V

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/protocol/base/ApiRequest;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 71
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 81
    :goto_0
    return v0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/NameValuePair;

    .line 75
    invoke-interface {p0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 76
    sget-object v2, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    .line 78
    goto :goto_0

    .line 81
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    .line 103
    :goto_0
    return-object v0

    .line 89
    :cond_0
    sget-object v0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 90
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 94
    iget-object v4, p0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->c:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 95
    if-nez v4, :cond_1

    .line 96
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No json result named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0, v3}, Lcom/jayway/jsonpath/JsonPath;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    invoke-virtual {v1, v2, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->a()Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/BatchOperation;

    .line 37
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->c()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a()Lcom/facebook/orca/protocol/base/ApiMethod;

    move-result-object v3

    .line 40
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->b()Ljava/lang/Object;

    move-result-object v4

    .line 42
    invoke-interface {v3, v4}, Lcom/facebook/orca/protocol/base/ApiMethod;->a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->a(Lcom/facebook/orca/protocol/base/ApiRequest;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v4

    .line 43
    iget-object v5, p0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->b:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-virtual {v5, v4}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiRequest;)Lcom/facebook/orca/protocol/base/ApiResponse;

    move-result-object v4

    .line 44
    if-eqz v2, :cond_0

    .line 45
    iget-object v5, p0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->c:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/facebook/orca/protocol/base/ApiResponse;->c()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2, v4}, Lcom/facebook/orca/protocol/base/ApiMethod;->a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;

    move-result-object v2

    .line 48
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method
