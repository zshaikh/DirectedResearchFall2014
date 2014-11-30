.class public Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;
.super Ljava/lang/Object;
.source "DefaultBodyDescriptor.java"

# interfaces
.implements Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;


# static fields
.field private static a:Lorg/apache/commons/logging/Log;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->a:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "text"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->b:Ljava/lang/String;

    .line 54
    const-string v0, "plain"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->c:Ljava/lang/String;

    .line 55
    const-string v0, "text/plain"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->d:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->e:Ljava/lang/String;

    .line 57
    const-string v0, "us-ascii"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->f:Ljava/lang/String;

    .line 58
    const-string v0, "7bit"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->g:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->h:Ljava/util/Map;

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->i:J

    .line 78
    if-eqz p1, :cond_0

    const-string v0, "multipart/digest"

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/util/MimeUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "message/rfc822"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->d:Ljava/lang/String;

    .line 80
    const-string v0, "rfc822"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->c:Ljava/lang/String;

    .line 81
    const-string v0, "message"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->b:Ljava/lang/String;

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v0, "text/plain"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->d:Ljava/lang/String;

    .line 84
    const-string v0, "plain"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->c:Ljava/lang/String;

    .line 85
    const-string v0, "text"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->i:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->d:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->d:Ljava/lang/String;

    return-object v0
.end method
