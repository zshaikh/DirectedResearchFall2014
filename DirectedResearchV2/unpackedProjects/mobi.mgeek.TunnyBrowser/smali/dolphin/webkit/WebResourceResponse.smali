.class public Ldolphin/webkit/WebResourceResponse;
.super Ljava/lang/Object;
.source "WebResourceResponse.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# instance fields
.field private mEncoding:Ljava/lang/String;

.field private mInputStream:Ljava/io/InputStream;

.field private mMimeType:Ljava/lang/String;
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Ldolphin/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Ldolphin/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Ldolphin/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    .line 73
    return-void
.end method

.method static synthetic access$000(Ldolphin/webkit/WebResourceResponse;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ldolphin/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$100(Ldolphin/webkit/WebResourceResponse;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ldolphin/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ldolphin/webkit/WebResourceResponse;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ldolphin/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ldolphin/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Ldolphin/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ldolphin/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method loader(Ldolphin/webkit/LoadListener;)Ldolphin/webkit/gw;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Ldolphin/webkit/hp;

    invoke-direct {v0, p0, p1}, Ldolphin/webkit/hp;-><init>(Ldolphin/webkit/WebResourceResponse;Ldolphin/webkit/LoadListener;)V

    return-object v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Ldolphin/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    .line 120
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Ldolphin/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Ldolphin/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    .line 82
    return-void
.end method
