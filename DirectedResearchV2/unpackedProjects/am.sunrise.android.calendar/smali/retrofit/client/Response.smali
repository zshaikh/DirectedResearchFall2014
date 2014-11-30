.class public final Lretrofit/client/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private final body:Lretrofit/mime/TypedInput;

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit/client/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final reason:Ljava/lang/String;

.field private final status:I

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;Lretrofit/mime/TypedInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lretrofit/client/Header;",
            ">;",
            "Lretrofit/mime/TypedInput;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    if-nez p2, :cond_1

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reason == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    if-nez p3, :cond_2

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "headers == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lretrofit/client/Response;->url:Ljava/lang/String;

    .line 69
    iput p1, p0, Lretrofit/client/Response;->status:I

    .line 70
    iput-object p2, p0, Lretrofit/client/Response;->reason:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lretrofit/client/Response;->headers:Ljava/util/List;

    .line 72
    iput-object p4, p0, Lretrofit/client/Response;->body:Lretrofit/mime/TypedInput;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lretrofit/mime/TypedInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lretrofit/client/Header;",
            ">;",
            "Lretrofit/mime/TypedInput;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    const/16 v0, 0xc8

    if-ge p2, v0, :cond_1

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    if-nez p3, :cond_2

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reason == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_2
    if-nez p4, :cond_3

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "headers == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_3
    iput-object p1, p0, Lretrofit/client/Response;->url:Ljava/lang/String;

    .line 46
    iput p2, p0, Lretrofit/client/Response;->status:I

    .line 47
    iput-object p3, p0, Lretrofit/client/Response;->reason:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lretrofit/client/Response;->headers:Ljava/util/List;

    .line 49
    iput-object p5, p0, Lretrofit/client/Response;->body:Lretrofit/mime/TypedInput;

    .line 50
    return-void
.end method


# virtual methods
.method public getBody()Lretrofit/mime/TypedInput;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lretrofit/client/Response;->body:Lretrofit/mime/TypedInput;

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lretrofit/client/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lretrofit/client/Response;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lretrofit/client/Response;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lretrofit/client/Response;->status:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lretrofit/client/Response;->url:Ljava/lang/String;

    return-object v0
.end method
