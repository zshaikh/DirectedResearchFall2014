.class public Lcom/dolphin/browser/message/a/a;
.super Ljava/lang/Object;
.source "WebServiceClient.java"


# static fields
.field static final a:Ljava/lang/String;

.field private static c:Lcom/dolphin/browser/message/a/a;


# instance fields
.field private b:Lcom/dolphin/browser/message/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->getPushNotificationServerBaseUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/message/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/dolphin/browser/message/a/b;

    sget-object v1, Lcom/dolphin/browser/message/a/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/message/a/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/message/a/a;->b:Lcom/dolphin/browser/message/a/b;

    .line 65
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/dolphin/browser/Network/n;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Lcom/dolphin/browser/Network/h;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    const-string v1, "Push"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/dolphin/browser/message/a/a;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/dolphin/browser/message/a/a;->c:Lcom/dolphin/browser/message/a/a;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/dolphin/browser/message/a/a;

    invoke-direct {v0}, Lcom/dolphin/browser/message/a/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/message/a/a;->c:Lcom/dolphin/browser/message/a/a;

    .line 60
    :cond_0
    sget-object v0, Lcom/dolphin/browser/message/a/a;->c:Lcom/dolphin/browser/message/a/a;

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/dolphin/browser/message/model/Message;
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/message/a/a;->b:Lcom/dolphin/browser/message/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/message/a/b;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0}, Lcom/dolphin/browser/message/a/a;->a(Ljava/lang/String;)Lcom/dolphin/browser/Network/n;

    move-result-object v0

    .line 113
    iget-object v1, v0, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 114
    const/16 v2, 0xc8

    if-ne v2, v1, :cond_0

    .line 115
    iget-object v0, v0, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->d(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/dolphin/browser/message/model/Message;->a(Ljava/lang/String;)Lcom/dolphin/browser/message/model/Message;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 117
    :cond_0
    const/16 v0, 0x130

    if-ne v0, v1, :cond_1

    .line 118
    const/4 v0, 0x0

    goto :goto_0

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method public b(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/message/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/message/a/a;->b:Lcom/dolphin/browser/message/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/message/a/b;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Lcom/dolphin/browser/message/a/a;->a(Ljava/lang/String;)Lcom/dolphin/browser/Network/n;

    move-result-object v0

    .line 128
    iget-object v1, v0, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 129
    const/16 v2, 0xc8

    if-ne v2, v1, :cond_0

    .line 130
    iget-object v0, v0, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->d(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/dolphin/browser/message/model/Message;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 132
    :cond_0
    const/16 v0, 0x130

    if-ne v0, v1, :cond_1

    .line 133
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method
