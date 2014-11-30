.class Lretrofit/client/UrlConnectionClient$TypedInputStream;
.super Ljava/lang/Object;
.source "UrlConnectionClient.java"

# interfaces
.implements Lretrofit/mime/TypedInput;


# instance fields
.field private final length:J

.field private final mimeType:Ljava/lang/String;

.field private final stream:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Ljava/lang/String;JLjava/io/InputStream;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lretrofit/client/UrlConnectionClient$TypedInputStream;->mimeType:Ljava/lang/String;

    .line 124
    iput-wide p2, p0, Lretrofit/client/UrlConnectionClient$TypedInputStream;->length:J

    .line 125
    iput-object p4, p0, Lretrofit/client/UrlConnectionClient$TypedInputStream;->stream:Ljava/io/InputStream;

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLjava/io/InputStream;Lretrofit/client/UrlConnectionClient$1;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lretrofit/client/UrlConnectionClient$TypedInputStream;-><init>(Ljava/lang/String;JLjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public in()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lretrofit/client/UrlConnectionClient$TypedInputStream;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lretrofit/client/UrlConnectionClient$TypedInputStream;->length:J

    return-wide v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lretrofit/client/UrlConnectionClient$TypedInputStream;->mimeType:Ljava/lang/String;

    return-object v0
.end method
