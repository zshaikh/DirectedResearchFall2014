.class public Lcom/fusepowered/m2/m2l/util/vast/VastManager;
.super Ljava/lang/Object;
.source "VastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;,
        Lcom/fusepowered/m2/m2l/util/vast/VastManager$VastManagerListener;
    }
.end annotation


# static fields
.field static final MAX_TIMES_TO_FOLLOW_VAST_REDIRECT:I = 0x14

.field static final VAST_REDIRECT_TIMEOUT_MILLISECONDS:I = 0x7530


# instance fields
.field private mClickThroughUrl:Ljava/lang/String;

.field private mClickTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mImpressionTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/fusepowered/m2/m2l/util/vast/VastManager$VastManagerListener;

.field private mMediaFileUrl:Ljava/lang/String;

.field private mTimesFollowedVastRedirect:I

.field private mVastBackgroundTask:Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;

.field private mVideoCompleteTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoFirstQuartileTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoMidpointTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoStartTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoThirdQuartileTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mImpressionTrackers:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVideoStartTrackers:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVideoFirstQuartileTrackers:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVideoMidpointTrackers:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVideoThirdQuartileTrackers:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVideoCompleteTrackers:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mClickTrackers:Ljava/util/List;

    .line 46
    const/16 v0, 0x7530

    invoke-static {v0}, Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;->create(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/m2/m2l/util/vast/VastManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->processVastFollowingRedirect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/fusepowered/m2/m2l/util/vast/VastManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->vastProcessComplete(Z)V

    return-void
.end method

.method private loadVastDataFromXml(Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;)V
    .locals 2
    .parameter "xmlManager"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mImpressionTrackers:Ljava/util/List;

    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getImpressionTrackers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVideoStartTrackers:Ljava/util/List;

    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getVideoStartTrackers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVideoFirstQuartileTrackers:Ljava/util/List;

    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getVideoFirstQuartileTrackers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVideoMidpointTrackers:Ljava/util/List;

    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getVideoMidpointTrackers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVideoThirdQuartileTrackers:Ljava/util/List;

    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getVideoThirdQuartileTrackers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVideoCompleteTrackers:Ljava/util/List;

    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getVideoCompleteTrackers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mClickTrackers:Ljava/util/List;

    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mClickThroughUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mClickThroughUrl:Ljava/lang/String;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mMediaFileUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mMediaFileUrl:Ljava/lang/String;

    .line 126
    :cond_1
    return-void
.end method

.method private processVastFollowingRedirect(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "vastXml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 129
    new-instance v4, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;

    invoke-direct {v4}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;-><init>()V

    .line 130
    .local v4, xmlManager:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;
    invoke-virtual {v4, p1}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->parseVastXml(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, v4}, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->loadVastDataFromXml(Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;)V

    .line 135
    invoke-virtual {v4}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getVastAdTagURI()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, redirectUrl:Ljava/lang/String;
    if-eqz v2, :cond_1

    iget v5, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mTimesFollowedVastRedirect:I

    const/16 v6, 0x14

    if-ge v5, v6, :cond_1

    .line 137
    iget v5, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mTimesFollowedVastRedirect:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mTimesFollowedVastRedirect:I

    .line 139
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, httpget:Lorg/apache/http/client/methods/HttpGet;
    iget-object v5, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v5, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 141
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 142
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/fusepowered/m2/m2l/util/Strings;->fromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 145
    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    .end local v1           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v5

    .restart local v0       #entity:Lorg/apache/http/HttpEntity;
    .restart local v1       #httpget:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #response:Lorg/apache/http/HttpResponse;
    :cond_0
    move-object v5, v7

    .line 142
    goto :goto_0

    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    .end local v1           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :cond_1
    move-object v5, v7

    .line 145
    goto :goto_0
.end method

.method private vastProcessComplete(Z)V
    .locals 1
    .parameter "canceled"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-static {v0}, Lcom/fusepowered/m2/m2l/util/HttpClients;->safeShutdown(Lorg/apache/http/client/HttpClient;)V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mTimesFollowedVastRedirect:I

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVastBackgroundTask:Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;

    .line 105
    if-nez p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mListener:Lcom/fusepowered/m2/m2l/util/vast/VastManager$VastManagerListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/m2l/util/vast/VastManager$VastManagerListener;->onComplete(Lcom/fusepowered/m2/m2l/util/vast/VastManager;)V

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVastBackgroundTask:Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVastBackgroundTask:Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;->cancel(Z)Z

    .line 97
    :cond_0
    return-void
.end method

.method public getClickThroughUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mClickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mClickTrackers:Ljava/util/List;

    return-object v0
.end method

.method public getImpressionTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mImpressionTrackers:Ljava/util/List;

    return-object v0
.end method

.method public getMediaFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mMediaFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCompleteTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVideoCompleteTrackers:Ljava/util/List;

    return-object v0
.end method

.method public getVideoFirstQuartileTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVideoFirstQuartileTrackers:Ljava/util/List;

    return-object v0
.end method

.method public getVideoMidpointTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVideoMidpointTrackers:Ljava/util/List;

    return-object v0
.end method

.method public getVideoStartTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVideoStartTrackers:Ljava/util/List;

    return-object v0
.end method

.method public getVideoThirdQuartileTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVideoThirdQuartileTrackers:Ljava/util/List;

    return-object v0
.end method

.method public processVast(Ljava/lang/String;Lcom/fusepowered/m2/m2l/util/vast/VastManager$VastManagerListener;)V
    .locals 3
    .parameter "vastXml"
    .parameter "listener"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVastBackgroundTask:Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;

    if-nez v0, :cond_0

    .line 51
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mListener:Lcom/fusepowered/m2/m2l/util/vast/VastManager$VastManagerListener;

    .line 52
    new-instance v0, Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;-><init>(Lcom/fusepowered/m2/m2l/util/vast/VastManager;Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;)V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVastBackgroundTask:Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;

    .line 53
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mVastBackgroundTask:Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    :cond_0
    return-void
.end method

.method setTimesFollowedVastRedirect(I)V
    .locals 0
    .parameter "timesFollowedVastRedirect"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 187
    iput p1, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->mTimesFollowedVastRedirect:I

    .line 188
    return-void
.end method
